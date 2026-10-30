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
// package org.allbinary.animation.transition.shake

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ShakeEvent = @import("org/allbinary/animation/transition/shake/ShakeEvent.zig").ShakeEvent;

pub const ShakeEventFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.transition.shake.ShakeEventFactory";
    MICRO: ?*ShakeEvent = null,
    SMALL: ?*ShakeEvent = null,
    MEDIUM: ?*ShakeEvent = null,
    LARGE: ?*ShakeEvent = null,
    var instance: ?*ShakeEventFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ShakeEventFactory.create();
    }

    fn initFields(this: *Self) void {
        this.MICRO = ShakeEvent.create();
        this.SMALL = ShakeEvent.create();
        this.MEDIUM = ShakeEvent.create();
        this.LARGE = ShakeEvent.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ShakeEventFactory {
        return Inheritance.upcast(?*ShakeEventFactory, ShakeEventFactory.instance);
    }
    

    pub fn init(self: *Self) void {
        _ = self;
    }
};

