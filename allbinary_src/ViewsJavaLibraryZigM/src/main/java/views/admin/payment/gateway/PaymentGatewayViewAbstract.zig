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
// package views.admin.payment.gateway

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const PaymentGatewayData = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData.zig").PaymentGatewayData;
const PaymentGatewayPrimaryKey = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayPrimaryKey.zig").PaymentGatewayPrimaryKey;
const TransformInfoHttpComposite = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpComposite.zig").TransformInfoHttpComposite;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;

pub const PaymentGatewayViewAbstract = struct {
    const Self = @This();
    pub const java_name = "views.admin.payment.gateway.PaymentGatewayViewAbstract";
    base: TransformInfoHttpComposite = undefined,
    paymentGatewayPrimaryKey: ?*PaymentGatewayPrimaryKey = null,

    fn initFields(this: *Self) void {
        this.paymentGatewayPrimaryKey = null;
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoHttpComposite, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        _ = Inheritance.call(this, "getFormData", .{ Inheritance.cast(?*HttpServletRequest, Inheritance.receiverOf(Inheritance.receiver(this, "getPageContext").getPageContext().?, "getRequest").getRequest()) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getFormData(self: *Self, request: ?*HttpServletRequest) void {
        const storeName: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getStoreName").getStoreName());
        const gatewayName: ?*String = Inheritance.upcast(?*String, Inheritance.call(request.?, "getParameter", .{ Object.toString(Object.of(PaymentGatewayData.NAME)) }));
        _ = Inheritance.call(self, "setPaymentGatewayPrimaryKey", .{ Inheritance.callStatic(PaymentGatewayPrimaryKey, "create2", .{ storeName, gatewayName }) });
    }
    

    pub fn getPaymentGatewayPrimaryKey(self: *Self) ?*PaymentGatewayPrimaryKey {
        return self.paymentGatewayPrimaryKey;
    }
    

    pub fn setPaymentGatewayPrimaryKey(self: *Self, paymentGatewayPrimaryKey: ?*PaymentGatewayPrimaryKey) void {
        self.paymentGatewayPrimaryKey = paymentGatewayPrimaryKey;
    }
};

