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
// package org.allbinary.input.gyro

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const MotionGestureInput = @import("org/allbinary/input/motion/gesture/MotionGestureInput.zig").MotionGestureInput;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;

pub const OrientationMotionGestureFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.gyro.OrientationMotionGestureFactory";
    LEFT: ?*MotionGestureInput = null,
    RIGHT: ?*MotionGestureInput = null,
    UP: ?*MotionGestureInput = null,
    DOWN: ?*MotionGestureInput = null,
    ROLL_LEFT: ?*MotionGestureInput = null,
    ROLL_RIGHT: ?*MotionGestureInput = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
    }
    

    pub fn getInstance() ?*OrientationMotionGestureFactory {
        if (Object.same(OrientationMotionGestureFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            OrientationMotionGestureFactory.instance = Inheritance.upcast(@TypeOf(OrientationMotionGestureFactory.instance), OrientationMotionGestureFactory.create());
        }
        return Inheritance.cast(?*OrientationMotionGestureFactory, OrientationMotionGestureFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const MAX: i32 = InputFactory.getInstance().?.MAX;
        this.LEFT = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 20, String.literal("Left Orient") });
        this.RIGHT = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 21, String.literal("Right Orient") });
        this.UP = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 22, String.literal("Up Orient") });
        this.DOWN = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 23, String.literal("Down Orient") });
        this.ROLL_LEFT = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 24, String.literal("Roll Left") });
        this.ROLL_RIGHT = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 25, String.literal("Roll Right") });
        return this;
    }
};

