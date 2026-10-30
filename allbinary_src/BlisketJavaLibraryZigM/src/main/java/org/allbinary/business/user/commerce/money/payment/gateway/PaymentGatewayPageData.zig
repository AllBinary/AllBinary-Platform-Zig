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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const PaymentGatewayPageData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData";
    MAKEPAYMENT: ?*String = null,
    CHECKOUT: ?*String = null,
    SHIPPING: ?*String = null,
    SHIPPINGADDRESS: ?*String = null,
    SHIPPINGADDRESSACTION: ?*String = null,
    BILLINGADDRESS: ?*String = null,
    PAYMENT: ?*String = null,
    AUTHORIZE: ?*String = null,
    FINISH: ?*String = null,
    const EXTENSION: ?*String = String.literal(".jsp");
    var NAME: ?*String = undefined;
    pub const FORWARDMAKEPAYMENT: ?*String = String.literal("MakePayment.jsp");
    pub var PAYMENTOPTIONS: ?*String = undefined;
    pub var STARTCHECKOUT: ?*String = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NAME = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        PAYMENTOPTIONS = Inheritance.upcast(?*String, String.plus(String.literal("PaymentOptions"), PaymentGatewayPageData.EXTENSION));
        STARTCHECKOUT = Inheritance.upcast(?*String, String.plus(String.literal("StartCheckout"), PaymentGatewayPageData.EXTENSION));
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
        
        
        
    }
    

    pub fn create2(location: ?*String, paymentMethod: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const paymentMethodString: ?*String = Inheritance.upcast(?*String, String.plus(PaymentGatewayPageData.NAME, paymentMethod));
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ location });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("MakePayment") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PaymentGatewayPageData.EXTENSION });
        this.MAKEPAYMENT = Inheritance.upcast(@TypeOf(this.MAKEPAYMENT), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ paymentMethodString });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Checkout") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PaymentGatewayPageData.EXTENSION });
        this.CHECKOUT = Inheritance.upcast(@TypeOf(this.CHECKOUT), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ paymentMethodString });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Shipping") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PaymentGatewayPageData.EXTENSION });
        this.SHIPPING = Inheritance.upcast(@TypeOf(this.SHIPPING), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ paymentMethodString });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("ShippingAddress") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PaymentGatewayPageData.EXTENSION });
        this.SHIPPINGADDRESS = Inheritance.upcast(@TypeOf(this.SHIPPINGADDRESS), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ paymentMethodString });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("ShippingAddressAction") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PaymentGatewayPageData.EXTENSION });
        this.SHIPPINGADDRESSACTION = Inheritance.upcast(@TypeOf(this.SHIPPINGADDRESSACTION), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ paymentMethodString });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("BillingAddress") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PaymentGatewayPageData.EXTENSION });
        this.BILLINGADDRESS = Inheritance.upcast(@TypeOf(this.BILLINGADDRESS), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ paymentMethodString });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Payment") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PaymentGatewayPageData.EXTENSION });
        this.PAYMENT = Inheritance.upcast(@TypeOf(this.PAYMENT), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ paymentMethodString });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Authorize") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PaymentGatewayPageData.EXTENSION });
        this.AUTHORIZE = Inheritance.upcast(@TypeOf(this.AUTHORIZE), Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ paymentMethodString });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("PaymentFinish") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PaymentGatewayPageData.EXTENSION });
        this.FINISH = Inheritance.upcast(@TypeOf(this.FINISH), Object.toString(Object.of(stringBuffer)));
        return this;
    }
};

