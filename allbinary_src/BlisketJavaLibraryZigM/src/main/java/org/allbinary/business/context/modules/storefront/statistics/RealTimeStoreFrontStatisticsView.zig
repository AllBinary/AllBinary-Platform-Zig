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
const StoreFrontAdvertisementsStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatisticsInterface.zig").StoreFrontAdvertisementsStatisticsInterface;
const StoreFrontAdvertisementsStatisticsView = @import("org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatisticsView.zig").StoreFrontAdvertisementsStatisticsView;
const StoreFrontInventoryStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsInterface.zig").StoreFrontInventoryStatisticsInterface;
const StoreFrontInventoryStatisticsView = @import("org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsView.zig").StoreFrontInventoryStatisticsView;
const StoreFrontOrdersHistoryStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsInterface.zig").StoreFrontOrdersHistoryStatisticsInterface;
const StoreFrontOrdersHistoryStatisticsView = @import("org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsView.zig").StoreFrontOrdersHistoryStatisticsView;
const StoreFrontUsersStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsInterface.zig").StoreFrontUsersStatisticsInterface;
const StoreFrontUsersStatisticsView = @import("org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsView.zig").StoreFrontUsersStatisticsView;
const UserRole = @import("org/allbinary/business/user/role/UserRole.zig").UserRole;
const UserRoleFactory = @import("org/allbinary/business/user/role/UserRoleFactory.zig").UserRoleFactory;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const StoreFrontStatisticsData = @import("org/allbinary/business/context/modules/storefront/statistics/StoreFrontStatisticsData.zig").StoreFrontStatisticsData;
const StoreFrontStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/StoreFrontStatisticsInterface.zig").StoreFrontStatisticsInterface;

pub const RealTimeStoreFrontStatisticsView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView";
    storeFrontStatisticsInterface: ?*StoreFrontStatisticsInterface = null,
    userRole: ?*UserRole = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(storeFrontStatisticsInterface: ?*StoreFrontStatisticsInterface, userRole: ?*UserRole) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.storeFrontStatisticsInterface = storeFrontStatisticsInterface;
        this.userRole = userRole;
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ StoreFrontStatisticsData.getInstance().?.NAME }));
        const storeFrontAdvertisementsStatisticsInterface: ?*StoreFrontAdvertisementsStatisticsInterface = Inheritance.upcast(?*StoreFrontAdvertisementsStatisticsInterface, self.storeFrontStatisticsInterface.?.getAdvertisements());
        const storeFrontAdvertisementsStatisticsDomNodeInterface: ?*DomNodeInterface = Inheritance.upcast(?*DomNodeInterface, Inheritance.callStatic(StoreFrontAdvertisementsStatisticsView, "create1", .{ storeFrontAdvertisementsStatisticsInterface }));
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(storeFrontAdvertisementsStatisticsDomNodeInterface.?, "toXmlNode", .{ document }) });
        const storeFrontInventoryStatisticsInterface: ?*StoreFrontInventoryStatisticsInterface = Inheritance.upcast(?*StoreFrontInventoryStatisticsInterface, self.storeFrontStatisticsInterface.?.getInventory());
        const storeFrontInventoryStatisticsDomNodeInterface: ?*DomNodeInterface = Inheritance.upcast(?*DomNodeInterface, Inheritance.callStatic(StoreFrontInventoryStatisticsView, "create1", .{ storeFrontInventoryStatisticsInterface }));
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(storeFrontInventoryStatisticsDomNodeInterface.?, "toXmlNode", .{ document }) });
        const storeFrontOrdersHistoryStatisticsInterface: ?*StoreFrontOrdersHistoryStatisticsInterface = Inheritance.upcast(?*StoreFrontOrdersHistoryStatisticsInterface, self.storeFrontStatisticsInterface.?.getOrders());
        const storeFrontOrdersHistoryStatisticsDomNodeInterface: ?*DomNodeInterface = Inheritance.upcast(?*DomNodeInterface, Inheritance.callStatic(StoreFrontOrdersHistoryStatisticsView, "create1", .{ storeFrontOrdersHistoryStatisticsInterface }));
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(storeFrontOrdersHistoryStatisticsDomNodeInterface.?, "toXmlNode", .{ document }) });
        if (Object.same(self.userRole, UserRoleFactory.getInstance().?.ADMINISTRATOR)) {
            const storeFrontUsersStatisticsInterface: ?*StoreFrontUsersStatisticsInterface = Inheritance.upcast(?*StoreFrontUsersStatisticsInterface, self.storeFrontStatisticsInterface.?.getUsers());
            const storeFrontUsersStatisticsDomNodeInterface: ?*DomNodeInterface = Inheritance.upcast(?*DomNodeInterface, Inheritance.callStatic(StoreFrontUsersStatisticsView, "create1", .{ storeFrontUsersStatisticsInterface }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(storeFrontUsersStatisticsDomNodeInterface.?, "toXmlNode", .{ document }) });
        }
        return node;
    }
};

