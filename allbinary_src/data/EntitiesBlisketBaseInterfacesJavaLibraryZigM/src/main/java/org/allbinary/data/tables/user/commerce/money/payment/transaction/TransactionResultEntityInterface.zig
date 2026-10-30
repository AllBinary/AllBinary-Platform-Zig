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
const TransactionResultInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/TransactionResultInterface.zig").TransactionResultInterface;
const BasicDataTableInterface = @import("org/allbinary/data/tables/BasicDataTableInterface.zig").BasicDataTableInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const TransactionResultEntityInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface";
    pointer: *anyopaque,
    object: Object,
    base: BasicDataTableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getTransactionResultInterfaceFn: *const fn (pointer: *anyopaque, orderNumber: ?*String) ?*TransactionResultInterface,
    removeFn: *const fn (pointer: *anyopaque, userName: ?*String, orderNumber: ?*String) void,
    addFn: *const fn (pointer: *anyopaque, userName: ?*String, orderNumber: ?*String, resultInterface: ?*TransactionResultInterface) void,

    pub fn getTransactionResultInterface(self: *Self, orderNumber: ?*String) ?*TransactionResultInterface {
        return self.getTransactionResultInterfaceFn(self.pointer, orderNumber);
    }

    pub fn remove(self: *Self, userName: ?*String, orderNumber: ?*String) void {
        return self.removeFn(self.pointer, userName, orderNumber);
    }

    pub fn add(self: *Self, userName: ?*String, orderNumber: ?*String, resultInterface: ?*TransactionResultInterface) void {
        return self.addFn(self.pointer, userName, orderNumber, resultInterface);
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
            fn getTransactionResultInterface(pointer: *anyopaque, orderNumber: ?*String) ?*TransactionResultInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*TransactionResultInterface, Inheritance.receiver(implementation, "getTransactionResultInterface").getTransactionResultInterface(orderNumber));
            }
            fn remove(pointer: *anyopaque, userName: ?*String, orderNumber: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "remove").remove(userName, orderNumber);
            }
            fn add(pointer: *anyopaque, userName: ?*String, orderNumber: ?*String, resultInterface: ?*TransactionResultInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "add").add(userName, orderNumber, resultInterface);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicDataTableInterface.of(object).?.*, .toStringFn = Methods.toString, .getTransactionResultInterfaceFn = Methods.getTransactionResultInterface, .removeFn = Methods.remove, .addFn = Methods.add };
        return this;
    }
};

