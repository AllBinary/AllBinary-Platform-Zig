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
// package org.allbinary.business.user.commerce.money.payment.gateway.processor

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PaymentTransactionInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface.zig").PaymentTransactionInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const PaymentProcessorInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterface.zig").PaymentProcessorInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const PaymentProcessorInterfaceFactoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getInstanceFn: *const fn (pointer: *anyopaque, transformInfoInterface: ?*TransformInfoInterface, paymentTransactionInterface: ?*PaymentTransactionInterface) ?*PaymentProcessorInterface,

    pub fn getInstance(self: *Self, transformInfoInterface: ?*TransformInfoInterface, paymentTransactionInterface: ?*PaymentTransactionInterface) ?*PaymentProcessorInterface {
        return self.getInstanceFn(self.pointer, transformInfoInterface, paymentTransactionInterface);
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
            fn getInstance(pointer: *anyopaque, transformInfoInterface: ?*TransformInfoInterface, paymentTransactionInterface: ?*PaymentTransactionInterface) ?*PaymentProcessorInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PaymentProcessorInterface, Inheritance.receiver(implementation, "getInstance").getInstance(transformInfoInterface, paymentTransactionInterface));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getInstanceFn = Methods.getInstance };
        return this;
    }
};

