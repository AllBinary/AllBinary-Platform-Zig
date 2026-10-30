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
// package org.allbinary.input.motion.gesture.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MotionGestureConfiguration = @import("org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration.zig").MotionGestureConfiguration;

pub const MotionGestureConfigurationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory";
    var config: ?*MotionGestureConfiguration = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        config = MotionGestureConfiguration.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*MotionGestureConfiguration {
        return Inheritance.upcast(?*MotionGestureConfiguration, MotionGestureConfigurationFactory.config);
    }
};

