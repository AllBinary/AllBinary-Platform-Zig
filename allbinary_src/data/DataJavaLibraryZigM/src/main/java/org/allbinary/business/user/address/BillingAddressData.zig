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

pub const BillingAddressData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.address.BillingAddressData";
    pub const MAX: i32 = 255;
    pub const MIN: i32 = 0;
    pub const MULTIPLE: ?*String = String.literal("BILLINGADDRESSES");
    pub const STATES: ?*String = String.literal("BILLINGADDRESS_STATES");
    pub const SETTOSHIPPINGADDRESS: ?*String = String.literal("Set To Shipping Address");
    pub const SELECT: ?*String = String.literal("Select Billing Address");
    pub const SETTOSHIPPINGADDRESSNAME: ?*String = String.literal("SETTOSHIPPINGADDRESS");
    pub const BILLINGADDRESSES: ?*String = String.literal("BILLINGADDRESSES");
    pub const BILLINGADDRESS: ?*String = String.literal("BILLINGADDRESS");
    pub const ID: ?*String = String.literal("BILLINGADDRESS_ID");
    pub const ADDRESS: ?*String = String.literal("BILLINGADDRESS_ADDRESS");
    pub const NAME: ?*String = String.literal("BILLINGADDRESS_NAME");
    pub const STREET: ?*String = String.literal("BILLINGADDRESS_STREET");
    pub const CITY: ?*String = String.literal("BILLINGADDRESS_CITY");
    pub const STATE: ?*String = String.literal("BILLINGADDRESS_STATE");
    pub const CODE: ?*String = String.literal("BILLINGADDRESS_CODE");
    pub const COUNTRY: ?*String = String.literal("BILLINGADDRESS_COUNTRY");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

