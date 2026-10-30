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
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const SensorFeatureFactory = @import("org/allbinary/game/configuration/feature/SensorFeatureFactory.zig").SensorFeatureFactory;
const NoCompleteMotionGestureInputEventListener = @import("org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener.zig").NoCompleteMotionGestureInputEventListener;
const SingleKeyPressGameKeyFromMotionGestureEventListener = @import("org/allbinary/game/input/motion/action/SingleKeyPressGameKeyFromMotionGestureEventListener.zig").SingleKeyPressGameKeyFromMotionGestureEventListener;
const AccelerometerSensorFactory = @import("org/allbinary/input/accelerometer/AccelerometerSensorFactory.zig").AccelerometerSensorFactory;

pub const AccelerometerSensorUpdateProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor";
    base: Processor = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Processor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = self;
        const sensorFeatureFactory: ?*SensorFeatureFactory = Inheritance.upcast(?*SensorFeatureFactory, SensorFeatureFactory.getInstance());
        if (Inheritance.call(Features.getInstance().?, "isFeature", .{ sensorFeatureFactory.?.ORIENTATION_SENSORS })) {
            _ = Inheritance.call(AccelerometerSensorFactory.getInstance().?, "setCompleteMotionGestureInputEventListener", .{ SingleKeyPressGameKeyFromMotionGestureEventListener.create() });
        } else if (Inheritance.call(Features.getInstance().?, "isFeature", .{ sensorFeatureFactory.?.SIMULATED_ORIENTATION_SENSORS })) {
            _ = Inheritance.call(AccelerometerSensorFactory.getInstance().?, "setCompleteMotionGestureInputEventListener", .{ SingleKeyPressGameKeyFromMotionGestureEventListener.create() });
        } else if (Inheritance.call(Features.getInstance().?, "isFeature", .{ sensorFeatureFactory.?.NO_ORIENTATION })) {
            _ = Inheritance.call(AccelerometerSensorFactory.getInstance().?, "setCompleteMotionGestureInputEventListener", .{ NoCompleteMotionGestureInputEventListener.getInstance() });
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Sensor Feature Not Set"); break :exception error.Exception; }});
        }
    }
};

