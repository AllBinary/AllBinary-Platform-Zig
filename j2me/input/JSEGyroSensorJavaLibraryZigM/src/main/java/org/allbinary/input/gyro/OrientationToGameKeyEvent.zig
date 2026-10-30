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
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const SensorFeatureFactory = @import("org/allbinary/game/configuration/feature/SensorFeatureFactory.zig").SensorFeatureFactory;
const Orientation = @import("org/allbinary/logic/math/Orientation.zig").Orientation;
const AllBinaryOrientationSensor = @import("org/allbinary/input/gyro/AllBinaryOrientationSensor.zig").AllBinaryOrientationSensor;
const NoGyroSensor = @import("org/allbinary/input/gyro/NoGyroSensor.zig").NoGyroSensor;

pub const OrientationToGameKeyEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.gyro.OrientationToGameKeyEvent";
    allBinaryGyroSensor: ?*AllBinaryOrientationSensor = null,
    MIN: i32 = 0,

    fn initFields(this: *Self) void {
        this.allBinaryGyroSensor = null;
        this.MIN = 15;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(Features.getInstance().?, "isFeature", .{ SensorFeatureFactory.getInstance().?.NO_ORIENTATION })) {
            this.allBinaryGyroSensor = Inheritance.upcast(@TypeOf(this.allBinaryGyroSensor), NoGyroSensor.create());
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not Such Feature"); break :exception error.Exception; }});
        }
        return this;
    }
    

    pub fn setAllBinaryGyroSensor(self: *Self, allBinaryGyroSensor: ?*AllBinaryOrientationSensor) void {
        self.allBinaryGyroSensor = allBinaryGyroSensor;
    }
    

    pub fn getAllBinaryGyroSensor(self: *Self) ?*AllBinaryOrientationSensor {
        return self.allBinaryGyroSensor;
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn updateGameKeyEvents(self: *Self, orientation: ?*Orientation, yaw: i32, pitch: i32, roll: i32) void {
        _ = orientation;
        _ = yaw;
        _ = pitch;
        _ = roll;
        _ = self;
    }
};

