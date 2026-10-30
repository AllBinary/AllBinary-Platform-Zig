//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package org.allbinary.game

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const IntermissionEnableListenerInterface = @import("org/allbinary/game/IntermissionEnableListenerInterface.zig").IntermissionEnableListenerInterface;
const IntermissionInterface = @import("org/allbinary/game/IntermissionInterface.zig").IntermissionInterface;
const NullIntermissionEnableListener = @import("org/allbinary/game/NullIntermissionEnableListener.zig").NullIntermissionEnableListener;

pub const Intermission = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.Intermission";
    pub const java_interfaces = .{ IntermissionInterface };
    enabled: bool = false,
    timeElapsedHelper: ?*TimeDelayHelper = null,
    intermissionEnableListener: ?*IntermissionEnableListenerInterface = null,
    // Implements IntermissionInterface

    fn initFields(this: *Self) void {
        this.enabled = false;
        this.timeElapsedHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 0 });
        this.intermissionEnableListener = Inheritance.upcast(?*IntermissionEnableListenerInterface, NullIntermissionEnableListener.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn setListener(self: *Self, enableListener: ?*IntermissionEnableListenerInterface) void {
        self.intermissionEnableListener = enableListener;
    }
    

    pub fn getTimeDelayHelper(self: *Self) ?*TimeDelayHelper {
        return self.timeElapsedHelper;
    }
    

    pub fn setEnabled(self: *Self, enabled: bool) void {
        self.enabled = enabled;
        if (self.isEnabled()) {
            _ = Inheritance.receiverOf(self.getTimeDelayHelper().?, "setStartTimeTNT").setStartTimeTNT();
        }
        _ = Inheritance.call(self.intermissionEnableListener.?, "notifyIntermission", .{ enabled });
    }
    

    pub fn isEnabled(self: *Self) bool {
        return self.enabled;
    }
};

