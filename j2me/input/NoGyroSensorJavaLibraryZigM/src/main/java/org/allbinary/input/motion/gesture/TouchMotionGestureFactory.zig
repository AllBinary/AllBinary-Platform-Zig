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

pub const TouchMotionGestureFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.gesture.TouchMotionGestureFactory";
    LEFT: ?*MotionGestureInput = null,
    RIGHT: ?*MotionGestureInput = null,
    UP: ?*MotionGestureInput = null,
    DOWN: ?*MotionGestureInput = null,
    PRESSED: ?*MotionGestureInput = null,
    RELEASED: ?*MotionGestureInput = null,
    DIAGONAL_DOWN_RIGHT: ?*MotionGestureInput = null,
    DIAGONAL_DOWN_LEFT: ?*MotionGestureInput = null,
    DIAGONAL_UP_RIGHT: ?*MotionGestureInput = null,
    DIAGONAL_UP_LEFT: ?*MotionGestureInput = null,
    SCROLL_UP: ?*MotionGestureInput = null,
    SCROLL_DOWN: ?*MotionGestureInput = null,
    NO_MOTION: ?*MotionGestureInput = null,
    LAST_MOTION: ?*MotionGestureInput = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    

    pub fn getInstance() ?*TouchMotionGestureFactory {
        if (Object.same(TouchMotionGestureFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            TouchMotionGestureFactory.instance = Inheritance.upcast(@TypeOf(TouchMotionGestureFactory.instance), TouchMotionGestureFactory.create());
        }
        return Inheritance.cast(?*TouchMotionGestureFactory, TouchMotionGestureFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const MAX: i32 = InputFactory.getInstance().?.MAX;
        this.LEFT = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 3, String.literal("Left Touch") });
        this.RIGHT = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 4, String.literal("Right Touch") });
        this.UP = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 5, String.literal("Up Touch") });
        this.DOWN = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 6, String.literal("Down Touch") });
        this.PRESSED = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 7, String.literal("Screen Press") });
        this.RELEASED = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 8, String.literal("Released") });
        this.DIAGONAL_DOWN_RIGHT = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 9, String.literal("Diagonal Dn R") });
        this.DIAGONAL_DOWN_LEFT = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 10, String.literal("Diagonal Dn L") });
        this.DIAGONAL_UP_RIGHT = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 11, String.literal("Diagonal Up R") });
        this.DIAGONAL_UP_LEFT = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 12, String.literal("Diagonal Up L") });
        this.SCROLL_UP = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 13, String.literal("Scroll Up") });
        this.SCROLL_DOWN = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 14, String.literal("Scroll Down") });
        this.NO_MOTION = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 2, String.literal("No Motion") });
        this.LAST_MOTION = Inheritance.callStatic(MotionGestureInput, "create2", .{ MAX - 19, String.literal("Last Motion") });
        return this;
    }
};

