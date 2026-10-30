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
const StoreFrontInventoryStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsInterface.zig").StoreFrontInventoryStatisticsInterface;
const StoreFrontOrdersHistoryStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsInterface.zig").StoreFrontOrdersHistoryStatisticsInterface;
const StoreFrontUsersStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsInterface.zig").StoreFrontUsersStatisticsInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const StoreFrontStatisticsInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getAdvertisementsFn: *const fn (pointer: *anyopaque) ?*StoreFrontAdvertisementsStatisticsInterface,
    getUsersFn: *const fn (pointer: *anyopaque) ?*StoreFrontUsersStatisticsInterface,
    getInventoryFn: *const fn (pointer: *anyopaque) ?*StoreFrontInventoryStatisticsInterface,
    getOrdersFn: *const fn (pointer: *anyopaque) ?*StoreFrontOrdersHistoryStatisticsInterface,

    pub fn getAdvertisements(self: *Self) ?*StoreFrontAdvertisementsStatisticsInterface {
        return self.getAdvertisementsFn(self.pointer);
    }

    pub fn getUsers(self: *Self) ?*StoreFrontUsersStatisticsInterface {
        return self.getUsersFn(self.pointer);
    }

    pub fn getInventory(self: *Self) ?*StoreFrontInventoryStatisticsInterface {
        return self.getInventoryFn(self.pointer);
    }

    pub fn getOrders(self: *Self) ?*StoreFrontOrdersHistoryStatisticsInterface {
        return self.getOrdersFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn getAdvertisements(pointer: *anyopaque) ?*StoreFrontAdvertisementsStatisticsInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*StoreFrontAdvertisementsStatisticsInterface, Inheritance.receiver(implementation, "getAdvertisements").getAdvertisements());
            }
            fn getUsers(pointer: *anyopaque) ?*StoreFrontUsersStatisticsInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*StoreFrontUsersStatisticsInterface, Inheritance.receiver(implementation, "getUsers").getUsers());
            }
            fn getInventory(pointer: *anyopaque) ?*StoreFrontInventoryStatisticsInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*StoreFrontInventoryStatisticsInterface, Inheritance.receiver(implementation, "getInventory").getInventory());
            }
            fn getOrders(pointer: *anyopaque) ?*StoreFrontOrdersHistoryStatisticsInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*StoreFrontOrdersHistoryStatisticsInterface, Inheritance.receiver(implementation, "getOrders").getOrders());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getAdvertisementsFn = Methods.getAdvertisements, .getUsersFn = Methods.getUsers, .getInventoryFn = Methods.getInventory, .getOrdersFn = Methods.getOrders };
        return this;
    }
};

