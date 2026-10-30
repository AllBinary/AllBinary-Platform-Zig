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
// package org.allbinary.logic.system.os.linux

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LogConfigTypeFactory = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.zig").LogConfigTypeFactory;
const LogConfigTypes = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypes.zig").LogConfigTypes;
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;
const NoOperatingSystem = @import("org/allbinary/logic/system/os/NoOperatingSystem.zig").NoOperatingSystem;
const OperatingSystems = @import("org/allbinary/logic/system/os/OperatingSystems.zig").OperatingSystems;
const SystemProperties = @import("org/allbinary/logic/system/os/SystemProperties.zig").SystemProperties;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LinuxOS = @import("org/allbinary/logic/system/os/linux/LinuxOS.zig").LinuxOS;

pub const LinuxOperatingSystemFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.os.linux.LinuxOperatingSystemFactory";
    logUtil: ?*LogUtil = null,
    var instance: ?*LinuxOperatingSystemFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LinuxOperatingSystemFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*LinuxOperatingSystemFactory {
        return Inheritance.upcast(?*LinuxOperatingSystemFactory, LinuxOperatingSystemFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getOperatingSystemInstance(self: *Self) ?*GenericOperatingSystem {
        _ = self;
        { // try
            const operatingSystems: ?*OperatingSystems = Inheritance.upcast(?*OperatingSystems, OperatingSystems.getInstance());
            const osName: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(SystemProperties.getInstance().?, "getName").getName());
            var operatingSystemInterface: ?*GenericOperatingSystem = null;
            if (Inheritance.call(osName.?, "compareTo", .{ operatingSystems.?.LINUX }) == 0) {
                operatingSystemInterface = Inheritance.upcast(@TypeOf(operatingSystemInterface), LinuxOS.create());
            } else {
                if (operatingSystems.?.isUnknownSpecificOSAllowed()) {
                    operatingSystemInterface = Inheritance.upcast(@TypeOf(operatingSystemInterface), LinuxOS.create());
                } else {
                    std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Specific Linux OS Not Supported: "), osName); break :exception error.Exception; }});
                }
            }
            return operatingSystemInterface;
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.FACTORYERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET_INSTANCE, e });
//             }
//             return Inheritance.upcast(?*GenericOperatingSystem, NoOperatingSystem.NO_OPERATING_SYSTEM);
    }
};

