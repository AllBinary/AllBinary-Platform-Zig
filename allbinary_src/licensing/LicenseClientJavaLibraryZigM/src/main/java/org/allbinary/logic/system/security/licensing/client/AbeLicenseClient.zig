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
// package org.allbinary.logic.system.security.licensing.client

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LicenseInitInfo = @import("org/allbinary/business/init/LicenseInitInfo.zig").LicenseInitInfo;
const LicenseInitInfoUtil = @import("org/allbinary/business/init/LicenseInitInfoUtil.zig").LicenseInitInfoUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const XmlRpcAbeClient = @import("org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient.zig").XmlRpcAbeClient;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const AbeLicenseInterface = @import("org/allbinary/logic/system/security/licensing/AbeLicenseInterface.zig").AbeLicenseInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const XmlRpcAbeLicenseRetrievalClient = @import("org/allbinary/logic/system/security/licensing/client/XmlRpcAbeLicenseRetrievalClient.zig").XmlRpcAbeLicenseRetrievalClient;

pub const AbeLicenseClient = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.client.AbeLicenseClient";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    MINSERVERS: i32 = 0,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.MINSERVERS = 3;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn get(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) ?*AbeLicenseInterface {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.GET });
            const xmlRpcAbeLicenseClient: ?*XmlRpcAbeClient = Inheritance.upcast(?*XmlRpcAbeClient, Inheritance.callStatic(XmlRpcAbeLicenseRetrievalClient, "create1", .{ abeClientInformation }));
            const abeLicenseInterface: ?*AbeLicenseInterface = Inheritance.cast(?*AbeLicenseInterface, Inheritance.call(xmlRpcAbeLicenseClient.?, "get", .{ null }));
            const licenseId: ?*String = Inheritance.upcast(?*String, abeLicenseInterface.?.getLicenseId());
            const servers: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, abeLicenseInterface.?.getServers());
            var isNewLicenseId: bool = false;
            var isBetterServerList: bool = false;
            const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
            if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ abeClientInformation.?.getLicenseId() }) and !Inheritance.call(abeClientInformation.?, "isSameId", .{ licenseId })) {
                isNewLicenseId = true;
            }
            if (servers.?.size() >= self.MINSERVERS and Inheritance.call(abeClientInformation.?, "isLargerOrDifferentServerList", .{ servers })) {
                isBetterServerList = true;
            }
            if (isBetterServerList or isNewLicenseId) {
                const initInfo: ?*LicenseInitInfo = Inheritance.upcast(?*LicenseInitInfo, Inheritance.receiverOf(LicenseInitInfoUtil.getInstance().?, "read").read());
                _ = Inheritance.call(initInfo.?, "setLicenseId", .{ licenseId });
                _ = Inheritance.call(initInfo.?, "setServerList", .{ servers });
                _ = Inheritance.call(LicenseInitInfoUtil.getInstance().?, "write", .{ initInfo });
                _ = abeClientInformation.?.init();
            }
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END, self, self.commonStrings.?.GET });
            return abeLicenseInterface;
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
};

