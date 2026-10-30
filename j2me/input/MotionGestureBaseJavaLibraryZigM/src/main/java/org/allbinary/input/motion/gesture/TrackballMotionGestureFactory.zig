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
// package org.allbinary.input.motion.gesture

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const MotionGestureInput = @import("org/allbinary/input/motion/gesture/MotionGestureInput.zig").MotionGestureInput;

pub const TrackballMotionGestureFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.gesture.TrackballMotionGestureFactory";
    LEFT: ?*MotionGestureInput = null,
    RIGHT: ?*MotionGestureInput = null,
    UP: ?*MotionGestureInput = null,
    DOWN: ?*MotionGestureInput = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
    }
    

    pub fn getInstance() ?*TrackballMotionGestureFactory {
        if (Object.same(TrackballMotionGestureFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            TrackballMotionGestureFactory.instance = Inheritance.upcast(@TypeOf(TrackballMotionGestureFactory.instance), TrackballMotionGestureFactory.create());
        }
        return Inheritance.cast(?*TrackballMotionGestureFactory, TrackballMotionGestureFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const MAX: i32 = InputFactory.getInstance().?.MAX;
        this.LEFT = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 26, String.literal("L Trackball") });
        this.RIGHT = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 27, String.literal("R Trackball") });
        this.UP = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 28, String.literal("Up Trackball") });
        this.DOWN = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 29, String.literal("D Trackball") });
        return this;
    }
};

