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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const HardwareInterface = @import("org/allbinary/logic/system/hardware/HardwareInterface.zig").HardwareInterface;
const ComponentFactory = @import("org/allbinary/logic/system/hardware/components/ComponentFactory.zig").ComponentFactory;
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
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;

pub const WindowsHardware = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.windows.WindowsHardware";
    componentInterfaceVector: ?*BasicArrayList = null,
    videoInterfaceVector: ?*BasicArrayList = null,
    hardDriveControllerInterfaceVector: ?*BasicArrayList = null,
    cpuInterfaceVector: ?*BasicArrayList = null,
    usbInterfaceVector: ?*BasicArrayList = null,
    ethernetInterfaceVector: ?*BasicArrayList = null,
    multimediaInterfaceVector: ?*BasicArrayList = null,
    fireWireInterfaceVector: ?*BasicArrayList = null,
    bridgeInterfaceVector: ?*BasicArrayList = null,
    hardDriveInterfaceVector: ?*BasicArrayList = null,
    macInterfaceVector: ?*BasicArrayList = null,
    monitorInterfaceVector: ?*BasicArrayList = null,
    NAME: ?*String = null,
    MINHARDWARE: i32 = 0,
    componentFactory: ?*ComponentFactory = null,
    // Implements HardwareInterface

    fn initFields(this: *Self) void {
        this.componentInterfaceVector = null;
        this.videoInterfaceVector = null;
        this.hardDriveControllerInterfaceVector = null;
        this.cpuInterfaceVector = null;
        this.usbInterfaceVector = null;
        this.ethernetInterfaceVector = null;
        this.multimediaInterfaceVector = null;
        this.fireWireInterfaceVector = null;
        this.bridgeInterfaceVector = null;
        this.hardDriveInterfaceVector = null;
        this.macInterfaceVector = null;
        this.monitorInterfaceVector = null;
        this.NAME = String.literal("Windows Hardware Profile");
        this.MINHARDWARE = 0;
        this.componentFactory = Inheritance.upcast(?*ComponentFactory, ComponentFactory.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        { // try
            this.componentInterfaceVector = Inheritance.upcast(@TypeOf(this.componentInterfaceVector), BasicArrayListD.create());
            this.videoInterfaceVector = Inheritance.upcast(@TypeOf(this.videoInterfaceVector), BasicArrayListD.create());
            this.hardDriveControllerInterfaceVector = Inheritance.upcast(@TypeOf(this.hardDriveControllerInterfaceVector), BasicArrayListD.create());
            this.cpuInterfaceVector = Inheritance.upcast(@TypeOf(this.cpuInterfaceVector), BasicArrayListD.create());
            this.usbInterfaceVector = Inheritance.upcast(@TypeOf(this.usbInterfaceVector), BasicArrayListD.create());
            this.ethernetInterfaceVector = Inheritance.upcast(@TypeOf(this.ethernetInterfaceVector), BasicArrayListD.create());
            this.multimediaInterfaceVector = Inheritance.upcast(@TypeOf(this.multimediaInterfaceVector), BasicArrayListD.create());
            this.fireWireInterfaceVector = Inheritance.upcast(@TypeOf(this.fireWireInterfaceVector), BasicArrayListD.create());
            this.bridgeInterfaceVector = Inheritance.upcast(@TypeOf(this.bridgeInterfaceVector), BasicArrayListD.create());
            this.hardDriveInterfaceVector = Inheritance.upcast(@TypeOf(this.hardDriveInterfaceVector), BasicArrayListD.create());
            this.macInterfaceVector = Inheritance.upcast(@TypeOf(this.macInterfaceVector), BasicArrayListD.create());
            this.monitorInterfaceVector = Inheritance.upcast(@TypeOf(this.monitorInterfaceVector), BasicArrayListD.create());
            if (this.componentInterfaceVector.?.size() < this.MINHARDWARE) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Not Enough Data For A Valid License On Windows"); break :exception error.Exception; }});
            }
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
        return this;
    }
    

    pub fn getComponentType(self: *Self, component: ?*String) ?*String {
        if (Inheritance.call(component.?, "indexOf", .{ Object.toString(Object.of(self.componentFactory.?.ETHERNET)) }) >= 0) {
            return Inheritance.upcast(?*String, Object.toString(Object.of(self.componentFactory.?.ETHERNET)));
        } else if (Inheritance.call(component.?, "indexOf", .{ Object.toString(Object.of(self.componentFactory.?.BRIDGE)) }) >= 0) {
            return Inheritance.upcast(?*String, Object.toString(Object.of(self.componentFactory.?.BRIDGE)));
        } else if (Inheritance.call(component.?, "indexOf", .{ Object.toString(Object.of(self.componentFactory.?.IDE)) }) >= 0) {
            return Inheritance.upcast(?*String, Object.toString(Object.of(self.componentFactory.?.IDE)));
        } else if (Inheritance.call(component.?, "indexOf", .{ Object.toString(Object.of(self.componentFactory.?.MULTIMEDIA)) }) >= 0) {
            return Inheritance.upcast(?*String, Object.toString(Object.of(self.componentFactory.?.MULTIMEDIA)));
        } else if (Inheritance.call(component.?, "indexOf", .{ Object.toString(Object.of(self.componentFactory.?.SCSI)) }) >= 0) {
            return Inheritance.upcast(?*String, Object.toString(Object.of(self.componentFactory.?.SCSI)));
        } else if (Inheritance.call(component.?, "indexOf", .{ Object.toString(Object.of(self.componentFactory.?.USB)) }) >= 0) {
            return Inheritance.upcast(?*String, Object.toString(Object.of(self.componentFactory.?.USB)));
        } else if (Inheritance.call(component.?, "indexOf", .{ Object.toString(Object.of(self.componentFactory.?.VGA)) }) >= 0) {
            return Inheritance.upcast(?*String, Object.toString(Object.of(self.componentFactory.?.VGA)));
        } else {
            return null;
        }
    }
    

    pub fn getMultimedia(self: *Self, index: i32) ?*MediaInterface {
        return Inheritance.cast(?*MediaInterface, Inheritance.call(self.multimediaInterfaceVector.?, "get", .{ index }));
    }
    

    pub fn getBridge(self: *Self, index: i32) ?*BridgeInterface {
        return Inheritance.cast(?*BridgeInterface, Inheritance.call(self.bridgeInterfaceVector.?, "get", .{ index }));
    }
    

    pub fn getCpu(self: *Self, index: i32) ?*CpuInterface {
        return Inheritance.cast(?*CpuInterface, Inheritance.call(self.cpuInterfaceVector.?, "get", .{ index }));
    }
    

    pub fn getEthernet(self: *Self, index: i32) ?*EthernetInterface {
        return Inheritance.cast(?*EthernetInterface, Inheritance.call(self.ethernetInterfaceVector.?, "get", .{ index }));
    }
    

    pub fn getFireWire(self: *Self, index: i32) ?*FireWireInterface {
        return Inheritance.cast(?*FireWireInterface, Inheritance.call(self.fireWireInterfaceVector.?, "get", .{ index }));
    }
    

    pub fn getHardDriveController(self: *Self, index: i32) ?*HardDriveControllerInterface {
        return Inheritance.cast(?*HardDriveControllerInterface, Inheritance.call(self.hardDriveControllerInterfaceVector.?, "get", .{ index }));
    }
    

    pub fn getHardDrive(self: *Self, index: i32) ?*HardDriveInterface {
        return Inheritance.cast(?*HardDriveInterface, Inheritance.call(self.hardDriveInterfaceVector.?, "get", .{ index }));
    }
    

    pub fn getMachineAccessControlAddress(self: *Self, index: i32) ?*MachineAccessControlAddressInterface {
        return Inheritance.cast(?*MachineAccessControlAddressInterface, Inheritance.call(self.macInterfaceVector.?, "get", .{ index }));
    }
    

    pub fn getMonitor(self: *Self, index: i32) ?*MonitorInterface {
        return Inheritance.cast(?*MonitorInterface, Inheritance.call(self.monitorInterfaceVector.?, "get", .{ index }));
    }
    

    pub fn getUsb(self: *Self, index: i32) ?*UsbInterface {
        return Inheritance.cast(?*UsbInterface, Inheritance.call(self.usbInterfaceVector.?, "get", .{ index }));
    }
    

    pub fn getVideo(self: *Self, index: i32) ?*VideoInterface {
        return Inheritance.cast(?*VideoInterface, Inheritance.call(self.videoInterfaceVector.?, "get", .{ index }));
    }
    

    pub fn getComponent(self: *Self, index: i32) ?*HardwareComponentInterface {
        return Inheritance.cast(?*HardwareComponentInterface, Inheritance.call(self.componentInterfaceVector.?, "get", .{ index }));
    }
    

    pub fn toString(self: *Self) ?*String {
        const hardwareBuffer: ?*StringMaker = StringMaker.create();
        const size: i32 = self.componentInterfaceVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const componentInterface: ?*HardwareComponentInterface = Inheritance.cast(?*HardwareComponentInterface, Inheritance.call(self.componentInterfaceVector.?, "get", .{ index }));
            _ = Inheritance.call(hardwareBuffer.?, "append", .{ Object.toString(Object.of(componentInterface)) });
            _ = Inheritance.call(hardwareBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(hardwareBuffer)));
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

