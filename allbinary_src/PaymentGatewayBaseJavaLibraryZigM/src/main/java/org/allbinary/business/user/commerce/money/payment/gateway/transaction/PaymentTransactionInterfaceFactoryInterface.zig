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
const TenderType = @import("org/allbinary/business/user/commerce/money/payment/types/TenderType.zig").TenderType;
const PaymentTransactionInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface.zig").PaymentTransactionInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const PaymentTransactionInterfaceFactoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getInstanceFn: *const fn (pointer: *anyopaque, orderHistory: ?*OrderHistory) ?*PaymentTransactionInterface,
    getSaleTransactionFn: *const fn (pointer: *anyopaque, tenderType: ?*TenderType) ?*PaymentTransactionInterface,
    getCreditTransactionFn: *const fn (pointer: *anyopaque, tenderType: ?*TenderType) ?*PaymentTransactionInterface,
    getAuthorizationTransactionFn: *const fn (pointer: *anyopaque, tenderType: ?*TenderType) ?*PaymentTransactionInterface,
    getCaptureDelayedTransactionFn: *const fn (pointer: *anyopaque, tenderType: ?*TenderType) ?*PaymentTransactionInterface,
    getVoidTransactionFn: *const fn (pointer: *anyopaque, tenderType: ?*TenderType) ?*PaymentTransactionInterface,
    getInquiryTransactionFn: *const fn (pointer: *anyopaque, tenderType: ?*TenderType) ?*PaymentTransactionInterface,

    pub fn getInstance(self: *Self, orderHistory: ?*OrderHistory) ?*PaymentTransactionInterface {
        return self.getInstanceFn(self.pointer, orderHistory);
    }

    pub fn getSaleTransaction(self: *Self, tenderType: ?*TenderType) ?*PaymentTransactionInterface {
        return self.getSaleTransactionFn(self.pointer, tenderType);
    }

    pub fn getCreditTransaction(self: *Self, tenderType: ?*TenderType) ?*PaymentTransactionInterface {
        return self.getCreditTransactionFn(self.pointer, tenderType);
    }

    pub fn getAuthorizationTransaction(self: *Self, tenderType: ?*TenderType) ?*PaymentTransactionInterface {
        return self.getAuthorizationTransactionFn(self.pointer, tenderType);
    }

    pub fn getCaptureDelayedTransaction(self: *Self, tenderType: ?*TenderType) ?*PaymentTransactionInterface {
        return self.getCaptureDelayedTransactionFn(self.pointer, tenderType);
    }

    pub fn getVoidTransaction(self: *Self, tenderType: ?*TenderType) ?*PaymentTransactionInterface {
        return self.getVoidTransactionFn(self.pointer, tenderType);
    }

    pub fn getInquiryTransaction(self: *Self, tenderType: ?*TenderType) ?*PaymentTransactionInterface {
        return self.getInquiryTransactionFn(self.pointer, tenderType);
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
            fn getInstance(pointer: *anyopaque, orderHistory: ?*OrderHistory) ?*PaymentTransactionInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PaymentTransactionInterface, Inheritance.receiver(implementation, "getInstance").getInstance(orderHistory));
            }
            fn getSaleTransaction(pointer: *anyopaque, tenderType: ?*TenderType) ?*PaymentTransactionInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PaymentTransactionInterface, Inheritance.receiver(implementation, "getSaleTransaction").getSaleTransaction(tenderType));
            }
            fn getCreditTransaction(pointer: *anyopaque, tenderType: ?*TenderType) ?*PaymentTransactionInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PaymentTransactionInterface, Inheritance.receiver(implementation, "getCreditTransaction").getCreditTransaction(tenderType));
            }
            fn getAuthorizationTransaction(pointer: *anyopaque, tenderType: ?*TenderType) ?*PaymentTransactionInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PaymentTransactionInterface, Inheritance.receiver(implementation, "getAuthorizationTransaction").getAuthorizationTransaction(tenderType));
            }
            fn getCaptureDelayedTransaction(pointer: *anyopaque, tenderType: ?*TenderType) ?*PaymentTransactionInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PaymentTransactionInterface, Inheritance.receiver(implementation, "getCaptureDelayedTransaction").getCaptureDelayedTransaction(tenderType));
            }
            fn getVoidTransaction(pointer: *anyopaque, tenderType: ?*TenderType) ?*PaymentTransactionInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PaymentTransactionInterface, Inheritance.receiver(implementation, "getVoidTransaction").getVoidTransaction(tenderType));
            }
            fn getInquiryTransaction(pointer: *anyopaque, tenderType: ?*TenderType) ?*PaymentTransactionInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PaymentTransactionInterface, Inheritance.receiver(implementation, "getInquiryTransaction").getInquiryTransaction(tenderType));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getInstanceFn = Methods.getInstance, .getSaleTransactionFn = Methods.getSaleTransaction, .getCreditTransactionFn = Methods.getCreditTransaction, .getAuthorizationTransactionFn = Methods.getAuthorizationTransaction, .getCaptureDelayedTransactionFn = Methods.getCaptureDelayedTransaction, .getVoidTransactionFn = Methods.getVoidTransaction, .getInquiryTransactionFn = Methods.getInquiryTransaction };
        return this;
    }
};

