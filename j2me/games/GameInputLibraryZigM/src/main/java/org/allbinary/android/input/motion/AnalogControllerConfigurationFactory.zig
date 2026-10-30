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
// package org.allbinary.android.input.motion

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AnalogControllerConfigurationEvent = @import("org/allbinary/android/input/motion/event/AnalogControllerConfigurationEvent.zig").AnalogControllerConfigurationEvent;
const AnalogControllerConfigurationEventHandler = @import("org/allbinary/android/input/motion/event/AnalogControllerConfigurationEventHandler.zig").AnalogControllerConfigurationEventHandler;
const ScaleFactorFactory = @import("org/allbinary/logic/math/ScaleFactorFactory.zig").ScaleFactorFactory;

pub const AnalogControllerConfigurationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.motion.AnalogControllerConfigurationFactory";
    SCALE_FACTOR: i32 = 0,
    SCALE_VALUE: i32 = 0,
    available: bool = false,
    analogControllerConfigurationEvent: ?*AnalogControllerConfigurationEvent = null,
    var instance: ?*AnalogControllerConfigurationFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AnalogControllerConfigurationFactory.create();
    }

    fn initFields(this: *Self) void {
        this.SCALE_FACTOR = ScaleFactorFactory.getInstance().?.DEFAULT_SCALE_FACTOR;
        this.SCALE_VALUE = ScaleFactorFactory.getInstance().?.DEFAULT_SCALE_VALUE;
        this.available = false;
        this.analogControllerConfigurationEvent = Inheritance.callStatic(AnalogControllerConfigurationEvent, "create1", .{ this });
    }
    

    pub fn getInstance() ?*AnalogControllerConfigurationFactory {
        return Inheritance.upcast(?*AnalogControllerConfigurationFactory, AnalogControllerConfigurationFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn isAvailable(self: *Self) bool {
        return self.available;
    }
    

    // throws Exception
    pub fn setAvailable(self: *Self, available: bool) void {
        self.available = available;
        _ = Inheritance.call(AnalogControllerConfigurationEventHandler.getInstance().?, "fireEvent", .{ self.analogControllerConfigurationEvent });
    }
};

