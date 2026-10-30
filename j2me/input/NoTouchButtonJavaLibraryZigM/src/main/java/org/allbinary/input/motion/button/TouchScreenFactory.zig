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
const TouchScreenType = @import("org/allbinary/input/motion/button/TouchScreenType.zig").TouchScreenType;
const TouchScreenTypesFactory = @import("org/allbinary/input/motion/button/TouchScreenTypesFactory.zig").TouchScreenTypesFactory;

pub const TouchScreenFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchScreenFactory";
    multiTouch: bool = false,
    touch: bool = false,
    touchScreenType: ?*TouchScreenType = null,
    var SINGLETON: ?*TouchScreenFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = TouchScreenFactory.create();
    }

    fn initFields(this: *Self) void {
        this.multiTouch = false;
        this.touch = false;
        this.touchScreenType = Inheritance.upcast(?*TouchScreenType, TouchScreenTypesFactory.getInstance().?.NOTOUCH);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*TouchScreenFactory {
        return Inheritance.upcast(?*TouchScreenFactory, TouchScreenFactory.SINGLETON);
    }
    

    pub fn isMultiTouch(self: *Self) bool {
        return self.multiTouch;
    }
    

    pub fn setTouch(self: *Self, touch: bool) void {
        _ = touch;
        _ = self;
    }
    

    pub fn isTouch(self: *Self) bool {
        return self.touch;
    }
    

    pub fn getTouchScreenType(self: *Self) ?*TouchScreenType {
        return self.touchScreenType;
    }
};

