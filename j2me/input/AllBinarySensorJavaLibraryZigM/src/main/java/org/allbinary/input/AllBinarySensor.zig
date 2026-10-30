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
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AllBinarySensorListener = @import("org/allbinary/input/AllBinarySensorListener.zig").AllBinarySensorListener;

pub const AllBinarySensor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.AllBinarySensor";
    pub const java_interfaces = .{ AllBinarySensorListener };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    // Implements AllBinarySensorListener
    pub var NULL_ALLBINARY_SENSOR: ?*AllBinarySensor = undefined;
    var max: i32 = 100;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_ALLBINARY_SENSOR = AllBinarySensor.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn init(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn update(self: *Self) void {
        _ = self;
    }
    

    pub fn setMax(max_: i32) void {
        AllBinarySensor.max = Inheritance.upcast(@TypeOf(AllBinarySensor.max), max_);
    }
    

    pub fn getMax() i32 {
        return AllBinarySensor.max;
    }
    

    pub fn getId(self: *Self) i32 {
        _ = self;
        return AllBinarySensor.getMax();
    }
    

    pub fn shutdown(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("shutdown") });
    }
    

    pub fn onSensorChange(self: *Self) void {
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ self.commonStrings.?.NOT_IMPLEMENTED, self });
    }
};

