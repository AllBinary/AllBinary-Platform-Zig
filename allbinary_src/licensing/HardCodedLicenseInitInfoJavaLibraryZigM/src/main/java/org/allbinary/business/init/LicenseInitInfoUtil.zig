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
// package org.allbinary.business.init

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LicenseInitInfo = @import("org/allbinary/business/init/LicenseInitInfo.zig").LicenseInitInfo;

pub const LicenseInitInfoUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.init.LicenseInitInfoUtil";
    INITFILENAME: ?*String = null,
    ABOUT: ?*String = null,
    PRIVACY_POLICY: ?*String = null,
    OFFICIAL_ALLBINARY_SERVICES_SERVER: ?*String = null,
    var instance: ?*LicenseInitInfoUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LicenseInitInfoUtil.create();
    }

    fn initFields(this: *Self) void {
        this.INITFILENAME = String.literal("licenseinitdata.dat");
        this.ABOUT = String.literal("about");
        this.PRIVACY_POLICY = String.literal("privacy_policy");
        this.OFFICIAL_ALLBINARY_SERVICES_SERVER = String.literal("https://services.allbinary.com/LicServ/serverssl.php");
    }
    

    pub fn getInstance() ?*LicenseInitInfoUtil {
        return Inheritance.upcast(?*LicenseInitInfoUtil, LicenseInitInfoUtil.instance);
    }
    

    pub fn setFilePath(self: *Self, filePath: ?*String) void {
        _ = filePath;
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn write(self: *Self, initData: ?*LicenseInitInfo) void {
        _ = initData;
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
    }
    

    // throws Exception
    pub fn read(self: *Self) ?*LicenseInitInfo {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return Inheritance.upcast(?*LicenseInitInfo, Inheritance.call(self, "readAgain", .{ 0 }));
    }
    

    // throws Exception
    pub fn readAgain(self: *Self, initializeCounter: i32) ?*LicenseInitInfo {
        _ = initializeCounter;
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const licenseInitInfo: ?*LicenseInitInfo = LicenseInitInfo.create();
        _ = licenseInitInfo.?.clearServers();
        _ = Inheritance.call(licenseInitInfo.?, "addServer", .{ self.OFFICIAL_ALLBINARY_SERVICES_SERVER });
        return licenseInitInfo;
    }
};

