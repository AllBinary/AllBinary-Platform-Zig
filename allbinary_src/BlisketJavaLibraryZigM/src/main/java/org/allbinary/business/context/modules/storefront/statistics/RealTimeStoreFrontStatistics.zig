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
// package org.allbinary.business.context.modules.storefront.statistics

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const StoreFrontAdvertisementsStatistics = @import("org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatistics.zig").StoreFrontAdvertisementsStatistics;
const StoreFrontAdvertisementsStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatisticsInterface.zig").StoreFrontAdvertisementsStatisticsInterface;
const StoreFrontInventoryStatistics = @import("org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatistics.zig").StoreFrontInventoryStatistics;
const StoreFrontInventoryStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsInterface.zig").StoreFrontInventoryStatisticsInterface;
const StoreFrontOrdersHistoryStatistics = @import("org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatistics.zig").StoreFrontOrdersHistoryStatistics;
const StoreFrontOrdersHistoryStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsInterface.zig").StoreFrontOrdersHistoryStatisticsInterface;
const StoreFrontUsersStatistics = @import("org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatistics.zig").StoreFrontUsersStatistics;
const StoreFrontUsersStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsInterface.zig").StoreFrontUsersStatisticsInterface;
const StoreFrontStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/StoreFrontStatisticsInterface.zig").StoreFrontStatisticsInterface;

pub const RealTimeStoreFrontStatistics = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatistics";
    pub const java_interfaces = .{ StoreFrontStatisticsInterface };
    storeFrontAdvertisementsStatisticsInterface: ?*StoreFrontAdvertisementsStatisticsInterface = null,
    storeFrontUsersStatisticsInterface: ?*StoreFrontUsersStatisticsInterface = null,
    storeFrontInventoryStatisticsInterface: ?*StoreFrontInventoryStatisticsInterface = null,
    storeFrontOrderHistoryStatisticsInterface: ?*StoreFrontOrdersHistoryStatisticsInterface = null,
    // Implements StoreFrontStatisticsInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
    }
    

    pub fn create1(storeFrontInterface: ?*StoreFrontInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.storeFrontAdvertisementsStatisticsInterface = Inheritance.cast(?*StoreFrontAdvertisementsStatisticsInterface, Inheritance.callStatic(StoreFrontAdvertisementsStatistics, "create1", .{ storeFrontInterface }));
        this.storeFrontUsersStatisticsInterface = Inheritance.cast(?*StoreFrontUsersStatisticsInterface, Inheritance.callStatic(StoreFrontUsersStatistics, "create1", .{ storeFrontInterface }));
        this.storeFrontInventoryStatisticsInterface = Inheritance.cast(?*StoreFrontInventoryStatisticsInterface, Inheritance.callStatic(StoreFrontInventoryStatistics, "create1", .{ storeFrontInterface }));
        this.storeFrontOrderHistoryStatisticsInterface = Inheritance.cast(?*StoreFrontOrdersHistoryStatisticsInterface, Inheritance.callStatic(StoreFrontOrdersHistoryStatistics, "create1", .{ storeFrontInterface }));
        return this;
    }
    

    pub fn getAdvertisements(self: *Self) ?*StoreFrontAdvertisementsStatisticsInterface {
        return self.storeFrontAdvertisementsStatisticsInterface;
    }
    

    pub fn getUsers(self: *Self) ?*StoreFrontUsersStatisticsInterface {
        return self.storeFrontUsersStatisticsInterface;
    }
    

    pub fn getInventory(self: *Self) ?*StoreFrontInventoryStatisticsInterface {
        return self.storeFrontInventoryStatisticsInterface;
    }
    

    pub fn getOrders(self: *Self) ?*StoreFrontOrdersHistoryStatisticsInterface {
        return self.storeFrontOrderHistoryStatisticsInterface;
    }
};

