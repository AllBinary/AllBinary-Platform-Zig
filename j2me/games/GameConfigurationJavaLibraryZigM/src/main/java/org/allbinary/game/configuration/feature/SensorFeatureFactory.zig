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
// package org.allbinary.game.configuration.feature

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const SensorFeature = @import("org/allbinary/game/configuration/feature/SensorFeature.zig").SensorFeature;

pub const SensorFeatureFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.feature.SensorFeatureFactory";
    NO_ORIENTATION: ?*SensorFeature = null,
    ORIENTATION_SENSORS: ?*SensorFeature = null,
    SIMULATED_ORIENTATION_SENSORS: ?*SensorFeature = null,
    YAW: ?*SensorFeature = null,
    YAW_MINUS_RIGHT_PLUS_LEFT: ?*SensorFeature = null,
    YAW_MINUS_LEFT_PLUS_RIGHT: ?*SensorFeature = null,
    PITCH: ?*SensorFeature = null,
    ROLL: ?*SensorFeature = null,
    var instance: ?*SensorFeatureFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SensorFeatureFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NO_ORIENTATION = Inheritance.callStatic(SensorFeature, "create1", .{ String.literal("No Orientation") });
        this.ORIENTATION_SENSORS = Inheritance.callStatic(SensorFeature, "create1", .{ String.literal("Orientation Sensors") });
        this.SIMULATED_ORIENTATION_SENSORS = Inheritance.callStatic(SensorFeature, "create1", .{ String.literal("Simulated Orientation Sensors") });
        this.YAW = Inheritance.callStatic(SensorFeature, "create1", .{ String.literal("Yaw") });
        this.YAW_MINUS_RIGHT_PLUS_LEFT = Inheritance.callStatic(SensorFeature, "create1", .{ String.literal("Yaw -Right +Left") });
        this.YAW_MINUS_LEFT_PLUS_RIGHT = Inheritance.callStatic(SensorFeature, "create1", .{ String.literal("Yaw -Left +Right ") });
        this.PITCH = Inheritance.callStatic(SensorFeature, "create1", .{ String.literal("Pitch") });
        this.ROLL = Inheritance.callStatic(SensorFeature, "create1", .{ String.literal("Roll") });
    }
    

    pub fn getInstance() ?*SensorFeatureFactory {
        return Inheritance.upcast(?*SensorFeatureFactory, SensorFeatureFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

