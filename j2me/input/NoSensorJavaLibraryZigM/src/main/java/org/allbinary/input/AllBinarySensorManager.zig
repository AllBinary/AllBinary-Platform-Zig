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
// package org.allbinary.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AccelerometerSensorFactory = @import("org/allbinary/input/accelerometer/AccelerometerSensorFactory.zig").AccelerometerSensorFactory;
const GyroSensorFactory = @import("org/allbinary/input/gyro/GyroSensorFactory.zig").GyroSensorFactory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const AllBinarySensorManager = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.AllBinarySensorManager";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    ORIENTATION_SENSOR_INPUT: ?*String = null,
    ORIENTATION_TYPE: ?*String = null,
    list: ?*BasicArrayList = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.ORIENTATION_SENSOR_INPUT = String.literal("Orientation Sensor Input");
        this.ORIENTATION_TYPE = String.literal("Orientation Type");
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn getInstance() ?*AllBinarySensorManager {
        if (Object.same(AllBinarySensorManager.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            AllBinarySensorManager.instance = Inheritance.upcast(@TypeOf(AllBinarySensorManager.instance), AllBinarySensorManager.create());
        }
        return Inheritance.cast(?*AllBinarySensorManager, AllBinarySensorManager.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        { // try
            _ = GyroSensorFactory.init();
            _ = AccelerometerSensorFactory.init();
        }
        // catch (Exception e):
//             _ = Inheritance.call(this.logUtil.?, "put", .{ this.commonStrings.?.EXCEPTION, this, this.commonStrings.?.CONSTRUCTOR, e });
        return this;
    }
    

    pub fn init(self: *Self) void {
        _ = self;
    }
    

    pub fn getSensorNamesList(self: *Self) ?*BasicArrayList {
        return self.list;
    }
    

    pub fn shutdown(self: *Self) void {
        _ = self;
    }
};

