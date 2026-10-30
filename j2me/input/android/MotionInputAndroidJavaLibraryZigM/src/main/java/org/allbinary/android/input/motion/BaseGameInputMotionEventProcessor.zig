//
// AllBinary Open License Version 1
// Copyright (c) 2009 AllBinary
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
// package org.allbinary.android.input.motion

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MotionEvent = @import("android/view/MotionEvent.zig").MotionEvent;
const BasicMotionGesturesHandler = @import("org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.zig").BasicMotionGesturesHandler;
const GameMotionGestureListener = @import("org/allbinary/input/motion/gesture/observer/GameMotionGestureListener.zig").GameMotionGestureListener;
const MotionGestureReceiveInterfaceFactory = @import("org/allbinary/input/motion/gesture/observer/MotionGestureReceiveInterfaceFactory.zig").MotionGestureReceiveInterfaceFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const MotionEventProcessor = @import("org/allbinary/android/input/motion/MotionEventProcessor.zig").MotionEventProcessor;

pub const BaseGameInputMotionEventProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor";
    base: MotionEventProcessor = undefined,
    commonStrings: ?*CommonStrings = null,
    gameMotionGestureListener: ?*GameMotionGestureListener = null,

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = MotionEventProcessor.create().*;
        this.initFields();
        this.gameMotionGestureListener = Inheritance.callStatic(GameMotionGestureListener, "create1", .{ MotionGestureReceiveInterfaceFactory.getInstance() });
        _ = this.addListener();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn process(self: *Self, motionEvent: ?*MotionEvent) void {
        _ = motionEvent;
        _ = self;
    }
    

    pub fn addListener(self: *Self) void {
        const motionGesturesHandler: ?*BasicMotionGesturesHandler = Inheritance.upcast(?*BasicMotionGesturesHandler, BasicMotionGesturesHandler.getInstance());
        _ = Inheritance.call(motionGesturesHandler.?, "addListenerInterface", .{ self.gameMotionGestureListener });
    }
};

