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
const StoreFront = @import("org/allbinary/business/context/modules/storefront/StoreFront.zig").StoreFront;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const PaymentGateway = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGateway.zig").PaymentGateway;

pub const PaymentGatewayPrimaryKey = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey";
    storeName: ?*String = null,
    name: ?*String = null,
    // Implements Serializable

    fn initFields(this: *Self) void {
        this.storeName = null;
        this.name = null;
    }
    

    pub fn create2(storeName: ?*String, gatewayName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setStoreName", .{ storeName });
        _ = Inheritance.call(this, "setName", .{ gatewayName });
        return this;
    }
    

    pub fn getStoreName(self: *Self) ?*String {
        return self.storeName;
    }
    

    pub fn setStoreName(self: *Self, storeName: ?*String) void {
        self.storeName = storeName;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(PaymentGatewayPrimaryKey.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(StoreFront.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" =") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getStoreName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(PaymentGateway.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("=") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getName() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

