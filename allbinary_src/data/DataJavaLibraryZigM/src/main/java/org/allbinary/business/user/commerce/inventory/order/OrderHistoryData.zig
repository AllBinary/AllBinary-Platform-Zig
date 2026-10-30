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

pub const OrderHistoryData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.order.OrderHistoryData";
    pub var MAXIDLEN: i32 = 19;
    pub const DATEDELTA: ?*String = String.literal("DATE_DELTA");
    pub const DATETYPE: ?*String = String.literal("DATE_TYPE");
    pub const TYPELONG: ?*String = String.literal("TYPE_LONG");
    pub const TYPECAESAR: ?*String = String.literal("TYPE_CAESAR");
    pub const TODATE: ?*String = String.literal("TO_DATE");
    pub const FROMHOUR: ?*String = String.literal("FROM_HOUR");
    pub const FROMDAY: ?*String = String.literal("FROM_DAY");
    pub const FROMMONTH: ?*String = String.literal("FROM_MONTH");
    pub const FROMYEAR: ?*String = String.literal("FROM_YEAR");
    pub const TOHOUR: ?*String = String.literal("TO_HOUR");
    pub const TODAY: ?*String = String.literal("TO_DAY");
    pub const TOMONTH: ?*String = String.literal("TO_MONTH");
    pub const TOYEAR: ?*String = String.literal("TO_YEAR");
    pub const ORDERHISTORY: ?*String = String.literal("ORDERHISTORY");
    pub const SHIPPEDDATE: ?*String = String.literal("ORDERHISTORY_SHIPPED_DATE");
    pub const ORDERDATE: ?*String = String.literal("ORDERHISTORY_ORDER_DATE");
    pub const TRANSDATE: ?*String = String.literal("ORDERHISTORY_TRANS_DATE");
    pub const CANCELDATE: ?*String = String.literal("ORDERHISTORY_CANCEL_DATE");
    pub const SHIPPEDDATEFORMATTED: ?*String = String.literal("ORDERHISTORY_SHIPPED_DATE_FORMATTED");
    pub const ORDERDATEFORMATTED: ?*String = String.literal("ORDERHISTORY_ORDER_DATE_FORMATTED");
    pub const TRANSDATEFORMATTED: ?*String = String.literal("ORDERHISTORY_TRANS_DATE_FORMATTED");
    pub const CANCELDATEFORMATTED: ?*String = String.literal("ORDERHISTORY_CANCEL_DATE_FORMATTED");
    pub const SUBTOTAL: ?*String = String.literal("ORDERHISTORY_SUB_TOTAL");
    pub const SHIPPINGCOST: ?*String = String.literal("ORDERHISTORY_SHIPPING_COST");
    pub const TAX: ?*String = String.literal("ORDERHISTORY_TAX");
    pub const TOTAL: ?*String = String.literal("ORDERHISTORY_TOTAL");
    pub const CANCELINFO: ?*String = String.literal("ORDERHISTORY_CANCEL_INFO");
    pub const CANCELTYPE: ?*String = String.literal("ORDERHISTORY_CANCEL_TYPE");
    pub const STATUS: ?*String = String.literal("ORDERHISTORY_STATUS");
    pub const PREPROCESSINGNAME: ?*String = String.literal("PREPROCESSING");
    pub const PROCESSINGNAME: ?*String = String.literal("PROCESSING");
    pub const CANCELLEDNAME: ?*String = String.literal("CANCELLED");
    pub const PARTIALLYSHIPPEDNAME: ?*String = String.literal("PARTIALLYSHIPPED");
    pub const SHIPPEDNAME: ?*String = String.literal("SHIPPED");
    pub const PREPROCESSING: ?*String = String.literal("Order Preprocessing");
    pub const PROCESSING: ?*String = String.literal("Order Processing");
    pub const CANCELLED: ?*String = String.literal("Order Cancelled");
    pub const PARTIALLYSHIPPED: ?*String = String.literal("Order Partially Shipped");
    pub const SHIPPED: ?*String = String.literal("Order Shipped");
    pub const SETSTATUS: ?*String = String.literal("Set Status");

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

