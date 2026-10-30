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
// package org.allbinary.logic.system.security

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const AbeLicenseInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/AbeLicenseInterfaceFactory.zig").AbeLicenseInterfaceFactory;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;

pub const AbKeys = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.AbKeys";
    logUtil: ?*LogUtil = null,
    var instance: ?*AbKeys = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AbKeys.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*AbKeys {
        return Inheritance.upcast(?*AbKeys, AbKeys.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws LicensingException
    pub fn getKey(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, keyName: ?*String) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Getting Key: "), keyName), self, String.literal("getKey") });
            if (Inheritance.call(keyName.?, "compareTo", .{ String.literal("DirectX 8") }) == 0 or Inheritance.call(keyName.?, "compareTo", .{ String.literal("DirectX") }) == 0 or Inheritance.call(keyName.?, "compareTo", .{ String.literal("Low Level") }) == 0 or Inheritance.call(keyName.?, "compareTo", .{ String.literal("System Drivers") }) == 0) {
                return String.literal("Temp For Input Library");
            }
            return Inheritance.upcast(?*String, Inheritance.call(Inheritance.call(AbeLicenseInterfaceFactory.getInstance().?, "getLicenseInstance", .{ abeClientInformation }).?, "getKey", .{ keyName }));
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Licensing Failure"), self, String.literal("getKey()"), e });
//             std.debug.panic("{any}", .{exception: { _ = String.literal("Unknown License Failure"); break :exception error.LicensingException; }});
    }
};

