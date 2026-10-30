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
// package org.allbinary.logic.system.security.licensing.registration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const SpecialMessageUtil = @import("org/allbinary/canvas/SpecialMessageUtil.zig").SpecialMessageUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const RegistrationConfiguration = @import("org/allbinary/logic/system/security/licensing/registration/RegistrationConfiguration.zig").RegistrationConfiguration;
const XmlRpcRemoteLicenseRegistrationClient = @import("org/allbinary/logic/system/security/licensing/registration/XmlRpcRemoteLicenseRegistrationClient.zig").XmlRpcRemoteLicenseRegistrationClient;

pub const LicenseRegistrationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn process(abeClientInformation: ?*AbeClientInformationInterface, registrationId: ?*String) void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        { // try
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(CommonLabels.getInstance().?.START_LABEL, String.literal("License Registration")), String.literal("LicenseRegistrationUtil"), commonStrings.?.PROCESS });
            const registrationConfiguration: ?*RegistrationConfiguration = Inheritance.upcast(?*RegistrationConfiguration, RegistrationConfiguration.getInstance());
            _ = Inheritance.call(registrationConfiguration.?, "setRegistrationCode", .{ registrationId });
            _ = registrationConfiguration.?.write();
            const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, abeClientInformation.?.toHashtable());
            _ = Inheritance.call(hashtable.?, "put", .{ RegistrationConfiguration.getInstance().?.NAME, registrationId });
            _ = Inheritance.call(hashtable.?, "put", .{ String.literal("message"), Inheritance.receiverOf(SpecialMessageUtil.getInstance().?, "get").get() });
            _ = Inheritance.call(Inheritance.callStatic(XmlRpcRemoteLicenseRegistrationClient, "create1", .{ abeClientInformation }), "get", .{ hashtable });
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("License Registration Exception"), String.literal("LicenseRegistrationUtil"), String.literal("License Registration"), e });
    }
};

