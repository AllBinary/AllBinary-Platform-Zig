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
// package org.allbinary.logic.system.security.licensing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const IOException = @import("java/io/IOException.zig").IOException;
const Calendar = @import("java/util/Calendar.zig").Calendar;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbeLicenseClient = @import("org/allbinary/logic/system/security/licensing/client/AbeLicenseClient.zig").AbeLicenseClient;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AbeClientInformationData = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationData.zig").AbeClientInformationData;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const AbeLicenseInterface = @import("org/allbinary/logic/system/security/licensing/AbeLicenseInterface.zig").AbeLicenseInterface;
const AbeNoLicense = @import("org/allbinary/logic/system/security/licensing/AbeNoLicense.zig").AbeNoLicense;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;

pub const AbeLicenseInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    time: i64 = 0,
    check: bool = false,
    checkPeriod: i32 = 0,
    abeLicenseInterface: ?*AbeLicenseInterface = null,
    var SINGLETON: ?*AbeLicenseInterfaceFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = AbeLicenseInterfaceFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.time = 0;
        this.check = false;
        this.checkPeriod = 36000000;
        this.abeLicenseInterface = null;
    }
    

    pub fn getInstance() ?*AbeLicenseInterfaceFactory {
        return Inheritance.upcast(?*AbeLicenseInterfaceFactory, AbeLicenseInterfaceFactory.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws LicensingException
    pub fn getLicenseInstance(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) ?*AbeLicenseInterface {
        if (self.isTimeToGetKey()) {
            return Inheritance.upcast(?*AbeLicenseInterface, Inheritance.call(self, "get", .{ abeClientInformation }));
        } else {
            return self.abeLicenseInterface;
        }
    }
    

    // throws LicensingException
    pub fn get(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) ?*AbeLicenseInterface {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Getting Keys"), self, self.commonStrings.?.GET });
            self.abeLicenseInterface = Inheritance.upcast(@TypeOf(self.abeLicenseInterface), AbeNoLicense.getInstance());
            const licenseClient: ?*AbeLicenseClient = AbeLicenseClient.create();
            self.abeLicenseInterface = Inheritance.upcast(@TypeOf(self.abeLicenseInterface), Inheritance.call(licenseClient.?, "get", .{ abeClientInformation }));
            if (self.abeLicenseInterface != null) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Default Key: "), Inheritance.call(self.abeLicenseInterface.?, "getKey", .{ AbeClientInformationData.getInstance().?.KEY })), self, self.commonStrings.?.GET });
            }
            return self.abeLicenseInterface;
        }
        // catch (IOException e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Licensing IO Error"), self, self.commonStrings.?.GET, e });
//             std.debug.panic("{any}", .{exception: { _ = String.literal("License Server Connection Error"); break :exception error.LicensingException; }});
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Licensing Failure"), self, self.commonStrings.?.GET, e });
//             std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Unknown License Failure: "), String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name)); break :exception error.LicensingException; }});
    }
    

    pub fn isTimeToGetKey(self: *Self) bool {
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const currentTime: i64 = calendar.?.getTimeInMillis();
        if (self.abeLicenseInterface == null or Object.same(self.abeLicenseInterface, AbeNoLicense.getInstance()) or !self.abeLicenseInterface.?.hasKey() or self.isCheck() or currentTime - @as(i64, @intCast(self.checkPeriod)) > self.time) {
            self.abeLicenseInterface = null;
            self.time = currentTime;
            return true;
        } else {
            return false;
        }
    }
    

    pub fn setCheck(self: *Self, check: bool) void {
        self.check = check;
    }
    

    pub fn isCheck(self: *Self) bool {
        return self.check;
    }
};

