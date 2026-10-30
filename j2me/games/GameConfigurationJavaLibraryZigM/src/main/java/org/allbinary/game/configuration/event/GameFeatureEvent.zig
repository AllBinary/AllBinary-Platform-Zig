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
// package org.allbinary.game.configuration.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;

pub const GameFeatureEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.event.GameFeatureEvent";
    base: AllBinaryEventObject = undefined,
    whatChanged: ?*String = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create2(anyType: ?Object, whatChanged: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ anyType }).*;
        this.initFields();
        this.whatChanged = whatChanged;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getWhatChanged(self: *Self) ?*String {
        return self.whatChanged;
    }
    

    pub fn getGameOption(self: *Self) ?Object {
        return Inheritance.upcast(?Object, Inheritance.receiver(self, "getSource").getSource());
    }
};

