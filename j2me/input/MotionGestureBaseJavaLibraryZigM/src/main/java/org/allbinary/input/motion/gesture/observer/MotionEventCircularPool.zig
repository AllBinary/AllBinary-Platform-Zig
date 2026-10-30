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
// package org.allbinary.input.motion.gesture.observer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const MotionGestureInput = @import("org/allbinary/input/motion/gesture/MotionGestureInput.zig").MotionGestureInput;
const TouchMotionGestureFactory = @import("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.zig").TouchMotionGestureFactory;
const AllBinaryEventCircularPool = @import("org/allbinary/logic/util/event/AllBinaryEventCircularPool.zig").AllBinaryEventCircularPool;
const MotionEventFactory = @import("org/allbinary/input/motion/gesture/observer/MotionEventFactory.zig").MotionEventFactory;
const MotionGestureEvent = @import("org/allbinary/input/motion/gesture/observer/MotionGestureEvent.zig").MotionGestureEvent;

pub const MotionEventCircularPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.gesture.observer.MotionEventCircularPool";
    MIN: i32 = 0,
    eventPool: ?*AllBinaryEventCircularPool = null,

    fn initFields(this: *Self) void {
        this.MIN = Inheritance.receiverOf(TouchMotionGestureFactory.getInstance().?.LAST_MOTION.?, "getId").getId();
        this.eventPool = Inheritance.callStatic(AllBinaryEventCircularPool, "create1", .{ (InputFactory.getInstance().?.MAX - 1) - this.MIN });
    }
    

    pub fn createPool(id: i32) ?*MotionEventCircularPool {
        return Inheritance.callStatic(MotionEventCircularPool, "create1", .{ id });
    }
    

    pub fn create1(id: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this.eventPool.?, "initAllBinaryEventCircularPool", .{ Inheritance.callStatic(MotionEventFactory, "create2", .{ this.eventPool, id }) });
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, motionGestureInput: ?*MotionGestureInput) ?*MotionGestureEvent {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return Inheritance.cast(?*MotionGestureEvent, Inheritance.call(self.eventPool.?, "getInstance", .{ Inheritance.receiver(motionGestureInput.?, "getId").getId() - self.MIN }));
    }
};

