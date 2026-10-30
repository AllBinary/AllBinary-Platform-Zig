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
// package org.allbinary.business.context.modules.storefront.statistics.orders.history

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const StoreFrontOrdersHistoryStatisticsData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsData";
    NAME: ?*String = null,
    NUMBEROFORDERS: ?*String = null,
    SUBTOTAL: ?*String = null,
    SHIPPINGCOST: ?*String = null,
    TAXES: ?*String = null,
    TOTAL: ?*String = null,
    var instance: ?*StoreFrontOrdersHistoryStatisticsData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = StoreFrontOrdersHistoryStatisticsData.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("STOREFRONT_ORDERS_HISTORY_STATISTICS_NAME");
        this.NUMBEROFORDERS = String.literal("STOREFRONT_ORDERS_HISTORY_STATISTICS_NUMBER_OF_ORDERS");
        this.SUBTOTAL = String.literal("STOREFRONT_ORDERS_HISTORY_STATISTICS_SUBTOTAL");
        this.SHIPPINGCOST = String.literal("STOREFRONT_ORDERS_HISTORY_STATISTICS_SHIPPINGCOST");
        this.TAXES = String.literal("STOREFRONT_ORDERS_HISTORY_STATISTICS_TAXES");
        this.TOTAL = String.literal("STOREFRONT_ORDERS_HISTORY_STATISTICS_TOTAL");
    }
    

    pub fn getInstance() ?*StoreFrontOrdersHistoryStatisticsData {
        return Inheritance.upcast(?*StoreFrontOrdersHistoryStatisticsData, StoreFrontOrdersHistoryStatisticsData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

