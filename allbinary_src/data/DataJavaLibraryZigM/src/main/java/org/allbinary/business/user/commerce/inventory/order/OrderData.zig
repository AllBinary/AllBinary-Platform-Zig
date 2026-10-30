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
// package org.allbinary.business.user.commerce.inventory.order

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const OrderData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.order.OrderData";
    pub const ORDERS: ?*String = String.literal("ORDERS");
    pub const ORDER: ?*String = String.literal("ORDER");
    pub const ID: ?*String = String.literal("ORDER_ID");
    pub const CUSTOMERCOMMENT: ?*String = String.literal("ORDER_CUSTOMER_COMMENT");
    pub const CUSTOMERCANCELCOMMENT: ?*String = String.literal("ORDER_CUSTOMER_CANCEL_COMMENT");
    pub const STORECOMMENT: ?*String = String.literal("ORDER_STORE_COMMENT");
    pub const STORECANCELCOMMENT: ?*String = String.literal("ORDER_STORE_CANCEL_COMMENT");

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

