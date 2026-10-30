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
// package org.allbinary.data.tables.user.address.shipping

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StreetAddressesEntity = @import("org/allbinary/data/tables/user/address/StreetAddressesEntity.zig").StreetAddressesEntity;

pub const ShippingAddressesEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity";
    base: StreetAddressesEntity = undefined,
    TABLENAME: ?*String = null,

    fn initFields(this: *Self) void {
        this.TABLENAME = String.literal("shipping");
    }
    

    pub fn create1(userName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(StreetAddressesEntity, "create1", .{ userName }).*;
        this.initFields();
        _ = Inheritance.call(this, "setTableName", .{ this.TABLENAME });
        Inheritance.bindOverrides(this);
        return this;
    }
};

