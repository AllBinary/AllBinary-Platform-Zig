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
// package org.allbinary.logic.system.hardware

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const HardwareComponentInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.zig").HardwareComponentInterface;
const NoHardwareComponent = @import("org/allbinary/logic/system/hardware/components/interfaces/NoHardwareComponent.zig").NoHardwareComponent;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const HardwareInterface = @import("org/allbinary/logic/system/hardware/HardwareInterface.zig").HardwareInterface;

pub const NoHardware = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.NoHardware";
    pub const java_interfaces = .{ HardwareInterface };
    // Implements HardwareInterface
    var instance: ?*HardwareInterface = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?*HardwareInterface, NoHardware.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*HardwareInterface {
        return Inheritance.upcast(?*HardwareInterface, NoHardware.instance);
    }
    

    pub fn getComponent(self: *Self, index: i32) ?*HardwareComponentInterface {
        _ = index;
        _ = self;
        return Inheritance.upcast(?*HardwareComponentInterface, NoHardwareComponent.getInstance());
    }
    

    pub fn toString(self: *Self) ?*String {
        _ = self;
        return String.literal("No Hardware");
    }
    

    pub fn compareTo(self: *Self, hardwareInterface: ?*HardwareInterface) bool {
        _ = hardwareInterface;
        _ = self;
        return true;
    }
    

    pub fn difference(self: *Self, hardwareInterface: ?*HardwareInterface) ?*ABHashtable {
        _ = hardwareInterface;
        _ = self;
        return Inheritance.upcast(?*ABHashtable, StdUtil.getInstance().?.NULL_TABLE);
    }
};

