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
const MotionGestureConfiguration = @import("org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration.zig").MotionGestureConfiguration;
const MotionGestureConfigurationFactory = @import("org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.zig").MotionGestureConfigurationFactory;
const CompleteMotionGestureListenerInterface = @import("org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface.zig").CompleteMotionGestureListenerInterface;
const NullCompleteMotionGestureReceiver = @import("org/allbinary/input/motion/gesture/observer/NullCompleteMotionGestureReceiver.zig").NullCompleteMotionGestureReceiver;
const ResolveCompleteMotionGestureListener = @import("org/allbinary/input/motion/gesture/observer/ResolveCompleteMotionGestureListener.zig").ResolveCompleteMotionGestureListener;

pub const MotionGestureReceiveInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*CompleteMotionGestureListenerInterface {
        const configuration: ?*MotionGestureConfiguration = Inheritance.upcast(?*MotionGestureConfiguration, MotionGestureConfigurationFactory.getInstance());
        if (!configuration.?.isExecutingActionsAllowed()) {
            return Inheritance.upcast(?*CompleteMotionGestureListenerInterface, NullCompleteMotionGestureReceiver.create());
        } else {
            return Inheritance.upcast(?*CompleteMotionGestureListenerInterface, ResolveCompleteMotionGestureListener.create());
        }
    }
};

