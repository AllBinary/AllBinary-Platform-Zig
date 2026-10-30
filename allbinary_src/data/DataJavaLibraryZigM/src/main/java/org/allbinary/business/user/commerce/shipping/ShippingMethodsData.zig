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
// package org.allbinary.business.user.commerce.shipping

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const ShippingMethodsData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.shipping.ShippingMethodsData";
    pub const SHIPPINGMETHODSORDERSUMMARIES: ?*String = String.literal("SHIPPINGMETHODS_ORDERSUMMARIES");
    pub const SHIPPINGMETHODORDERSUMMARY: ?*String = String.literal("SHIPPINGMETHOD_ORDERSUMMARY");
    pub const SHIPPINGMETHODS: ?*String = String.literal("SHIPPINGMETHODS");
    pub const NAME: ?*String = String.literal("SHIPPINGMETHODS_NAME");
    pub const SHIPPINGCOST: ?*String = String.literal("SHIPPINGMETHOD_SHIPPINGCOST");
    pub const TAXRATE: ?*String = String.literal("SHIPPINGMETHOD_TAXRATE");
    pub const SUBTOTAL: ?*String = String.literal("SHIPPINGMETHOD_SUBTOTAL");
    pub const TAX: ?*String = String.literal("SHIPPINGMETHOD_TAX");
    pub const TOTAL: ?*String = String.literal("SHIPPINGMETHOD_TOTAL");

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

