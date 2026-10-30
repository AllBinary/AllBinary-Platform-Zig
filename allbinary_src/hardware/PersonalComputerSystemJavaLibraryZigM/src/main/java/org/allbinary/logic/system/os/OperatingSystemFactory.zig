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
// package org.allbinary.logic.system.os

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Log = @import("org/allbinary/logic/communication/log/Log.zig").Log;
const LogFactory = @import("org/allbinary/logic/communication/log/LogFactory.zig").LogFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LogConfigTypeFactory = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.zig").LogConfigTypeFactory;
const LogConfigTypes = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypes.zig").LogConfigTypes;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const LinuxOperatingSystemFactory = @import("org/allbinary/logic/system/os/linux/LinuxOperatingSystemFactory.zig").LinuxOperatingSystemFactory;
const SolarisOperatingSystemFactory = @import("org/allbinary/logic/system/os/solaris/SolarisOperatingSystemFactory.zig").SolarisOperatingSystemFactory;
const WindowsOperatingSystemFactory = @import("org/allbinary/logic/system/os/windows/WindowsOperatingSystemFactory.zig").WindowsOperatingSystemFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;
const NoOperatingSystem = @import("org/allbinary/logic/system/os/NoOperatingSystem.zig").NoOperatingSystem;
const OperatingSystems = @import("org/allbinary/logic/system/os/OperatingSystems.zig").OperatingSystems;
const SystemProperties = @import("org/allbinary/logic/system/os/SystemProperties.zig").SystemProperties;
const System = @import("java/lang/System.zig").System;

pub const OperatingSystemFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.os.OperatingSystemFactory";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    genericOperatingSystem: ?*GenericOperatingSystem = null,
    hasDetected: bool = false,
    var instance: ?*OperatingSystemFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OperatingSystemFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.genericOperatingSystem = Inheritance.upcast(?*GenericOperatingSystem, NoOperatingSystem.NO_OPERATING_SYSTEM);
        this.hasDetected = false;
    }
    

    pub fn getInstance() ?*OperatingSystemFactory {
        return Inheritance.upcast(?*OperatingSystemFactory, OperatingSystemFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getOperatingSystemInstance(self: *Self) ?*GenericOperatingSystem {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const operatingSystems: ?*OperatingSystems = Inheritance.upcast(?*OperatingSystems, OperatingSystems.getInstance());
            const systemProperties: ?*SystemProperties = Inheritance.upcast(?*SystemProperties, SystemProperties.getInstance());
            const osName: ?*String = Inheritance.upcast(?*String, systemProperties.?.getName());
            const osArch: ?*String = Inheritance.upcast(?*String, systemProperties.?.getArch()); _ = osArch;
            const osVersion: ?*String = Inheritance.upcast(?*String, systemProperties.?.getVersion()); _ = osVersion;
            if (!self.hasDetected) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("osName: "), osName), self, self.commonStrings.?.GET_INSTANCE });
                self.hasDetected = true;
                if (Inheritance.call(osName.?, "indexOf", .{ operatingSystems.?.LINUX }) >= 0) {
                    if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.FACTORYERROR })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Found a Linux OS"), self, self.commonStrings.?.GET_INSTANCE });
                    }
                    self.genericOperatingSystem = Inheritance.upcast(@TypeOf(self.genericOperatingSystem), Inheritance.receiverOf(LinuxOperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance());
                } else if (Inheritance.call(osName.?, "indexOf", .{ operatingSystems.?.WINDOWS }) >= 0) {
                    if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.FACTORYERROR })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Found a Windows OS"), self, self.commonStrings.?.GET_INSTANCE });
                    }
                    self.genericOperatingSystem = Inheritance.upcast(@TypeOf(self.genericOperatingSystem), Inheritance.receiverOf(WindowsOperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance());
                } else if (Inheritance.call(osName.?, "indexOf", .{ operatingSystems.?.SOLARIS }) >= 0) {
                    if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.FACTORYERROR })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Found a Solaris OS"), self, self.commonStrings.?.GET_INSTANCE });
                    }
                    self.genericOperatingSystem = Inheritance.upcast(@TypeOf(self.genericOperatingSystem), Inheritance.receiverOf(SolarisOperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance());
                } else {
                    std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("OS Not Supported: ") }).?, "append", .{ osName }))); break :exception error.Exception; }});
                }
                const log: ?*Log = Inheritance.upcast(?*Log, Inheritance.callStatic(LogFactory, "getInstanceF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("OperatingSystem Info: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ self.genericOperatingSystem }) }))), self, self.commonStrings.?.GET_INSTANCE }));
                _ = std.debug.print("{s}\n", .{String.text(Object.toString(Object.of(log)))});
                _ = Inheritance.call(self.logUtil.?, "putL", .{ log });
            }
            return self.genericOperatingSystem;
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.FACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.GET_INSTANCE, e });
//             }
//             return Inheritance.upcast(?*GenericOperatingSystem, NoOperatingSystem.NO_OPERATING_SYSTEM);
    }
};

