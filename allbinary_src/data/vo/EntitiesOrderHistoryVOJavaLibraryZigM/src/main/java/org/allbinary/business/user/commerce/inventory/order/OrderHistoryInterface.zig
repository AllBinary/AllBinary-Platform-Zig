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
// package org.allbinary.business.user.commerce.inventory.order

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const Money = @import("org/allbinary/business/user/commerce/money/Money.zig").Money;
const Payment = @import("org/allbinary/business/user/commerce/money/payment/Payment.zig").Payment;

// Java interface: an implementation is a pointer and a table of functions
pub const OrderHistoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setUserNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setDefaultShippingAddressFn: *const fn (pointer: *anyopaque, shippingAddress: ?*StreetAddress) void,
    setBillingAddressFn: *const fn (pointer: *anyopaque, billingAddress: ?*StreetAddress) void,
    setPaymentInfoFn: *const fn (pointer: *anyopaque, payment: ?*Payment) void,
    setShipDateFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setOrderDateFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTransDateFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setCancelDateFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setStatusFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSubTotalFn: *const fn (pointer: *anyopaque, value: ?*Money) void,
    setShippingCostFn: *const fn (pointer: *anyopaque, value: ?*Money) void,
    setTaxesFn: *const fn (pointer: *anyopaque, value: ?*Money) void,
    setTotalFn: *const fn (pointer: *anyopaque, value: ?*Money) void,
    getUserNameFn: *const fn (pointer: *anyopaque) ?*String,
    getShippingAddressFn: *const fn (pointer: *anyopaque) ?*StreetAddress,
    getBillingAddressFn: *const fn (pointer: *anyopaque) ?*StreetAddress,
    getPaymentInfoFn: *const fn (pointer: *anyopaque) ?*Payment,
    getShipDateFn: *const fn (pointer: *anyopaque) ?*String,
    getOrderDateFn: *const fn (pointer: *anyopaque) ?*String,
    getTransDateFn: *const fn (pointer: *anyopaque) ?*String,
    getCancelDateFn: *const fn (pointer: *anyopaque) ?*String,
    getStatusFn: *const fn (pointer: *anyopaque) ?*String,
    getSubTotalFn: *const fn (pointer: *anyopaque) ?*Money,
    getShippingCostFn: *const fn (pointer: *anyopaque) ?*Money,
    getTaxesFn: *const fn (pointer: *anyopaque) ?*Money,
    getTotalFn: *const fn (pointer: *anyopaque) ?*Money,
    getPaymentMethodFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn setUserName(self: *Self, value: ?*String) void {
        return self.setUserNameFn(self.pointer, value);
    }

    pub fn setDefaultShippingAddress(self: *Self, shippingAddress: ?*StreetAddress) void {
        return self.setDefaultShippingAddressFn(self.pointer, shippingAddress);
    }

    pub fn setBillingAddress(self: *Self, billingAddress: ?*StreetAddress) void {
        return self.setBillingAddressFn(self.pointer, billingAddress);
    }

    pub fn setPaymentInfo(self: *Self, payment: ?*Payment) void {
        return self.setPaymentInfoFn(self.pointer, payment);
    }

    pub fn setShipDate(self: *Self, value: ?*String) void {
        return self.setShipDateFn(self.pointer, value);
    }

    pub fn setOrderDate(self: *Self, value: ?*String) void {
        return self.setOrderDateFn(self.pointer, value);
    }

    pub fn setTransDate(self: *Self, value: ?*String) void {
        return self.setTransDateFn(self.pointer, value);
    }

    pub fn setCancelDate(self: *Self, value: ?*String) void {
        return self.setCancelDateFn(self.pointer, value);
    }

    pub fn setStatus(self: *Self, value: ?*String) void {
        return self.setStatusFn(self.pointer, value);
    }

    pub fn setSubTotal(self: *Self, value: ?*Money) void {
        return self.setSubTotalFn(self.pointer, value);
    }

    pub fn setShippingCost(self: *Self, value: ?*Money) void {
        return self.setShippingCostFn(self.pointer, value);
    }

    pub fn setTaxes(self: *Self, value: ?*Money) void {
        return self.setTaxesFn(self.pointer, value);
    }

    pub fn setTotal(self: *Self, value: ?*Money) void {
        return self.setTotalFn(self.pointer, value);
    }

    pub fn getUserName(self: *Self) ?*String {
        return self.getUserNameFn(self.pointer);
    }

    pub fn getShippingAddress(self: *Self) ?*StreetAddress {
        return self.getShippingAddressFn(self.pointer);
    }

    pub fn getBillingAddress(self: *Self) ?*StreetAddress {
        return self.getBillingAddressFn(self.pointer);
    }

    pub fn getPaymentInfo(self: *Self) ?*Payment {
        return self.getPaymentInfoFn(self.pointer);
    }

    pub fn getShipDate(self: *Self) ?*String {
        return self.getShipDateFn(self.pointer);
    }

    pub fn getOrderDate(self: *Self) ?*String {
        return self.getOrderDateFn(self.pointer);
    }

    pub fn getTransDate(self: *Self) ?*String {
        return self.getTransDateFn(self.pointer);
    }

    pub fn getCancelDate(self: *Self) ?*String {
        return self.getCancelDateFn(self.pointer);
    }

    pub fn getStatus(self: *Self) ?*String {
        return self.getStatusFn(self.pointer);
    }

    pub fn getSubTotal(self: *Self) ?*Money {
        return self.getSubTotalFn(self.pointer);
    }

    pub fn getShippingCost(self: *Self) ?*Money {
        return self.getShippingCostFn(self.pointer);
    }

    pub fn getTaxes(self: *Self) ?*Money {
        return self.getTaxesFn(self.pointer);
    }

    pub fn getTotal(self: *Self) ?*Money {
        return self.getTotalFn(self.pointer);
    }

    pub fn getPaymentMethod(self: *Self) ?*String {
        return self.getPaymentMethodFn(self.pointer);
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
            fn setUserName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setUserName").setUserName(value);
            }
            fn setDefaultShippingAddress(pointer: *anyopaque, shippingAddress: ?*StreetAddress) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setDefaultShippingAddress").setDefaultShippingAddress(shippingAddress);
            }
            fn setBillingAddress(pointer: *anyopaque, billingAddress: ?*StreetAddress) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setBillingAddress").setBillingAddress(billingAddress);
            }
            fn setPaymentInfo(pointer: *anyopaque, payment: ?*Payment) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPaymentInfo").setPaymentInfo(payment);
            }
            fn setShipDate(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setShipDate").setShipDate(value);
            }
            fn setOrderDate(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setOrderDate").setOrderDate(value);
            }
            fn setTransDate(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTransDate").setTransDate(value);
            }
            fn setCancelDate(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setCancelDate").setCancelDate(value);
            }
            fn setStatus(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setStatus").setStatus(value);
            }
            fn setSubTotal(pointer: *anyopaque, value: ?*Money) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSubTotal").setSubTotal(value);
            }
            fn setShippingCost(pointer: *anyopaque, value: ?*Money) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setShippingCost").setShippingCost(value);
            }
            fn setTaxes(pointer: *anyopaque, value: ?*Money) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTaxes").setTaxes(value);
            }
            fn setTotal(pointer: *anyopaque, value: ?*Money) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTotal").setTotal(value);
            }
            fn getUserName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getUserName").getUserName());
            }
            fn getShippingAddress(pointer: *anyopaque) ?*StreetAddress {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*StreetAddress, Inheritance.receiver(implementation, "getShippingAddress").getShippingAddress());
            }
            fn getBillingAddress(pointer: *anyopaque) ?*StreetAddress {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*StreetAddress, Inheritance.receiver(implementation, "getBillingAddress").getBillingAddress());
            }
            fn getPaymentInfo(pointer: *anyopaque) ?*Payment {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Payment, Inheritance.receiver(implementation, "getPaymentInfo").getPaymentInfo());
            }
            fn getShipDate(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getShipDate").getShipDate());
            }
            fn getOrderDate(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getOrderDate").getOrderDate());
            }
            fn getTransDate(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTransDate").getTransDate());
            }
            fn getCancelDate(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCancelDate").getCancelDate());
            }
            fn getStatus(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getStatus").getStatus());
            }
            fn getSubTotal(pointer: *anyopaque) ?*Money {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Money, Inheritance.receiver(implementation, "getSubTotal").getSubTotal());
            }
            fn getShippingCost(pointer: *anyopaque) ?*Money {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Money, Inheritance.receiver(implementation, "getShippingCost").getShippingCost());
            }
            fn getTaxes(pointer: *anyopaque) ?*Money {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Money, Inheritance.receiver(implementation, "getTaxes").getTaxes());
            }
            fn getTotal(pointer: *anyopaque) ?*Money {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Money, Inheritance.receiver(implementation, "getTotal").getTotal());
            }
            fn getPaymentMethod(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPaymentMethod").getPaymentMethod());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .setUserNameFn = Methods.setUserName, .setDefaultShippingAddressFn = Methods.setDefaultShippingAddress, .setBillingAddressFn = Methods.setBillingAddress, .setPaymentInfoFn = Methods.setPaymentInfo, .setShipDateFn = Methods.setShipDate, .setOrderDateFn = Methods.setOrderDate, .setTransDateFn = Methods.setTransDate, .setCancelDateFn = Methods.setCancelDate, .setStatusFn = Methods.setStatus, .setSubTotalFn = Methods.setSubTotal, .setShippingCostFn = Methods.setShippingCost, .setTaxesFn = Methods.setTaxes, .setTotalFn = Methods.setTotal, .getUserNameFn = Methods.getUserName, .getShippingAddressFn = Methods.getShippingAddress, .getBillingAddressFn = Methods.getBillingAddress, .getPaymentInfoFn = Methods.getPaymentInfo, .getShipDateFn = Methods.getShipDate, .getOrderDateFn = Methods.getOrderDate, .getTransDateFn = Methods.getTransDate, .getCancelDateFn = Methods.getCancelDate, .getStatusFn = Methods.getStatus, .getSubTotalFn = Methods.getSubTotal, .getShippingCostFn = Methods.getShippingCost, .getTaxesFn = Methods.getTaxes, .getTotalFn = Methods.getTotal, .getPaymentMethodFn = Methods.getPaymentMethod };
        return this;
    }
};

