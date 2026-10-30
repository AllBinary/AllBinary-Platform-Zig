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
// package org.allbinary.logic.system.hardware.linux

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const FileReader = @import("java/io/FileReader.zig").FileReader;
// const LineNumberReader = @import("java/io/LineNumberReader.zig").LineNumberReader;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LogConfigTypeFactory = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.zig").LogConfigTypeFactory;
const LogConfigTypes = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypes.zig").LogConfigTypes;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const FilePathData = @import("org/allbinary/logic/io/file/FilePathData.zig").FilePathData;
const SubDirectory = @import("org/allbinary/logic/io/file/directory/SubDirectory.zig").SubDirectory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
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
const Cpu = @import("org/allbinary/logic/system/hardware/components/linux/Cpu.zig").Cpu;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const PCComponentFactory = @import("org/allbinary/logic/system/hardware/linux/PCComponentFactory.zig").PCComponentFactory;

pub const LinuxHardware = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.linux.LinuxHardware";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
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
    // Implements HardwareInterface
    const PCIFILE: ?*String = String.literal("/proc/pci");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
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
        this.NAME = String.literal("Linux Hardware Profile");
        this.MINHARDWARE = 5;
    }
    

    pub fn create1(path: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "init", .{ path });
        return this;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "init", .{ LinuxHardware.PCIFILE });
        if (this.componentInterfaceVector.?.size() < this.MINHARDWARE) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not Enough Data For A Valid License On Linux"); break :exception error.Exception; }});
        }
        const cpu: ?*Cpu = Cpu.create();
        if (cpu != null) {
            _ = Inheritance.call(this.cpuInterfaceVector.?, "add", .{ cpu });
            _ = Inheritance.call(this.componentInterfaceVector.?, "add", .{ cpu });
        }
        if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.OS })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Hardware Data: "), Object.toString(Object.of(this))), this, this.commonStrings.?.CONSTRUCTOR });
        }
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, filePath: ?*String) void {
        const lineNumberReader: ?*LineNumberReader = null;
        { // try
            _ = Inheritance.call(self, "init", .{ lineNumberReader, filePath });
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.OS })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Hardware Data: "), Object.toString(Object.of(self))), self, self.commonStrings.?.CONSTRUCTOR, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn init2(self: *Self, lineNumberReaderParameter: ?*LineNumberReader, filePath: ?*String) void {
        var lineNumberReader = lineNumberReaderParameter;
        { // try
            self.componentInterfaceVector = Inheritance.upcast(@TypeOf(self.componentInterfaceVector), BasicArrayListD.create());
            self.videoInterfaceVector = Inheritance.upcast(@TypeOf(self.videoInterfaceVector), BasicArrayListD.create());
            self.hardDriveControllerInterfaceVector = Inheritance.upcast(@TypeOf(self.hardDriveControllerInterfaceVector), BasicArrayListD.create());
            self.cpuInterfaceVector = Inheritance.upcast(@TypeOf(self.cpuInterfaceVector), BasicArrayListD.create());
            self.usbInterfaceVector = Inheritance.upcast(@TypeOf(self.usbInterfaceVector), BasicArrayListD.create());
            self.ethernetInterfaceVector = Inheritance.upcast(@TypeOf(self.ethernetInterfaceVector), BasicArrayListD.create());
            self.multimediaInterfaceVector = Inheritance.upcast(@TypeOf(self.multimediaInterfaceVector), BasicArrayListD.create());
            self.fireWireInterfaceVector = Inheritance.upcast(@TypeOf(self.fireWireInterfaceVector), BasicArrayListD.create());
            self.bridgeInterfaceVector = Inheritance.upcast(@TypeOf(self.bridgeInterfaceVector), BasicArrayListD.create());
            self.hardDriveInterfaceVector = Inheritance.upcast(@TypeOf(self.hardDriveInterfaceVector), BasicArrayListD.create());
            self.macInterfaceVector = Inheritance.upcast(@TypeOf(self.macInterfaceVector), BasicArrayListD.create());
            self.monitorInterfaceVector = Inheritance.upcast(@TypeOf(self.monitorInterfaceVector), BasicArrayListD.create());
            const pciFile: ?*FileReader = Inheritance.callStatic(FileReader, "create1", .{ filePath });
            lineNumberReader = Inheritance.callStatic(LineNumberReader, "create1", .{ pciFile });
            if (lineNumberReader == null) {
                const fileVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(SubDirectory.getInstance().?, "search", .{ filePath, Inheritance.callStatic(AbFile, "createAbFile", .{ FilePathData.getInstance().?.PATH_START }) }));
                if (!fileVector.?.isEmpty()) {
                    const file: ?*AbFile = Inheritance.cast(?*AbFile, Inheritance.call(fileVector.?, "get", .{ 0 }));
                    lineNumberReader = Inheritance.callStatic(LineNumberReader, "create1", .{ Inheritance.callStatic(FileReader, "create1", .{ file.?.getPath() }) });
                }
                if (lineNumberReader == null) {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("No Linux File Data"); break :exception error.Exception; }});
                }
            }
            if (lineNumberReader != null) {
                if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.OS })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("PCI File Found"), self, self.commonStrings.?.CONSTRUCTOR });
                }
                var nextLine: ?*String = Inheritance.upcast(?*String, lineNumberReader.?.readLine());
                while (lineNumberReader != null and nextLine != null) {
                    if (Inheritance.call(self, "isNextHardware", .{ nextLine })) {
                        break;
                    }
                    nextLine = Inheritance.upcast(@TypeOf(nextLine), lineNumberReader.?.readLine());
                }
                while (Inheritance.call(self, "isNextHardware", .{ nextLine })) {
                    const componentData: ?*StringMaker = StringMaker.create();
                    if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.OS })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Found Hardware Device: "), self.componentInterfaceVector.?.size()), self, self.commonStrings.?.CONSTRUCTOR });
                    }
                    _ = Inheritance.call(componentData.?, "append", .{ nextLine });
                    _ = Inheritance.call(componentData.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
                    nextLine = Inheritance.upcast(@TypeOf(nextLine), lineNumberReader.?.readLine());
                    const componentType: ?*String = Inheritance.upcast(?*String, Inheritance.call(PCComponentFactory.getInstance().?, "getComponentType", .{ nextLine }));
                    while (lineNumberReader != null) {
                        _ = Inheritance.call(componentData.?, "append", .{ nextLine });
                        _ = Inheritance.call(componentData.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
                        nextLine = Inheritance.upcast(@TypeOf(nextLine), lineNumberReader.?.readLine());
                        if (nextLine == null or Inheritance.call(self, "isNextHardware", .{ nextLine })) {
                            break;
                        }
                    }
                    const componentInterface: ?*HardwareComponentInterface = Inheritance.upcast(?*HardwareComponentInterface, Inheritance.call(PCComponentFactory.getInstance().?, "getInstance", .{ componentType, Object.toString(Object.of(componentData)) }));
                    if (componentInterface != null) {
                        _ = Inheritance.call(self.componentInterfaceVector.?, "add", .{ componentInterface });
                    }
                }
            } else {
                if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.OS })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Could not load PCI File"), self, self.commonStrings.?.CONSTRUCTOR });
                }
            }
            _ = lineNumberReader.?.close();
        }
        { // finally
            if (lineNumberReader != null) {
                _ = lineNumberReader.?.close();
            }
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
            _ = Inheritance.call(hardwareBuffer.?, "append", .{ String.literal("Component ") });
            _ = Inheritance.call(hardwareBuffer.?, "appendint", .{ index });
            _ = Inheritance.call(hardwareBuffer.?, "append", .{ String.literal(": \n") });
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
    

    pub fn isNextHardware(self: *Self, nextLine: ?*String) bool {
        _ = self;
        if (nextLine != null) {
            const index: i32 = Inheritance.call(nextLine.?, "indexOf", .{ String.literal("Bus") });
            if (index >= 0 and index < 4) {
                return true;
            }
        }
        return false;
    }
};

