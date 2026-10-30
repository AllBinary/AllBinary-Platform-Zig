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
// package org.allbinary.input.accelerometer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const SensorFeatureFactory = @import("org/allbinary/game/configuration/feature/SensorFeatureFactory.zig").SensorFeatureFactory;
const AllBinaryOrientationSensor = @import("org/allbinary/input/gyro/AllBinaryOrientationSensor.zig").AllBinaryOrientationSensor;
const NoAccelerometerSensor = @import("org/allbinary/input/accelerometer/NoAccelerometerSensor.zig").NoAccelerometerSensor;

pub const AccelerometerSensorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.accelerometer.AccelerometerSensorFactory";
    var allBinaryAccelerometerSensor: ?*AllBinaryOrientationSensor = null;

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn init() void {
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        const sensorFeatureFactory: ?*SensorFeatureFactory = Inheritance.upcast(?*SensorFeatureFactory, SensorFeatureFactory.getInstance());
        if (Inheritance.call(features.?, "isFeature", .{ sensorFeatureFactory.?.ORIENTATION_SENSORS })) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No Orientation Sensors"); break :exception error.Exception; }});
        } else if (Inheritance.call(features.?, "isFeature", .{ sensorFeatureFactory.?.SIMULATED_ORIENTATION_SENSORS })) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No Simulation Sensors"); break :exception error.Exception; }});
        } else if (Inheritance.call(features.?, "isFeature", .{ sensorFeatureFactory.?.NO_ORIENTATION })) {
            AccelerometerSensorFactory.allBinaryAccelerometerSensor = Inheritance.upcast(@TypeOf(AccelerometerSensorFactory.allBinaryAccelerometerSensor), NoAccelerometerSensor.create());
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not Such SensorFeature"); break :exception error.Exception; }});
        }
    }
    

    pub fn getInstance() ?*AllBinaryOrientationSensor {
        return Inheritance.upcast(?*AllBinaryOrientationSensor, AccelerometerSensorFactory.allBinaryAccelerometerSensor);
    }
};

