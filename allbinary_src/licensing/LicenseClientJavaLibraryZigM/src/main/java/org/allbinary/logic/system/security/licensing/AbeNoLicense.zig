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
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AbeLicenseInterface = @import("org/allbinary/logic/system/security/licensing/AbeLicenseInterface.zig").AbeLicenseInterface;
const LicenseType = @import("org/allbinary/logic/system/security/licensing/LicenseType.zig").LicenseType;
const LicenseTypeFactory = @import("org/allbinary/logic/system/security/licensing/LicenseTypeFactory.zig").LicenseTypeFactory;

pub const AbeNoLicense = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.AbeNoLicense";
    pub const java_interfaces = .{ AbeLicenseInterface };
    serverVector: ?*BasicArrayList = null,
    // Implements AbeLicenseInterface
    var abeNoLicense: ?*AbeNoLicense = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        abeNoLicense = AbeNoLicense.create();
    }

    fn initFields(this: *Self) void {
        this.serverVector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*AbeNoLicense {
        return Inheritance.upcast(?*AbeNoLicense, AbeNoLicense.abeNoLicense);
    }
    

    pub fn hasKey(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getKey(self: *Self, keyName: ?*String) ?*String {
        _ = keyName;
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn getLicenseId(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn getSpecial(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn getServers(self: *Self) ?*BasicArrayList {
        return self.serverVector;
    }
    

    pub fn isValid(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getLicenseType(self: *Self) ?*LicenseType {
        _ = self;
        return Inheritance.upcast(?*LicenseType, LicenseTypeFactory.getInstance().?.UNKNOWN);
    }
};

