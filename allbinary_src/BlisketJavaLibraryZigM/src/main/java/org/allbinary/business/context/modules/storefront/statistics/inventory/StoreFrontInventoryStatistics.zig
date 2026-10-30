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
// package org.allbinary.business.context.modules.storefront.statistics.inventory

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const ItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/ItemInterface.zig").ItemInterface;
const Money = @import("org/allbinary/business/user/commerce/money/Money.zig").Money;
const InventoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory.zig").InventoryEntityFactory;
const InventoryEntityInterface = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityInterface.zig").InventoryEntityInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StoreFrontInventoryStatisticsData = @import("org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsData.zig").StoreFrontInventoryStatisticsData;
const StoreFrontInventoryStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsInterface.zig").StoreFrontInventoryStatisticsInterface;
const Integer = @import("java/lang/Integer.zig").Integer;
const Long = @import("java/lang/Long.zig").Long;

pub const StoreFrontInventoryStatistics = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics";
    pub const java_interfaces = .{ StoreFrontInventoryStatisticsInterface };
    totalNumberOfItems: i64 = 0,
    totalInventorySaleValueMoney: ?*Money = null,
    // Implements StoreFrontInventoryStatisticsInterface

    fn initFields(this: *Self) void {
        this.totalNumberOfItems = 0;
        
    }
    

    pub fn create1(storeFrontInterface: ?*StoreFrontInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.totalInventorySaleValueMoney = Money.create();
        const inventoryEntityInterface: ?*InventoryEntityInterface = Inheritance.upcast(?*InventoryEntityInterface, Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance());
        const itemVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(inventoryEntityInterface.?, "getItems", .{ storeFrontInterface }));
        const size: i32 = itemVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const itemInterface: ?*ItemInterface = Inheritance.cast(?*ItemInterface, Inheritance.call(itemVector.?, "get", .{ index }));
            const numberInStock: i32 = Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.receiver(itemInterface.?, "getNumber").getNumber() }).?, "intValue").intValue();
            this.totalNumberOfItems = this.totalNumberOfItems + @as(i64, @intCast(numberInStock));
            const itemPriceMoney: ?*Money = Inheritance.upcast(?*Money, Inheritance.receiver(itemInterface.?, "getPrice").getPrice());
            _ = Inheritance.call(itemPriceMoney.?, "multiply", .{ numberInStock });
            _ = Inheritance.call(this.totalInventorySaleValueMoney.?, "add", .{ Object.toString(Object.of(itemPriceMoney)) });
            }
        }
        return this;
    }
    

    pub fn getNumber(self: *Self) ?*Long {
        return Inheritance.callStatic(Long, "create1", .{ self.totalNumberOfItems });
    }
    

    pub fn getTotal(self: *Self) ?*Money {
        return self.totalInventorySaleValueMoney;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ StoreFrontInventoryStatisticsData.getInstance().?.NUMBEROFITEMS, Object.toString(Object.of(self.getNumber())) });
        _ = Inheritance.call(hashMap.?, "put", .{ StoreFrontInventoryStatisticsData.getInstance().?.TOTALVALUE, Object.toString(Object.of(self.getTotal())) });
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

