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
const AllBinarySensorListener = @import("org/allbinary/input/AllBinarySensorListener.zig").AllBinarySensorListener;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Orientation = @import("org/allbinary/logic/math/Orientation.zig").Orientation;
const AllBinaryOrientationSensor = @import("org/allbinary/input/gyro/AllBinaryOrientationSensor.zig").AllBinaryOrientationSensor;

pub const NoGyroSensor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.gyro.NoGyroSensor";
    base: AllBinaryOrientationSensor = undefined,
    // Implements AllBinarySensorListener
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = AllBinaryOrientationSensor.create().*;
        _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getOrientation(self: *Self) ?*Orientation {
        _ = self;
        return Inheritance.upcast(?*Orientation, Orientation.NONE);
    }
    

    pub fn onSensorChange(self: *Self) void {
        _ = self;
    }
};

