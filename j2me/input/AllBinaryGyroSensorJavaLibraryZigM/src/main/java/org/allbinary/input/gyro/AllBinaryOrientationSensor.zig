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
const CompleteMotionGestureInputEventListenerInterface = @import("org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface.zig").CompleteMotionGestureInputEventListenerInterface;
const NoCompleteMotionGestureInputEventListener = @import("org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener.zig").NoCompleteMotionGestureInputEventListener;
const AllBinarySensor = @import("org/allbinary/input/AllBinarySensor.zig").AllBinarySensor;
const Orientation = @import("org/allbinary/logic/math/Orientation.zig").Orientation;
const PrimitiveFloatUtil = @import("org/allbinary/logic/math/PrimitiveFloatUtil.zig").PrimitiveFloatUtil;

pub const AllBinaryOrientationSensor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.gyro.AllBinaryOrientationSensor";
    base: AllBinarySensor = undefined,
    sensorDataFloatArray: []f32 = &.{},
    listener: ?*CompleteMotionGestureInputEventListenerInterface = null,

    fn initFields(this: *Self) void {
        this.sensorDataFloatArray = PrimitiveFloatUtil.getArrayInstance();
        this.listener = Inheritance.upcast(?*CompleteMotionGestureInputEventListenerInterface, NoCompleteMotionGestureInputEventListener.getInstance());
    }
    

    pub fn setCompleteMotionGestureInputEventListener(self: *Self, completeMotionGestureInputEventListenerInterface: ?*CompleteMotionGestureInputEventListenerInterface) void {
        self.listener = completeMotionGestureInputEventListenerInterface;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = AllBinarySensor.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getOrientation(self: *Self) ?*Orientation {
        std.debug.panic("{any}", .{exception: { _ = Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
};

