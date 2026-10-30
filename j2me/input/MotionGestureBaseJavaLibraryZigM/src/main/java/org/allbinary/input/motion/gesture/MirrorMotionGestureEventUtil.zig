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
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const MotionEventCircularPool = @import("org/allbinary/input/motion/gesture/observer/MotionEventCircularPool.zig").MotionEventCircularPool;
const MotionGestureEvent = @import("org/allbinary/input/motion/gesture/observer/MotionGestureEvent.zig").MotionGestureEvent;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const MirrorMotionGestureEventUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil";
    motionEventCircularPool: ?*MotionEventCircularPool = null,
    var instance: ?*MirrorMotionGestureEventUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MirrorMotionGestureEventUtil.create();
    }

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.motionEventCircularPool = Inheritance.upcast(@TypeOf(this.motionEventCircularPool), Inheritance.callStatic(MotionEventCircularPool, "createPool", .{ @as(i32, std.math.maxInt(i32)) }));
        return this;
    }
    

    // throws Exception
    pub fn mirrorVerticle(self: *Self, motionGestureEvent: ?*MotionGestureEvent, halfWidth: i32) ?*MotionGestureEvent {
        const event: ?*MotionGestureEvent = Inheritance.upcast(?*MotionGestureEvent, Inheritance.call(self.motionEventCircularPool.?, "getInstance", .{ Inheritance.receiver(motionGestureEvent.?, "getMotionGesture").getMotionGesture() }));
        const previousNewX: i32 = Inheritance.call(self, "getNewX", .{ Inheritance.receiverOf(Inheritance.receiver(motionGestureEvent.?, "getPreviousPoint").getPreviousPoint().?, "getX").getX(), halfWidth });
        const currentNewX: i32 = Inheritance.call(self, "getNewX", .{ Inheritance.receiverOf(Inheritance.receiver(motionGestureEvent.?, "getCurrentPoint").getCurrentPoint().?, "getX").getX(), halfWidth });
        const pointFactory: ?*PointFactory = Inheritance.upcast(?*PointFactory, PointFactory.getInstance());
        const mirroredPreviousPoint: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.call(pointFactory.?, "createXY", .{ previousNewX, Inheritance.receiverOf(Inheritance.receiver(motionGestureEvent.?, "getPreviousPoint").getPreviousPoint().?, "getY").getY() }));
        const mirroredCurrentPoint: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.call(pointFactory.?, "createXY", .{ currentNewX, Inheritance.receiverOf(Inheritance.receiver(motionGestureEvent.?, "getCurrentPoint").getCurrentPoint().?, "getY").getY() }));
        _ = Inheritance.call(event.?, "setPreviousPoint", .{ mirroredPreviousPoint });
        _ = Inheritance.call(event.?, "setCurrentPoint", .{ mirroredCurrentPoint });
        return event;
    }
    

    pub fn getNewX(self: *Self, x: i32, halfWidth: i32) i32 {
        _ = self;
        var newX: i32 = 0;
        if (x > halfWidth) {
            newX = halfWidth - (x - halfWidth);
        } else {
            newX = halfWidth + (halfWidth - x);
        }
        return newX;
    }
    

    pub fn getInstance() ?*MirrorMotionGestureEventUtil {
        return Inheritance.upcast(?*MirrorMotionGestureEventUtil, MirrorMotionGestureEventUtil.instance);
    }
};

