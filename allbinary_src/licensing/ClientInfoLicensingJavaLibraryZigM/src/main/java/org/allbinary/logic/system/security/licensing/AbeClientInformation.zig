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
const LicenseInitInfo = @import("org/allbinary/business/init/LicenseInitInfo.zig").LicenseInitInfo;
const LicenseInitInfoUtil = @import("org/allbinary/business/init/LicenseInitInfoUtil.zig").LicenseInitInfoUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const OperatingSystemFactory = @import("org/allbinary/logic/system/os/OperatingSystemFactory.zig").OperatingSystemFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ClientInformation = @import("org/allbinary/logic/system/security/licensing/ClientInformation.zig").ClientInformation;

// This is the information sent to the license server
pub const AbeClientInformation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.AbeClientInformation";
    base: ClientInformation = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create4(name: ?*String, version: ?*String, specialName: ?*String, shortName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ClientInformation, "create4", .{ name, version, specialName, shortName }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self) void {
        { // try
            _ = Inheritance.call(self, "setOperatingSystemInterface", .{ Inheritance.receiverOf(OperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance() });
            const licenseInitInfo: ?*LicenseInitInfo = Inheritance.upcast(?*LicenseInitInfo, Inheritance.receiverOf(LicenseInitInfoUtil.getInstance().?, "read").read());
            _ = Inheritance.call(self, "setLicenseId", .{ licenseInitInfo.?.getLicenseId() });
            _ = Inheritance.call(self, "setLicenseServers", .{ licenseInitInfo.?.getServerList() });
            const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
            if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ Inheritance.receiver(self, "getLicenseId").getLicenseId() })) {
                const NONE: ?*String = String.literal("No License Id");
                _ = Inheritance.call(self, "setLicenseId", .{ NONE });
            }
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Special Name: ") }).?, "append", .{ Inheritance.receiver(self, "getSpecialName").getSpecialName() }))), self, commonStrings.?.CONSTRUCTOR });
        }
        // catch (Exception e):
//             const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
//             _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.CONSTRUCTOR, e });
    }
};

