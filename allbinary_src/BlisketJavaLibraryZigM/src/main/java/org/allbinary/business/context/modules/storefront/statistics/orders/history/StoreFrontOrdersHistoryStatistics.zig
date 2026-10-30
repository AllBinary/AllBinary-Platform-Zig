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
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const OrderHistoryInterface = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryInterface.zig").OrderHistoryInterface;
const Money = @import("org/allbinary/business/user/commerce/money/Money.zig").Money;
const OrderHistoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory.zig").OrderHistoryEntityFactory;
const OrderHistoryEntityInterface = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityInterface.zig").OrderHistoryEntityInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StoreFrontOrdersHistoryStatisticsData = @import("org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsData.zig").StoreFrontOrdersHistoryStatisticsData;
const StoreFrontOrdersHistoryStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsInterface.zig").StoreFrontOrdersHistoryStatisticsInterface;
const Long = @import("java/lang/Long.zig").Long;

pub const StoreFrontOrdersHistoryStatistics = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics";
    pub const java_interfaces = .{ StoreFrontOrdersHistoryStatisticsInterface };
    numberOfOrdersLong: ?*Long = null,
    subTotalMoney: ?*Money = null,
    shippingCostMoney: ?*Money = null,
    taxesMoney: ?*Money = null,
    totalMoney: ?*Money = null,
    // Implements StoreFrontOrdersHistoryStatisticsInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
    }
    

    pub fn create1(storeFrontInterface: ?*StoreFrontInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.subTotalMoney = Money.create();
        this.shippingCostMoney = Money.create();
        this.taxesMoney = Money.create();
        this.totalMoney = Money.create();
        const orderHistoryEntityInterface: ?*OrderHistoryEntityInterface = Inheritance.upcast(?*OrderHistoryEntityInterface, OrderHistoryEntityFactory.getInstance());
        const orderHistoryInterfaceVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(orderHistoryEntityInterface.?, "getStoreOrders", .{ storeFrontInterface }));
        var numberOfOrders: i64 = 0;
        var orderHistoryInterface: ?*OrderHistoryInterface = null;
        const size: i32 = orderHistoryInterfaceVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            orderHistoryInterface = Inheritance.cast(?*OrderHistoryInterface, Inheritance.call(orderHistoryInterfaceVector.?, "get", .{ index }));
            numberOfOrders = numberOfOrders + 1;
            _ = Inheritance.call(this.subTotalMoney.?, "add", .{ orderHistoryInterface.?.getSubTotal() });
            _ = Inheritance.call(this.shippingCostMoney.?, "add", .{ orderHistoryInterface.?.getShippingCost() });
            _ = Inheritance.call(this.taxesMoney.?, "add", .{ orderHistoryInterface.?.getTaxes() });
            _ = Inheritance.call(this.totalMoney.?, "add", .{ orderHistoryInterface.?.getTotal() });
            }
        }
        this.numberOfOrdersLong = Inheritance.callStatic(Long, "create1", .{ numberOfOrders });
        return this;
    }
    

    pub fn getNumberOfOrders(self: *Self) ?*Long {
        return self.numberOfOrdersLong;
    }
    

    pub fn getSubTotal(self: *Self) ?*Money {
        return self.subTotalMoney;
    }
    

    pub fn getShippingCost(self: *Self) ?*Money {
        return self.shippingCostMoney;
    }
    

    pub fn getTaxes(self: *Self) ?*Money {
        return self.taxesMoney;
    }
    

    pub fn getTotal(self: *Self) ?*Money {
        return self.totalMoney;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const storeFrontOrdersHistoryStatisticsData: ?*StoreFrontOrdersHistoryStatisticsData = Inheritance.upcast(?*StoreFrontOrdersHistoryStatisticsData, StoreFrontOrdersHistoryStatisticsData.getInstance());
        _ = Inheritance.call(hashMap.?, "put", .{ storeFrontOrdersHistoryStatisticsData.?.NUMBEROFORDERS, Object.toString(Object.of(self.getNumberOfOrders())) });
        _ = Inheritance.call(hashMap.?, "put", .{ storeFrontOrdersHistoryStatisticsData.?.SUBTOTAL, Object.toString(Object.of(self.getSubTotal())) });
        _ = Inheritance.call(hashMap.?, "put", .{ storeFrontOrdersHistoryStatisticsData.?.SHIPPINGCOST, Object.toString(Object.of(self.getShippingCost())) });
        _ = Inheritance.call(hashMap.?, "put", .{ storeFrontOrdersHistoryStatisticsData.?.TAXES, Object.toString(Object.of(self.getTaxes())) });
        _ = Inheritance.call(hashMap.?, "put", .{ storeFrontOrdersHistoryStatisticsData.?.TOTAL, Object.toString(Object.of(self.getTotal())) });
        return hashMap;
    }
    

    pub fn toVector(self: *Self) ?*BasicArrayList {
        _ = self;
        return null;
    }
    

    pub fn getKey(self: *Self) ?Object {
        _ = self;
        return null;
    }
};

