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
// package org.allbinary.business.installer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DatabaseConnectionInfoInterface = @import("org/allbinary/business/init/db/DatabaseConnectionInfoInterface.zig").DatabaseConnectionInfoInterface;
const InitDbHelperFactory = @import("org/allbinary/business/init/db/InitDbHelperFactory.zig").InitDbHelperFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const InitDb = @import("org/allbinary/business/installer/InitDb.zig").InitDb;

//Warning you must have sql root access
pub const DynamicInitDb = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.installer.DynamicInitDb";
    base: InitDb = undefined,
    

    pub fn create1(abeClientInformation: ?*AbeClientInformationInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = InitDb.create().*;
        _ = Inheritance.call(this, "setHelper", .{ Inheritance.callStatic(InitDbHelperFactory, "getInstance", .{ abeClientInformation }) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create2(abeClientInformation: ?*AbeClientInformationInterface, databaseConnectionInfoInterface: ?*DatabaseConnectionInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = InitDb.create().*;
        _ = Inheritance.call(this, "setHelper", .{ Inheritance.callStatic(InitDbHelperFactory, "getInstance", .{ abeClientInformation, databaseConnectionInfoInterface }) });
        Inheritance.bindOverrides(this);
        return this;
    }
};

