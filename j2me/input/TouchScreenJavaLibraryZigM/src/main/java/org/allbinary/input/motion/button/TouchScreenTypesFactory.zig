// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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

pub const TouchScreenTypesFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchScreenTypesFactory";
    FINGER: ?*TouchScreenType = null,
    NOTOUCH: ?*TouchScreenType = null,
    STYLUS: ?*TouchScreenType = null,
    UNDEFINED: ?*TouchScreenType = null,
    var instance: ?*TouchScreenTypesFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TouchScreenTypesFactory.create();
    }

    fn initFields(this: *Self) void {
        this.FINGER = Inheritance.callStatic(TouchScreenType, "create1", .{ String.literal("Finger") });
        this.NOTOUCH = Inheritance.callStatic(TouchScreenType, "create1", .{ String.literal("No Touch") });
        this.STYLUS = Inheritance.callStatic(TouchScreenType, "create1", .{ String.literal("Stylus") });
        this.UNDEFINED = Inheritance.callStatic(TouchScreenType, "create1", .{ String.literal("Undefined") });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*TouchScreenTypesFactory {
        return Inheritance.upcast(?*TouchScreenTypesFactory, TouchScreenTypesFactory.instance);
    }
};

