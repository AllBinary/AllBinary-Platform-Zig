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
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const BasicPaymentType = @import("org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType.zig").BasicPaymentType;
const BasicPaymentTypeUtil = @import("org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil.zig").BasicPaymentTypeUtil;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const RequestParams = @import("org/allbinary/logic/communication/http/request/RequestParams.zig").RequestParams;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const PaymentGatewayData = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData.zig").PaymentGatewayData;
const PaymentGatewayInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface.zig").PaymentGatewayInterface;
const PaymentGatewayInterfaceFactoryInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterfaceFactoryInterface.zig").PaymentGatewayInterfaceFactoryInterface;

pub const PaymentGatewayInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory";
    pub const java_interfaces = .{ PaymentGatewayInterfaceFactoryInterface };
    logUtil: ?*LogUtil = null,
    // Implements PaymentGatewayInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, httpServletRequest: ?*HttpServletRequest) ?*PaymentGatewayInterface {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PAYMENT })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Getting"), self, commonStrings.?.GET_INSTANCE });
            }
            return Inheritance.upcast(?*PaymentGatewayInterface, Inheritance.call(self, "getInstance", .{ Inheritance.callStatic(RequestParams, "create1", .{ httpServletRequest }).toHashMap() }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PAYMENTERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("getInstance(HttpServletRequest)"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance(self: *Self, paymentType: ?*BasicPaymentType) ?*PaymentGatewayInterface {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ Object.toString(Object.of(PaymentGatewayData.NAME)), paymentType.?.getName() });
        return Inheritance.upcast(?*PaymentGatewayInterface, Inheritance.call(self, "getInstance", .{ hashMap }));
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance(self: *Self, hashMap: ?*HashMap) ?*PaymentGatewayInterface {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        { // try
            const gatewayName: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Object.toString(Object.of(PaymentGatewayData.NAME)) }));
            const paymentType: ?*BasicPaymentType = Inheritance.upcast(?*BasicPaymentType, Inheritance.call(BasicPaymentTypeUtil.getInstance().?, "get", .{ gatewayName }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PAYMENT })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Getting PaymentGatewayInterface for PaymentType: "), paymentType.?.getName()), String.literal(" with: ")), hashMap), self, commonStrings.?.GET_INSTANCE });
            }
            const paymentGatewayInterfaceFactoryInterface: ?*PaymentGatewayInterfaceFactoryInterface = Inheritance.upcast(?*PaymentGatewayInterfaceFactoryInterface, paymentType.?.getPaymentGatewayInterfaceFactoryInterface());
            return Inheritance.upcast(?*PaymentGatewayInterface, Inheritance.call(paymentGatewayInterfaceFactoryInterface.?, "getInstance", .{ hashMap }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PAYMENTERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET_INSTANCE, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

