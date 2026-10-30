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
// package org.allbinary.business.user.address

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const ShippingAddressData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.address.ShippingAddressData";
    pub const SETTOBILLINGADDRESS: ?*String = String.literal("Set To Billing Address");
    pub const SELECT: ?*String = String.literal("Select Shipping Address");
    pub const SELECTNAME: ?*String = String.literal("SELECTSHIPPINGADDRESS");
    pub const MULTIPLE: ?*String = String.literal("SHIPPINGADDRESSES");
    pub const SHIPPINGADDRESSES: ?*String = String.literal("SHIPPINGADDRESSES");
    pub const SHIPPINGADDRESS: ?*String = String.literal("SHIPPINGADDRESS");
    pub const ID: ?*String = String.literal("SHIPPINGADDRESS_ID");
    pub const ADDRESS: ?*String = String.literal("SHIPPINGADDRESS_ADDRESS");
    pub const NAME: ?*String = String.literal("SHIPPINGADDRESS_NAME");
    pub const STREET: ?*String = String.literal("SHIPPINGADDRESS_STREET");
    pub const CITY: ?*String = String.literal("SHIPPINGADDRESS_CITY");
    pub const STATE: ?*String = String.literal("SHIPPINGADDRESS_STATE");
    pub const CODE: ?*String = String.literal("SHIPPINGADDRESS_CODE");
    pub const COUNTRY: ?*String = String.literal("SHIPPINGADDRESS_COUNTRY");
    pub const TAX: ?*String = String.literal("SHIPPINGADDRESS_TAX");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

