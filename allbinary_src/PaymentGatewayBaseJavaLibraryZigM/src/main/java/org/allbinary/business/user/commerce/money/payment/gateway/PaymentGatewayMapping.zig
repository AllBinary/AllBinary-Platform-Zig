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
// package org.allbinary.business.user.commerce.money.payment.gateway

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;
const PaymentGatewayInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface.zig").PaymentGatewayInterface;

pub const PaymentGatewayMapping = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping";
    paymentGatewayInterface: ?*PaymentGatewayInterface = null,
    // Implements TableMappingInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(paymentGatewayInterface: ?*PaymentGatewayInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.paymentGatewayInterface = paymentGatewayInterface;
        return this;
    }
    

    // throws Exception
    pub fn toHashMap(self: *Self) ?*HashMap {
        return Inheritance.upcast(?*HashMap, Inheritance.call(self.paymentGatewayInterface.?, "toHashMap", .{ false }));
    }
    

    pub fn toVector(self: *Self) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.paymentGatewayInterface.?, "toVector", .{ false }));
    }
    

    // throws Exception
    pub fn getKey(self: *Self) ?Object {
        return Inheritance.cast(?Object, Inheritance.receiver(self.paymentGatewayInterface.?, "getKey").getKey());
    }
};

