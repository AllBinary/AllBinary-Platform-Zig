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
// package org.allbinary.data.tables.user.commerce.money.payment.gateway

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const PaymentGatewayInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface.zig").PaymentGatewayInterface;
const BasicPaymentType = @import("org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType.zig").BasicPaymentType;
const BasicDataTableInterface = @import("org/allbinary/data/tables/BasicDataTableInterface.zig").BasicDataTableInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const PaymentGatewayEntityInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface";
    pointer: *anyopaque,
    object: Object,
    base: BasicDataTableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getPaymentGatewayInterfaceFn: *const fn (pointer: *anyopaque, storeName: ?*String, paymentType: ?*BasicPaymentType) ?*PaymentGatewayInterface,
    findPaymentTypeVectorByStoreFn: *const fn (pointer: *anyopaque, storeName: ?*String) ?*BasicArrayList,
    removeFn: *const fn (pointer: *anyopaque, storeName: ?*String, paymentType: ?*BasicPaymentType) void,
    addFn: *const fn (pointer: *anyopaque, paymentGatewayInterface: ?*PaymentGatewayInterface) void,
    updateFn: *const fn (pointer: *anyopaque, paymentGatewayInterface: ?*PaymentGatewayInterface) void,

    pub fn getPaymentGatewayInterface(self: *Self, storeName: ?*String, paymentType: ?*BasicPaymentType) ?*PaymentGatewayInterface {
        return self.getPaymentGatewayInterfaceFn(self.pointer, storeName, paymentType);
    }

    pub fn findPaymentTypeVectorByStore(self: *Self, storeName: ?*String) ?*BasicArrayList {
        return self.findPaymentTypeVectorByStoreFn(self.pointer, storeName);
    }

    pub fn remove(self: *Self, storeName: ?*String, paymentType: ?*BasicPaymentType) void {
        return self.removeFn(self.pointer, storeName, paymentType);
    }

    pub fn add(self: *Self, paymentGatewayInterface: ?*PaymentGatewayInterface) void {
        return self.addFn(self.pointer, paymentGatewayInterface);
    }

    pub fn update(self: *Self, paymentGatewayInterface: ?*PaymentGatewayInterface) void {
        return self.updateFn(self.pointer, paymentGatewayInterface);
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
            fn getPaymentGatewayInterface(pointer: *anyopaque, storeName: ?*String, paymentType: ?*BasicPaymentType) ?*PaymentGatewayInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PaymentGatewayInterface, Inheritance.receiver(implementation, "getPaymentGatewayInterface").getPaymentGatewayInterface(storeName, paymentType));
            }
            fn findPaymentTypeVectorByStore(pointer: *anyopaque, storeName: ?*String) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "findPaymentTypeVectorByStore").findPaymentTypeVectorByStore(storeName));
            }
            fn remove(pointer: *anyopaque, storeName: ?*String, paymentType: ?*BasicPaymentType) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "remove").remove(storeName, paymentType);
            }
            fn add(pointer: *anyopaque, paymentGatewayInterface: ?*PaymentGatewayInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "add").add(paymentGatewayInterface);
            }
            fn update(pointer: *anyopaque, paymentGatewayInterface: ?*PaymentGatewayInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "update").update(paymentGatewayInterface);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicDataTableInterface.of(object).?.*, .toStringFn = Methods.toString, .getPaymentGatewayInterfaceFn = Methods.getPaymentGatewayInterface, .findPaymentTypeVectorByStoreFn = Methods.findPaymentTypeVectorByStore, .removeFn = Methods.remove, .addFn = Methods.add, .updateFn = Methods.update };
        return this;
    }
};

