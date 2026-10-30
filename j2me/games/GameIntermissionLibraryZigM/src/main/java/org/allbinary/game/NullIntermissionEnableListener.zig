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
const IntermissionEnableListenerInterface = @import("org/allbinary/game/IntermissionEnableListenerInterface.zig").IntermissionEnableListenerInterface;

pub const NullIntermissionEnableListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.NullIntermissionEnableListener";
    pub const java_interfaces = .{ IntermissionEnableListenerInterface };
    // Implements IntermissionEnableListenerInterface
    var SINGLETON: ?*IntermissionEnableListenerInterface = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = Inheritance.upcast(?*IntermissionEnableListenerInterface, NullIntermissionEnableListener.create());
    }
    

    pub fn getInstance() ?*IntermissionEnableListenerInterface {
        return Inheritance.upcast(?*IntermissionEnableListenerInterface, NullIntermissionEnableListener.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn notifyIntermission(self: *Self, enable: bool) void {
        _ = enable;
        _ = self;
    }
};

