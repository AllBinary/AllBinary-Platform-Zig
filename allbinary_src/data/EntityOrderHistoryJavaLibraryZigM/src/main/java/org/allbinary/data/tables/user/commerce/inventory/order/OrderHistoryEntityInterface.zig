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
// package org.allbinary.data.tables.user.commerce.inventory.order

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const Order = @import("org/allbinary/business/user/commerce/inventory/order/Order.zig").Order;
const OrderHistory = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistory.zig").OrderHistory;
const BasicDataTableInterface = @import("org/allbinary/data/tables/BasicDataTableInterface.zig").BasicDataTableInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const OrderHistoryEntityInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface";
    pointer: *anyopaque,
    object: Object,
    base: BasicDataTableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    insertFn: *const fn (pointer: *anyopaque, userName: ?*String, order: ?*Order) void,
    setStatusFn: *const fn (pointer: *anyopaque, orderId: ?*String, status: ?*String) void,
    setPaymentMethodFn: *const fn (pointer: *anyopaque, orderId: ?*String, status: ?*String) void,
    getStoreOrdersFn: *const fn (pointer: *anyopaque, storeFrontInterface: ?*StoreFrontInterface) ?*BasicArrayList,
    getOrdersFn: *const fn (pointer: *anyopaque, userName: ?*String) ?*BasicArrayList,
    getOrdersFn: *const fn (pointer: *anyopaque, status: ?*String, fromDate: ?*String, toDate: ?*String) ?*BasicArrayList,
    getOrderFn: *const fn (pointer: *anyopaque, id: ?*String) ?*OrderHistory,
    updateFn: *const fn (pointer: *anyopaque, whereHashMap: ?*HashMap, orderHashMap: ?*HashMap) void,

    pub fn insert(self: *Self, userName: ?*String, order: ?*Order) void {
        return self.insertFn(self.pointer, userName, order);
    }

    pub fn setStatus(self: *Self, orderId: ?*String, status: ?*String) void {
        return self.setStatusFn(self.pointer, orderId, status);
    }

    pub fn setPaymentMethod(self: *Self, orderId: ?*String, status: ?*String) void {
        return self.setPaymentMethodFn(self.pointer, orderId, status);
    }

    pub fn getStoreOrders(self: *Self, storeFrontInterface: ?*StoreFrontInterface) ?*BasicArrayList {
        return self.getStoreOrdersFn(self.pointer, storeFrontInterface);
    }

    pub fn getOrders(self: *Self, userName: ?*String) ?*BasicArrayList {
        return self.getOrdersFn(self.pointer, userName);
    }

    pub fn getOrders(self: *Self, status: ?*String, fromDate: ?*String, toDate: ?*String) ?*BasicArrayList {
        return self.getOrdersFn(self.pointer, status, fromDate, toDate);
    }

    pub fn getOrder(self: *Self, id: ?*String) ?*OrderHistory {
        return self.getOrderFn(self.pointer, id);
    }

    pub fn update(self: *Self, whereHashMap: ?*HashMap, orderHashMap: ?*HashMap) void {
        return self.updateFn(self.pointer, whereHashMap, orderHashMap);
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
            fn insert(pointer: *anyopaque, userName: ?*String, order: ?*Order) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "insert").insert(userName, order);
            }
            fn setStatus(pointer: *anyopaque, orderId: ?*String, status: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setStatus").setStatus(orderId, status);
            }
            fn setPaymentMethod(pointer: *anyopaque, orderId: ?*String, status: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPaymentMethod").setPaymentMethod(orderId, status);
            }
            fn getStoreOrders(pointer: *anyopaque, storeFrontInterface: ?*StoreFrontInterface) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getStoreOrders").getStoreOrders(storeFrontInterface));
            }
            fn getOrders(pointer: *anyopaque, userName: ?*String) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getOrders").getOrders(userName));
            }
            fn getOrders(pointer: *anyopaque, status: ?*String, fromDate: ?*String, toDate: ?*String) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getOrders").getOrders(status, fromDate, toDate));
            }
            fn getOrder(pointer: *anyopaque, id: ?*String) ?*OrderHistory {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*OrderHistory, Inheritance.receiver(implementation, "getOrder").getOrder(id));
            }
            fn update(pointer: *anyopaque, whereHashMap: ?*HashMap, orderHashMap: ?*HashMap) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "update").update(whereHashMap, orderHashMap);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicDataTableInterface.of(object).?.*, .toStringFn = Methods.toString, .insertFn = Methods.insert, .setStatusFn = Methods.setStatus, .setPaymentMethodFn = Methods.setPaymentMethod, .getStoreOrdersFn = Methods.getStoreOrders, .getOrdersFn = Methods.getOrders, .getOrdersFn = Methods.getOrders, .getOrderFn = Methods.getOrder, .updateFn = Methods.update };
        return this;
    }
};

