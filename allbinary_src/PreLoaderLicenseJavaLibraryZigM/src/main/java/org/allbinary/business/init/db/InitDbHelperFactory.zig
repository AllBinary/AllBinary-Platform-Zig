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
// package org.allbinary.business.init.db

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AbeFactory = @import("org/allbinary/logic/system/loader/AbeFactory.zig").AbeFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const DatabaseConnectionInfoInterface = @import("org/allbinary/business/init/db/DatabaseConnectionInfoInterface.zig").DatabaseConnectionInfoInterface;

pub const InitDbHelperFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.init.db.InitDbHelperFactory";
    const CLASSNAME: ?*String = String.literal("org.allbinary.business.installer.InitDbCrypted");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws LicensingException
    pub fn getInstance2(abeClientInformation: ?*AbeClientInformationInterface, databaseConnectionInfoInterface: ?*DatabaseConnectionInfoInterface) ?Object {
        const params: []?Object = array_N65786: { const array_N65786_array = allocator.alloc(?Object, @intCast(1)) catch unreachable; @memset(array_N65786_array, null); break :array_N65786 array_N65786_array; };
        const classes: []?*anyopaque = array_N65841: { const array_N65841_array = allocator.alloc(?*anyopaque, @intCast(1)) catch unreachable; @memset(array_N65841_array, null); break :array_N65841 array_N65841_array; };
        classes[@intCast(0)] = Inheritance.upcast(@TypeOf(classes[@intCast(0)]), DatabaseConnectionInfoInterface);
        params[@intCast(0)] = Inheritance.cast(?Object, databaseConnectionInfoInterface);
        const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(AbeFactory.getInstance().?, "getInstance", .{ abeClientInformation, InitDbHelperFactory.CLASSNAME, classes, params }));
        return anyType;
    }
    

    // throws LicensingException
    pub fn getInstance(abeClientInformation: ?*AbeClientInformationInterface) ?Object {
        const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(AbeFactory.getInstance().?, "getInstance", .{ abeClientInformation, InitDbHelperFactory.CLASSNAME, null, null }));
        return anyType;
    }
};

