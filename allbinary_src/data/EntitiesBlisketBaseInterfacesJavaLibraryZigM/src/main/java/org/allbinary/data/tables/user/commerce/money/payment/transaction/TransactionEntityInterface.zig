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
// package org.allbinary.data.tables.user.commerce.money.payment.transaction

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PaymentTransactionInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface.zig").PaymentTransactionInterface;
const BasicDataTableInterface = @import("org/allbinary/data/tables/BasicDataTableInterface.zig").BasicDataTableInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const TransactionEntityInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface";
    pointer: *anyopaque,
    object: Object,
    base: BasicDataTableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    removeFn: *const fn (pointer: *anyopaque, userName: ?*String, orderNumber: ?*String) void,
    addFn: *const fn (pointer: *anyopaque, userName: ?*String, orderNumber: ?*String, paymentTransactionInterface: ?*PaymentTransactionInterface) void,

    pub fn remove(self: *Self, userName: ?*String, orderNumber: ?*String) void {
        return self.removeFn(self.pointer, userName, orderNumber);
    }

    pub fn add(self: *Self, userName: ?*String, orderNumber: ?*String, paymentTransactionInterface: ?*PaymentTransactionInterface) void {
        return self.addFn(self.pointer, userName, orderNumber, paymentTransactionInterface);
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
            fn remove(pointer: *anyopaque, userName: ?*String, orderNumber: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "remove").remove(userName, orderNumber);
            }
            fn add(pointer: *anyopaque, userName: ?*String, orderNumber: ?*String, paymentTransactionInterface: ?*PaymentTransactionInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "add").add(userName, orderNumber, paymentTransactionInterface);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicDataTableInterface.of(object).?.*, .toStringFn = Methods.toString, .removeFn = Methods.remove, .addFn = Methods.add };
        return this;
    }
};

