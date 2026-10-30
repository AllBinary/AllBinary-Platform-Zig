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
const PaymentGatewayInterfaceFactoryInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterfaceFactoryInterface.zig").PaymentGatewayInterfaceFactoryInterface;
const PaymentGatewayDomNodeFactoryInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/modules/gateway/PaymentGatewayDomNodeFactoryInterface.zig").PaymentGatewayDomNodeFactoryInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const Replace = @import("org/allbinary/logic/string/regex/replace/Replace.zig").Replace;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicPaymentTypeUtil = @import("org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil.zig").BasicPaymentTypeUtil;

pub const BasicPaymentType = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType";
    name: ?*String = null,
    value: ?*String = null,
    paymentGatewayInterfaceFactoryInterface: ?*PaymentGatewayInterfaceFactoryInterface = null,
    paymentGatewayDomNodeFactoryInterface: ?*PaymentGatewayDomNodeFactoryInterface = null,

    fn initFields(this: *Self) void {
        this.name = null;
        this.value = null;
        
        
    }
    

    pub fn create1(paymentMethod: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "init", .{ paymentMethod });
        return this;
    }
    

    pub fn create3(paymentMethod: ?*String, paymentGatewayInterfaceFactoryInterface: ?*PaymentGatewayInterfaceFactoryInterface, paymentGatewayDomNodeFactoryInterface: ?*PaymentGatewayDomNodeFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "init", .{ paymentMethod });
        this.paymentGatewayInterfaceFactoryInterface = paymentGatewayInterfaceFactoryInterface;
        this.paymentGatewayDomNodeFactoryInterface = paymentGatewayDomNodeFactoryInterface;
        return this;
    }
    

    pub fn init(self: *Self, paymentMethod: ?*String) void {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const UNDERSCORE: ?*String = String.literal("_");
        _ = Inheritance.call(hashMap.?, "put", .{ CommonSeps.getInstance().?.SPACE, UNDERSCORE });
        _ = Inheritance.call(hashMap.?, "put", .{ AbPathData.getInstance().?.EXTENSION_SEP, UNDERSCORE });
        _ = Inheritance.call(hashMap.?, "put", .{ String.literal("-"), UNDERSCORE });
        const replace: ?*Replace = Inheritance.callStatic(Replace, "create1", .{ hashMap });
        self.name = Inheritance.upcast(@TypeOf(self.name), Inheritance.call(replace.?, "all", .{ paymentMethod }));
        self.value = paymentMethod;
        _ = Inheritance.call(BasicPaymentTypeUtil.getInstance().?, "add", .{ self });
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getValue(self: *Self) ?*String {
        return self.value;
    }
    

    // throws Exception
    pub fn getPaymentGatewayInterfaceFactoryInterface(self: *Self) ?*PaymentGatewayInterfaceFactoryInterface {
        if (self.paymentGatewayInterfaceFactoryInterface == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("PaymentGatewayInterfaceFactoryInterface is Null"); break :exception error.Exception; }});
        }
        return self.paymentGatewayInterfaceFactoryInterface;
    }
    

    // throws Exception
    pub fn getPaymentGatewayDomNodeFactoryInterface(self: *Self) ?*PaymentGatewayDomNodeFactoryInterface {
        if (self.paymentGatewayDomNodeFactoryInterface == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("PaymentGatewayDomNodeFactoryInterface is Null"); break :exception error.Exception; }});
        }
        return self.paymentGatewayDomNodeFactoryInterface;
    }
    

    pub fn getKey(self: *Self) ?Object {
        return Inheritance.upcast(?Object, self.getName());
    }
    

    pub fn toVector(self: *Self) ?*BasicArrayList {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(vector.?, "add", .{ self.name });
        _ = Inheritance.call(vector.?, "add", .{ self.value });
        return vector;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.NAME)), self.name });
        _ = Inheritance.call(hashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.VALUE)), self.value });
        return hashMap;
    }
    

    pub fn toString(self: *Self) ?*String {
        return self.name;
    }
};

