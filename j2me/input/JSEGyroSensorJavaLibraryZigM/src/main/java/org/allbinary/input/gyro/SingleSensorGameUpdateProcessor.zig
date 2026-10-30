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
const AccelerometerSensorUpdateProcessor = @import("org/allbinary/input/gyro/AccelerometerSensorUpdateProcessor.zig").AccelerometerSensorUpdateProcessor;
const GyroSensorUpdateProcessor = @import("org/allbinary/input/gyro/GyroSensorUpdateProcessor.zig").GyroSensorUpdateProcessor;
const SensorGameUpdateProcessor = @import("org/allbinary/input/gyro/SensorGameUpdateProcessor.zig").SensorGameUpdateProcessor;

pub const SingleSensorGameUpdateProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.gyro.SingleSensorGameUpdateProcessor";
    base: SensorGameUpdateProcessor = undefined,
    accelerometerSensorUpdateProcessor: ?*Processor = null,
    gyroSensorUpdateProcessor: ?*Processor = null,

    fn initFields(this: *Self) void {
        this.accelerometerSensorUpdateProcessor = Inheritance.upcast(?*Processor, AccelerometerSensorUpdateProcessor.create());
        this.gyroSensorUpdateProcessor = Inheritance.upcast(?*Processor, GyroSensorUpdateProcessor.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = SensorGameUpdateProcessor.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self, anyType: ?Object) void {
        _ = anyType;
        _ = Inheritance.receiver(self, "setNoSensors").setNoSensors();
    }
    

    // throws Exception
    pub fn sendNotifications(self: *Self, anyType: ?Object) void {
        _ = anyType;
        _ = self;
    }
};

