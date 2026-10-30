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
// package org.allbinary.input.motion

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CustomGPoint = @import("org/allbinary/graphics/CustomGPoint.zig").CustomGPoint;
const GPointCircularPool = @import("org/allbinary/graphics/GPointCircularPool.zig").GPointCircularPool;
const MotionGestureRecognizer = @import("org/allbinary/input/motion/gesture/MotionGestureRecognizer.zig").MotionGestureRecognizer;
const MotionRecognizer = @import("org/allbinary/input/motion/MotionRecognizer.zig").MotionRecognizer;

pub const GestureOnlyMotionRecognizer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.GestureOnlyMotionRecognizer";
    base: MotionRecognizer = undefined,
    motionGestureRecognizer: ?*MotionGestureRecognizer = null,
    id: i32 = 0,
    var index: i32 = 0;
    var pointCircularPool: ?*GPointCircularPool = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        pointCircularPool = Inheritance.callStatic(GPointCircularPool, "create1", .{ 40 });
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = MotionRecognizer.create().*;
        this.initFields();
        this.id = value_N65864: { const value_N65864_value = GestureOnlyMotionRecognizer.index; GestureOnlyMotionRecognizer.index += 1; break :value_N65864 value_N65864_value; };
        this.motionGestureRecognizer = Inheritance.callStatic(MotionGestureRecognizer, "create1", .{ this.id });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processStartMotionEvent(self: *Self, x: i32, y: i32, deviceId: i32, modifiers: i32) void {
        const point: ?*CustomGPoint = Inheritance.cast(?*CustomGPoint, Inheritance.receiverOf(GestureOnlyMotionRecognizer.pointCircularPool.?, "getNextInstance").getNextInstance());
        _ = Inheritance.call(point.?, "setX", .{ x });
        _ = Inheritance.call(point.?, "setY", .{ y });
        _ = Inheritance.call(self.motionGestureRecognizer.?, "processPressedMotionEvent", .{ point, deviceId, modifiers });
    }
    

    // throws Exception
    pub fn processEndMotionEvent(self: *Self, x: i32, y: i32, deviceId: i32, modifiers: i32) void {
        const point: ?*CustomGPoint = Inheritance.cast(?*CustomGPoint, Inheritance.receiverOf(GestureOnlyMotionRecognizer.pointCircularPool.?, "getNextInstance").getNextInstance());
        _ = Inheritance.call(point.?, "setX", .{ x });
        _ = Inheritance.call(point.?, "setY", .{ y });
        _ = Inheritance.call(self.motionGestureRecognizer.?, "processReleasedMotionEvent", .{ point, deviceId, modifiers });
    }
    

    // throws Exception
    pub fn processDraggedMotionEvent(self: *Self, x: i32, y: i32, deviceId: i32, modifiers: i32) void {
        const point: ?*CustomGPoint = Inheritance.cast(?*CustomGPoint, Inheritance.receiverOf(GestureOnlyMotionRecognizer.pointCircularPool.?, "getNextInstance").getNextInstance());
        _ = Inheritance.call(point.?, "setX", .{ x });
        _ = Inheritance.call(point.?, "setY", .{ y });
        _ = Inheritance.call(self.motionGestureRecognizer.?, "processDraggedMotionEvent", .{ point, deviceId, modifiers });
    }
};

