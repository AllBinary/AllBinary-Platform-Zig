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
const AllBinarySensor = @import("org/allbinary/input/AllBinarySensor.zig").AllBinarySensor;
const NoAllBinarySensor = @import("org/allbinary/input/NoAllBinarySensor.zig").NoAllBinarySensor;

pub const SensorGameUpdateProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.gyro.SensorGameUpdateProcessor";
    inputSensor: ?*AllBinarySensor = null,

    fn initFields(this: *Self) void {
        this.inputSensor = Inheritance.upcast(?*AllBinarySensor, NoAllBinarySensor.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn setInputSensor(self: *Self, inputSensor: ?*AllBinarySensor) void {
        self.inputSensor = inputSensor;
    }
    

    pub fn getInputSensor(self: *Self) ?*AllBinarySensor {
        return self.inputSensor;
    }
    

    // throws Exception
    pub fn process(self: *Self, anyType: ?Object) void {
        _ = anyType;
        _ = self;
    }
    

    // throws Exception
    pub fn sendNotifications(self: *Self, anyType: ?Object) void {
        _ = anyType;
        _ = self;
    }
    

    pub fn isAnySensor(self: *Self) bool {
        if (Object.same(self.inputSensor, NoAllBinarySensor.getInstance())) {
            return false;
        } else {
            return true;
        }
    }
    

    pub fn setNoSensors(self: *Self) void {
        _ = Inheritance.call(self, "setInputSensor", .{ NoAllBinarySensor.getInstance() });
    }
};

