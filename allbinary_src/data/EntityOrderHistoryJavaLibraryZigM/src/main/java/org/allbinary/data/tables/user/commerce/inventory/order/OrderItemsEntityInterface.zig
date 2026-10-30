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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasketReview = @import("org/allbinary/business/user/commerce/inventory/basket/BasketReview.zig").BasketReview;
const OrderInterface = @import("org/allbinary/business/user/commerce/inventory/order/OrderInterface.zig").OrderInterface;
const BasicDataTableInterface = @import("org/allbinary/data/tables/BasicDataTableInterface.zig").BasicDataTableInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const OrderItemsEntityInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface";
    pointer: *anyopaque,
    object: Object,
    base: BasicDataTableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setStatusFn: *const fn (pointer: *anyopaque, orderId: ?*String, groupId: ?*String, status: ?*String) void,
    isEverythingShippedFn: *const fn (pointer: *anyopaque, orderId: ?*String) bool,
    getBasketReviewFn: *const fn (pointer: *anyopaque, orderId: ?*String) ?*BasketReview,
    insertFn: *const fn (pointer: *anyopaque, userName: ?*String, order: ?*OrderInterface) void,
    insertFn: *const fn (pointer: *anyopaque, values: ?*BasicArrayList) void,

    pub fn setStatus(self: *Self, orderId: ?*String, groupId: ?*String, status: ?*String) void {
        return self.setStatusFn(self.pointer, orderId, groupId, status);
    }

    pub fn isEverythingShipped(self: *Self, orderId: ?*String) bool {
        return self.isEverythingShippedFn(self.pointer, orderId);
    }

    pub fn getBasketReview(self: *Self, orderId: ?*String) ?*BasketReview {
        return self.getBasketReviewFn(self.pointer, orderId);
    }

    pub fn insert(self: *Self, userName: ?*String, order: ?*OrderInterface) void {
        return self.insertFn(self.pointer, userName, order);
    }

    pub fn insert(self: *Self, values: ?*BasicArrayList) void {
        return self.insertFn(self.pointer, values);
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
            fn setStatus(pointer: *anyopaque, orderId: ?*String, groupId: ?*String, status: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setStatus").setStatus(orderId, groupId, status);
            }
            fn isEverythingShipped(pointer: *anyopaque, orderId: ?*String) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isEverythingShipped").isEverythingShipped(orderId);
            }
            fn getBasketReview(pointer: *anyopaque, orderId: ?*String) ?*BasketReview {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasketReview, Inheritance.receiver(implementation, "getBasketReview").getBasketReview(orderId));
            }
            fn insert(pointer: *anyopaque, userName: ?*String, order: ?*OrderInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "insert").insert(userName, order);
            }
            fn insert(pointer: *anyopaque, values: ?*BasicArrayList) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "insert").insert(values);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicDataTableInterface.of(object).?.*, .toStringFn = Methods.toString, .setStatusFn = Methods.setStatus, .isEverythingShippedFn = Methods.isEverythingShipped, .getBasketReviewFn = Methods.getBasketReview, .insertFn = Methods.insert, .insertFn = Methods.insert };
        return this;
    }
};

