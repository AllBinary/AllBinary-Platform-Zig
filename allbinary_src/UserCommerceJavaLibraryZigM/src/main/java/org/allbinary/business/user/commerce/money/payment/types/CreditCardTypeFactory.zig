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
const CreditCardType = @import("org/allbinary/business/user/commerce/money/payment/types/CreditCardType.zig").CreditCardType;

pub const CreditCardTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory";
    VISA: ?*CreditCardType = null,
    MASTERCARD: ?*CreditCardType = null,
    DISCOVER: ?*CreditCardType = null,
    AMERICANEXPRESS: ?*CreditCardType = null,
    var instance: ?*CreditCardTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CreditCardTypeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.VISA = Inheritance.callStatic(CreditCardType, "create1", .{ String.literal("Visa") });
        this.MASTERCARD = Inheritance.callStatic(CreditCardType, "create1", .{ String.literal("MasterCard") });
        this.DISCOVER = Inheritance.callStatic(CreditCardType, "create1", .{ String.literal("Discover") });
        this.AMERICANEXPRESS = Inheritance.callStatic(CreditCardType, "create1", .{ String.literal("AMX") });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CreditCardTypeFactory {
        return Inheritance.upcast(?*CreditCardTypeFactory, CreditCardTypeFactory.instance);
    }
};

