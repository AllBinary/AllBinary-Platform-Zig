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
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;
const OperatingSystems = @import("org/allbinary/logic/system/os/OperatingSystems.zig").OperatingSystems;
const LinuxHardware = @import("org/allbinary/logic/system/hardware/linux/LinuxHardware.zig").LinuxHardware;
const WindowsHardware = @import("org/allbinary/logic/system/hardware/windows/WindowsHardware.zig").WindowsHardware;
const HardwareInterface = @import("org/allbinary/logic/system/hardware/HardwareInterface.zig").HardwareInterface;

pub const HardwareFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.HardwareFactory";
    var instance: ?*HardwareFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = HardwareFactory.create();
    }
    

    pub fn getInstance() ?*HardwareFactory {
        return Inheritance.upcast(?*HardwareFactory, HardwareFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance1(os: ?*GenericOperatingSystem) ?*HardwareInterface {
        { // try
            const operatingSystems: ?*OperatingSystems = Inheritance.upcast(?*OperatingSystems, OperatingSystems.getInstance());
            if (Inheritance.call(os.?.getName().?, "compareTo", .{ operatingSystems.?.LINUX }) == 0) {
                return Inheritance.cast(?*HardwareInterface, LinuxHardware.create());
            } else if (Inheritance.call(os.?.getName().?, "indexOf", .{ operatingSystems.?.WINDOWS }) >= 0) {
                return Inheritance.cast(?*HardwareInterface, WindowsHardware.create());
            }
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("No Hardware Imp for: "), os.?.getName()); break :exception error.Exception; }});
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
};

