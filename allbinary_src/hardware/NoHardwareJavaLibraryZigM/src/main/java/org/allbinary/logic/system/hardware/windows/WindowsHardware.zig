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
// package org.allbinary.logic.system.hardware.windows

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const HardwareInterface = @import("org/allbinary/logic/system/hardware/HardwareInterface.zig").HardwareInterface;
const BridgeInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/BridgeInterface.zig").BridgeInterface;
const CpuInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/CpuInterface.zig").CpuInterface;
const EthernetInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/EthernetInterface.zig").EthernetInterface;
const FireWireInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/FireWireInterface.zig").FireWireInterface;
const HardDriveControllerInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/HardDriveControllerInterface.zig").HardDriveControllerInterface;
const HardDriveInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/HardDriveInterface.zig").HardDriveInterface;
const HardwareComponentInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.zig").HardwareComponentInterface;
const MachineAccessControlAddressInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/MachineAccessControlAddressInterface.zig").MachineAccessControlAddressInterface;
const MediaInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/MediaInterface.zig").MediaInterface;
const MonitorInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/MonitorInterface.zig").MonitorInterface;
const UsbInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/UsbInterface.zig").UsbInterface;
const VideoInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/VideoInterface.zig").VideoInterface;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;

pub const WindowsHardware = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.windows.WindowsHardware";
    // Implements HardwareInterface
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getMultimedia(self: *Self, index: i32) ?*MediaInterface {
        _ = index;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getBridge(self: *Self, index: i32) ?*BridgeInterface {
        _ = index;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getCpu(self: *Self, index: i32) ?*CpuInterface {
        _ = index;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getEthernet(self: *Self, index: i32) ?*EthernetInterface {
        _ = index;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getFireWire(self: *Self, index: i32) ?*FireWireInterface {
        _ = index;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getHardDriveController(self: *Self, index: i32) ?*HardDriveControllerInterface {
        _ = index;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getHardDrive(self: *Self, index: i32) ?*HardDriveInterface {
        _ = index;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getMachineAccessControlAddress(self: *Self, index: i32) ?*MachineAccessControlAddressInterface {
        _ = index;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getMonitor(self: *Self, index: i32) ?*MonitorInterface {
        _ = index;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getUsb(self: *Self, index: i32) ?*UsbInterface {
        _ = index;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getVideo(self: *Self, index: i32) ?*VideoInterface {
        _ = index;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getComponent(self: *Self, index: i32) ?*HardwareComponentInterface {
        _ = index;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn toString(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
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

