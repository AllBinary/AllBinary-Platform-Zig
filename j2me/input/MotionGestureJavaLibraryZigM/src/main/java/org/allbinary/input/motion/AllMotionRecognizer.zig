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
const TouchButtonRecognizer = @import("org/allbinary/input/motion/button/TouchButtonRecognizer.zig").TouchButtonRecognizer;
const MotionGestureRecognizer = @import("org/allbinary/input/motion/gesture/MotionGestureRecognizer.zig").MotionGestureRecognizer;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const MotionRecognizer = @import("org/allbinary/input/motion/MotionRecognizer.zig").MotionRecognizer;

pub const AllMotionRecognizer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.AllMotionRecognizer";
    base: MotionRecognizer = undefined,
    logUtil: ?*LogUtil = null,
    motionGestureRecognizer: ?*MotionGestureRecognizer = null,
    touchButtonProcessing: bool = false,
    touchButtonRecognizer: ?*TouchButtonRecognizer = null,
    id: i32 = 0,
    lastX: i32 = 0,
    lastY: i32 = 0,
    var index: i32 = 0;
    var pointCircularPool: ?*GPointCircularPool = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        pointCircularPool = Inheritance.callStatic(GPointCircularPool, "create1", .{ 40 });
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.touchButtonProcessing = false;
        
        
        this.lastX = 0;
        this.lastY = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = MotionRecognizer.create().*;
        this.initFields();
        this.id = value_N66048: { const value_N66048_value = AllMotionRecognizer.index; AllMotionRecognizer.index += 1; break :value_N66048 value_N66048_value; };
        this.motionGestureRecognizer = Inheritance.callStatic(MotionGestureRecognizer, "create1", .{ this.id });
        this.touchButtonRecognizer = TouchButtonRecognizer.create();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processStartMotionEvent(self: *Self, x: i32, y: i32, deviceId: i32, modifiers: i32) void {
        if (Inheritance.call(self.touchButtonRecognizer.?, "pressTouchButtonInput", .{ x, y, deviceId })) {
            self.touchButtonProcessing = true;
        }
        if (!self.touchButtonProcessing) {
            const point: ?*CustomGPoint = Inheritance.cast(?*CustomGPoint, Inheritance.receiverOf(AllMotionRecognizer.pointCircularPool.?, "getNextInstance").getNextInstance());
            _ = Inheritance.call(point.?, "setX", .{ x });
            _ = Inheritance.call(point.?, "setY", .{ y });
            _ = Inheritance.call(self.motionGestureRecognizer.?, "processPressedMotionEvent", .{ point, deviceId, modifiers });
        }
    }
    

    // throws Exception
    pub fn processEndMotionEvent(self: *Self, x: i32, y: i32, deviceId: i32, modifiers: i32) void {
        if (Inheritance.call(self.touchButtonRecognizer.?, "releaseTouchButtonInput", .{ x, y, deviceId })) {
        }
        if (!self.touchButtonProcessing) {
            const point: ?*CustomGPoint = Inheritance.cast(?*CustomGPoint, Inheritance.receiverOf(AllMotionRecognizer.pointCircularPool.?, "getNextInstance").getNextInstance());
            _ = Inheritance.call(point.?, "setX", .{ x });
            _ = Inheritance.call(point.?, "setY", .{ y });
            _ = Inheritance.call(self.motionGestureRecognizer.?, "processReleasedMotionEvent", .{ point, deviceId, modifiers });
        }
        if (self.touchButtonProcessing) {
            self.touchButtonProcessing = false;
        }
    }
    

    // throws Exception
    pub fn processDraggedMotionEvent(self: *Self, x: i32, y: i32, deviceId: i32, modifiers: i32) void {
        if (self.touchButtonProcessing) {
            _ = Inheritance.call(self.touchButtonRecognizer.?, "pressTouchButtonInput", .{ x, y, deviceId });
        }
        if (!self.touchButtonProcessing) {
            const point: ?*CustomGPoint = Inheritance.cast(?*CustomGPoint, Inheritance.receiverOf(AllMotionRecognizer.pointCircularPool.?, "getNextInstance").getNextInstance());
            _ = Inheritance.call(point.?, "setX", .{ x });
            _ = Inheritance.call(point.?, "setY", .{ y });
            _ = Inheritance.call(self.motionGestureRecognizer.?, "processDraggedMotionEvent", .{ point, deviceId, modifiers });
        }
    }
    

    // throws Exception
    pub fn processMovedMotionEvent(self: *Self, x: i32, y: i32, deviceId: i32, modifiers: i32) void {
        if (x != self.lastX or y != self.lastY) {
            self.lastX = x;
            self.lastY = y;
            const point: ?*CustomGPoint = Inheritance.cast(?*CustomGPoint, Inheritance.receiverOf(AllMotionRecognizer.pointCircularPool.?, "getNextInstance").getNextInstance());
            _ = Inheritance.call(point.?, "setX", .{ x });
            _ = Inheritance.call(point.?, "setY", .{ y });
            _ = Inheritance.call(self.motionGestureRecognizer.?, "processMovedMotionEvent", .{ point, deviceId, modifiers });
        }
    }
    

    // throws Exception
    pub fn processScrolledMotionEvent(self: *Self, x: i32, y: i32, deviceId: i32, modifiers: i32) void {
        const point: ?*CustomGPoint = Inheritance.cast(?*CustomGPoint, Inheritance.receiverOf(AllMotionRecognizer.pointCircularPool.?, "getNextInstance").getNextInstance());
        _ = Inheritance.call(point.?, "setX", .{ x });
        _ = Inheritance.call(point.?, "setY", .{ y });
        _ = Inheritance.call(self.motionGestureRecognizer.?, "processScrolledMotionEvent", .{ point, deviceId, modifiers });
    }
    

    pub fn getMotionGestureRecognizer(self: *Self) ?*MotionGestureRecognizer {
        return self.motionGestureRecognizer;
    }
};

