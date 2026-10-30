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

pub const OrientationData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.gyro.OrientationData";
    ORIENTATION_SENSOR_INPUT: ?*String = null,
    ORIENTATION_TYPE: ?*String = null,
    var SINGLETON: ?*OrientationData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = OrientationData.create();
    }

    fn initFields(this: *Self) void {
        this.ORIENTATION_SENSOR_INPUT = String.literal("Orientation Sensor Input");
        this.ORIENTATION_TYPE = String.literal("Orientation Type");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*OrientationData {
        return Inheritance.upcast(?*OrientationData, OrientationData.SINGLETON);
    }
};

