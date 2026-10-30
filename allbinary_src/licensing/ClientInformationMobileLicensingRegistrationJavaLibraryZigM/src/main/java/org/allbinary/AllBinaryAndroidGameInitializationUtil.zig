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
// package org.allbinary

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LicenseInitInfoUtil = @import("org/allbinary/business/init/LicenseInitInfoUtil.zig").LicenseInitInfoUtil;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const PartnerIdentifierFileUtil = @import("org/allbinary/logic/system/security/licensing/PartnerIdentifierFileUtil.zig").PartnerIdentifierFileUtil;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const AllBinaryAndroidGameInitializationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.AllBinaryAndroidGameInitializationUtil";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn init() void {
        const resourceUtil: ?*ResourceUtil = Inheritance.upcast(?*ResourceUtil, ResourceUtil.getInstance());
        const androidResources: ?*AndroidResources = Inheritance.upcast(?*AndroidResources, AndroidResources.getInstance());
        const licenseInitInfoUtil: ?*LicenseInitInfoUtil = Inheritance.upcast(?*LicenseInitInfoUtil, LicenseInitInfoUtil.getInstance());
        _ = Inheritance.call(resourceUtil.?, "addResource", .{ licenseInitInfoUtil.?.INITFILENAME, Inheritance.callStatic(Integer, "valueOf", .{ androidResources.?.raw.?.licenseinitdata }) });
        _ = Inheritance.call(resourceUtil.?, "addResource", .{ PartnerIdentifierFileUtil.getInstance().?.FILE_NAME, Inheritance.callStatic(Integer, "valueOf", .{ androidResources.?.raw.?.partner }) });
    }
};

