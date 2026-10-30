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
// package org.allbinary.input.motion.button

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const TouchScreenTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchScreenTypeFactory";
    var instance: ?*TouchScreenTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TouchScreenTypeFactory.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*TouchScreenTypeFactory {
        return Inheritance.upcast(?*TouchScreenTypeFactory, TouchScreenTypeFactory.instance);
    }
    

    pub fn TouchScreenTypeFactory(self: *Self) void {
        _ = self;
        const touchScreenFactory: ?*TouchScreenFactory = Inheritance.upcast(?*TouchScreenFactory, TouchScreenFactory.getInstance());
        _ = Inheritance.call(touchScreenFactory.?, "setTouch", .{ false });
    }
};

