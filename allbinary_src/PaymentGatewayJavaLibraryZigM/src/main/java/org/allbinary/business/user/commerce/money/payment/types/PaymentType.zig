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
// package org.allbinary.business.user.commerce.money.payment.types

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const PaymentGatewayData = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData.zig").PaymentGatewayData;
const PaymentProcessorInterfaceFactoryInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterfaceFactoryInterface.zig").PaymentProcessorInterfaceFactoryInterface;
const PaymentTransactionInterfaceFactoryInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterfaceFactoryInterface.zig").PaymentTransactionInterfaceFactoryInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const BasicPaymentType = @import("org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType.zig").BasicPaymentType;
const PaymentTypeUtil = @import("org/allbinary/business/user/commerce/money/payment/types/PaymentTypeUtil.zig").PaymentTypeUtil;

pub const PaymentType = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.types.PaymentType";
    basicPaymentType: ?*BasicPaymentType = null,
    paymentTransactionInterfaceFactoryInterface: ?*PaymentTransactionInterfaceFactoryInterface = null,
    paymentProcessorInterfaceFactoryInterface: ?*PaymentProcessorInterfaceFactoryInterface = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create1(basicPaymentType: ?*BasicPaymentType) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.basicPaymentType = basicPaymentType;
        this.paymentTransactionInterfaceFactoryInterface = null;
        this.paymentProcessorInterfaceFactoryInterface = null;
        _ = Inheritance.call(PaymentTypeUtil.getInstance().?, "add", .{ this });
        return this;
    }
    

    pub fn create3(basicPaymentType: ?*BasicPaymentType, paymentTransactionInterfaceFactoryInterface: ?*PaymentTransactionInterfaceFactoryInterface, paymentProcessorInterfaceFactoryInterface: ?*PaymentProcessorInterfaceFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.basicPaymentType = basicPaymentType;
        this.paymentTransactionInterfaceFactoryInterface = paymentTransactionInterfaceFactoryInterface;
        this.paymentProcessorInterfaceFactoryInterface = paymentProcessorInterfaceFactoryInterface;
        _ = Inheritance.call(PaymentTypeUtil.getInstance().?, "add", .{ this });
        return this;
    }
    

    // throws Exception
    pub fn getPaymentTransactionInterfaceFactoryInterface(self: *Self) ?*PaymentTransactionInterfaceFactoryInterface {
        if (self.paymentTransactionInterfaceFactoryInterface == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("PaymentTransactionInterfaceFactoryInterface is Null"); break :exception error.Exception; }});
        }
        return self.paymentTransactionInterfaceFactoryInterface;
    }
    

    // throws Exception
    pub fn getPaymentProcessorInterfaceFactoryInterface(self: *Self) ?*PaymentProcessorInterfaceFactoryInterface {
        if (self.paymentProcessorInterfaceFactoryInterface == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("PaymentProcessorInterfaceFactoryInterface is Null"); break :exception error.Exception; }});
        }
        return self.paymentProcessorInterfaceFactoryInterface;
    }
    

    pub fn toVector(self: *Self) ?*BasicArrayList {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(vector.?, "addAllList", .{ Inheritance.receiverOf(self.getBasicPaymentType().?, "toVector").toVector() });
        if (self.paymentTransactionInterfaceFactoryInterface != null) {
            _ = Inheritance.call(vector.?, "add", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self.paymentTransactionInterfaceFactoryInterface).?.class))).?))).name) });
        }
        if (self.paymentProcessorInterfaceFactoryInterface != null) {
            _ = Inheritance.call(vector.?, "add", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self.paymentProcessorInterfaceFactoryInterface).?.class))).?))).name) });
        }
        return vector;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "putAll", .{ Inheritance.receiverOf(self.getBasicPaymentType().?, "toHashMap").toHashMap() });
        if (self.paymentTransactionInterfaceFactoryInterface != null) {
            _ = Inheritance.call(hashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE)), String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self.paymentTransactionInterfaceFactoryInterface).?.class))).?))).name) });
        }
        if (self.paymentProcessorInterfaceFactoryInterface != null) {
            _ = Inheritance.call(hashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.PAYMENTPROCESSORINTERFACEFACTORYINTERFACE)), String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self.paymentProcessorInterfaceFactoryInterface).?.class))).?))).name) });
        }
        return hashMap;
    }
    

    pub fn getBasicPaymentType(self: *Self) ?*BasicPaymentType {
        return self.basicPaymentType;
    }
};

