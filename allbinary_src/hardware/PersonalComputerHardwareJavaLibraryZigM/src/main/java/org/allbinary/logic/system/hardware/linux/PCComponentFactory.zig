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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LogConfigTypeFactory = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.zig").LogConfigTypeFactory;
const LogConfigTypes = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypes.zig").LogConfigTypes;
const ComponentFactory = @import("org/allbinary/logic/system/hardware/components/ComponentFactory.zig").ComponentFactory;
const HardwareComponentInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.zig").HardwareComponentInterface;
const Bridge = @import("org/allbinary/logic/system/hardware/components/linux/Bridge.zig").Bridge;
const Ethernet = @import("org/allbinary/logic/system/hardware/components/linux/Ethernet.zig").Ethernet;
const HardDriveController = @import("org/allbinary/logic/system/hardware/components/linux/HardDriveController.zig").HardDriveController;
const Media = @import("org/allbinary/logic/system/hardware/components/linux/Media.zig").Media;
const PCI = @import("org/allbinary/logic/system/hardware/components/linux/PCI.zig").PCI;
const Unknown = @import("org/allbinary/logic/system/hardware/components/linux/Unknown.zig").Unknown;
const Usb = @import("org/allbinary/logic/system/hardware/components/linux/Usb.zig").Usb;
const Video = @import("org/allbinary/logic/system/hardware/components/linux/Video.zig").Video;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const PCComponentFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.linux.PCComponentFactory";
    logUtil: ?*LogUtil = null,
    componentFactory: ?*ComponentFactory = null,
    var instance: ?*PCComponentFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PCComponentFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.componentFactory = Inheritance.upcast(?*ComponentFactory, ComponentFactory.getInstance());
    }
    

    pub fn getInstance() ?*PCComponentFactory {
        return Inheritance.upcast(?*PCComponentFactory, PCComponentFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance2(self: *Self, component: ?*String, componentData: ?*String) ?*HardwareComponentInterface {
        { // try
            if (component != null) {
                if (Inheritance.call(component.?, "compareTo", .{ Object.toString(Object.of(self.componentFactory.?.ETHERNET)) }) == 0) {
                    return Inheritance.cast(?*HardwareComponentInterface, Inheritance.callStatic(Ethernet, "create1", .{ componentData }));
                } else if (Inheritance.call(component.?, "compareTo", .{ Object.toString(Object.of(self.componentFactory.?.BRIDGE)) }) == 0) {
                    return Inheritance.cast(?*HardwareComponentInterface, Inheritance.callStatic(Bridge, "create1", .{ componentData }));
                } else if (Inheritance.call(component.?, "compareTo", .{ Object.toString(Object.of(self.componentFactory.?.IDE)) }) == 0) {
                    return Inheritance.cast(?*HardwareComponentInterface, Inheritance.callStatic(HardDriveController, "create1", .{ componentData }));
                } else if (Inheritance.call(component.?, "compareTo", .{ Object.toString(Object.of(self.componentFactory.?.MULTIMEDIA)) }) == 0) {
                    return Inheritance.cast(?*HardwareComponentInterface, Inheritance.callStatic(Media, "create1", .{ componentData }));
                } else if (Inheritance.call(component.?, "compareTo", .{ Object.toString(Object.of(self.componentFactory.?.SCSI)) }) == 0) {
                    return Inheritance.cast(?*HardwareComponentInterface, Inheritance.callStatic(HardDriveController, "create1", .{ componentData }));
                } else if (Inheritance.call(component.?, "compareTo", .{ Object.toString(Object.of(self.componentFactory.?.USB)) }) == 0) {
                    return Inheritance.cast(?*HardwareComponentInterface, Inheritance.callStatic(Usb, "create1", .{ componentData }));
                } else if (Inheritance.call(component.?, "compareTo", .{ Object.toString(Object.of(self.componentFactory.?.VGA)) }) == 0) {
                    return Inheritance.cast(?*HardwareComponentInterface, Inheritance.callStatic(Video, "create1", .{ componentData }));
                } else if (Inheritance.call(component.?, "compareTo", .{ Object.toString(Object.of(self.componentFactory.?.PCI)) }) == 0) {
                    return Inheritance.cast(?*HardwareComponentInterface, Inheritance.callStatic(PCI, "create1", .{ componentData }));
                }
            }
            return Inheritance.cast(?*HardwareComponentInterface, Inheritance.callStatic(Unknown, "create1", .{ componentData }));
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.FACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET_INSTANCE, e });
//             }
//             return Inheritance.upcast(?*HardwareComponentInterface, Inheritance.callStatic(Unknown, "create1", .{ commonStrings.?.EXCEPTION }));
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
        } else if (Inheritance.call(component.?, "compareTo", .{ Object.toString(Object.of(self.componentFactory.?.PCI)) }) == 0) {
            return Inheritance.upcast(?*String, Object.toString(Object.of(self.componentFactory.?.PCI)));
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.componentFactory.?.UNKNOWN)));
    }
};

