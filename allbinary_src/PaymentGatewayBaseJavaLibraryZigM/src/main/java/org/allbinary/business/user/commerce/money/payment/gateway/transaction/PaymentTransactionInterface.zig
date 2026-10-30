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
// package org.allbinary.business.user.commerce.money.payment.gateway.transaction

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const OrderHistory = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistory.zig").OrderHistory;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const PaymentTransactionInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface";
    pointer: *anyopaque,
    object: Object,
    base: TableMappingInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getOrderHistoryFn: *const fn (pointer: *anyopaque) ?*OrderHistory,

    pub fn getOrderHistory(self: *Self) ?*OrderHistory {
        return self.getOrderHistoryFn(self.pointer);
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
            fn getOrderHistory(pointer: *anyopaque) ?*OrderHistory {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*OrderHistory, Inheritance.receiver(implementation, "getOrderHistory").getOrderHistory());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = TableMappingInterface.of(object).?.*, .toStringFn = Methods.toString, .getOrderHistoryFn = Methods.getOrderHistory };
        return this;
    }
};

