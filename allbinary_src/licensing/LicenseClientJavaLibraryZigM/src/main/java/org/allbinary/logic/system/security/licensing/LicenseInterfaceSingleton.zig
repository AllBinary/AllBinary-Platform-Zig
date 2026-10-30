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
const AbeLicenseInterface = @import("org/allbinary/logic/system/security/licensing/AbeLicenseInterface.zig").AbeLicenseInterface;
const AbeNoLicense = @import("org/allbinary/logic/system/security/licensing/AbeNoLicense.zig").AbeNoLicense;

pub const LicenseInterfaceSingleton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton";
    var licenseInterface: ?*AbeLicenseInterface = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        licenseInterface = Inheritance.upcast(?*AbeLicenseInterface, AbeNoLicense.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*AbeLicenseInterface {
        return Inheritance.upcast(?*AbeLicenseInterface, LicenseInterfaceSingleton.licenseInterface);
    }
    

    pub fn init(licenseInterface_: ?*AbeLicenseInterface) void {
        if (licenseInterface_ != null) {
            LicenseInterfaceSingleton.licenseInterface = Inheritance.upcast(@TypeOf(LicenseInterfaceSingleton.licenseInterface), licenseInterface_);
        }
    }
};

