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
const OperatingSystemInterface = @import("org/allbinary/logic/system/os/OperatingSystemInterface.zig").OperatingSystemInterface;
const HardwareInterface = @import("org/allbinary/logic/system/hardware/HardwareInterface.zig").HardwareInterface;
const NoHardware = @import("org/allbinary/logic/system/hardware/NoHardware.zig").NoHardware;

pub const HardwareFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.HardwareFactory";
    SINGLETON: ?*HardwareInterface = null,
    var instance: ?*HardwareFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = HardwareFactory.create();
    }

    fn initFields(this: *Self) void {
        this.SINGLETON = Inheritance.upcast(?*HardwareInterface, NoHardware.getInstance());
    }
    

    pub fn getInstance() ?*HardwareFactory {
        return Inheritance.upcast(?*HardwareFactory, HardwareFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getInstance1(self: *Self, os: ?*OperatingSystemInterface) ?*HardwareInterface {
        _ = os;
        { // try
            return self.SINGLETON;
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
};

