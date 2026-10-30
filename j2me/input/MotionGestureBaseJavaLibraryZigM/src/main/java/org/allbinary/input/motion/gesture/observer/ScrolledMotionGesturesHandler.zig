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
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const BaseMotionGestureEventListener = @import("org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener.zig").BaseMotionGestureEventListener;
const MotionGestureEvent = @import("org/allbinary/input/motion/gesture/observer/MotionGestureEvent.zig").MotionGestureEvent;

pub const ScrolledMotionGesturesHandler = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler";
    base: BasicEventHandler = undefined,
    var SINGLETON: ?*ScrolledMotionGesturesHandler = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = ScrolledMotionGesturesHandler.create();
    }
    

    pub fn getInstance() ?*ScrolledMotionGesturesHandler {
        return Inheritance.upcast(?*ScrolledMotionGesturesHandler, ScrolledMotionGesturesHandler.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self, eventObject: ?*AllBinaryEventObject, eventListenerInterface: ?*EventListenerInterface) void {
        _ = self;
        const baseMotionGestureEventListener: ?*BaseMotionGestureEventListener = Inheritance.cast(?*BaseMotionGestureEventListener, eventListenerInterface);
        _ = Inheritance.call(baseMotionGestureEventListener.?, "onScrolledMotionGestureEvent", .{ Inheritance.cast(?*MotionGestureEvent, eventObject) });
    }
};

