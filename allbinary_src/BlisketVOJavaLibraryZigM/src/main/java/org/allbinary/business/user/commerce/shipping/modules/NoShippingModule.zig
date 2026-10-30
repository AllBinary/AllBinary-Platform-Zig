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
// package org.allbinary.business.user.commerce.shipping.modules

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const OrderInterface = @import("org/allbinary/business/user/commerce/inventory/order/OrderInterface.zig").OrderInterface;
const Money = @import("org/allbinary/business/user/commerce/money/Money.zig").Money;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ShippingInterface = @import("org/allbinary/business/user/commerce/shipping/modules/ShippingInterface.zig").ShippingInterface;

pub const NoShippingModule = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.shipping.modules.NoShippingModule";
    pub const java_interfaces = .{ ShippingInterface };
    commonStrings: ?*CommonStrings = null,
    name: ?*String = null,
    description: ?*String = null,
    // Implements ShippingInterface

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.name = String.literal("No Shipping");
        this.description = String.literal("This shipping method is for items that are not shipped.");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getCost(self: *Self, order: ?*OrderInterface) ?*Money {
        _ = order;
        _ = self;
        return Money.create();
    }
    

    pub fn getDescription(self: *Self) ?*String {
        return self.description;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
};

