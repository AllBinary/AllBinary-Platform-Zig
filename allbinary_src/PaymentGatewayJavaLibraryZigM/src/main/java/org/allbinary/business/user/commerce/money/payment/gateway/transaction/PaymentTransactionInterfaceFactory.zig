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
// package org.allbinary.business.user.commerce.money.payment.gateway.transaction

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const OrderHistory = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistory.zig").OrderHistory;
const PaymentType = @import("org/allbinary/business/user/commerce/money/payment/types/PaymentType.zig").PaymentType;
const PaymentTypeUtil = @import("org/allbinary/business/user/commerce/money/payment/types/PaymentTypeUtil.zig").PaymentTypeUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const PaymentTransactionInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface.zig").PaymentTransactionInterface;
const PaymentTransactionInterfaceFactoryInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterfaceFactoryInterface.zig").PaymentTransactionInterfaceFactoryInterface;

pub const PaymentTransactionInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory";
    logUtil: ?*LogUtil = null,
    var instance: ?*PaymentTransactionInterfaceFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PaymentTransactionInterfaceFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*PaymentTransactionInterfaceFactory {
        return Inheritance.upcast(?*PaymentTransactionInterfaceFactory, PaymentTransactionInterfaceFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getInstance1(self: *Self, orderReview: ?*OrderHistory) ?*PaymentTransactionInterface {
        _ = self;
        { // try
            const gatewayName: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(orderReview.?, "getPaymentMethod").getPaymentMethod());
            if (gatewayName != null) {
                const paymentType: ?*PaymentType = Inheritance.upcast(?*PaymentType, Inheritance.call(PaymentTypeUtil.getInstance().?, "get", .{ gatewayName }));
                const paymentTransactionInterfaceFactoryInterface: ?*PaymentTransactionInterfaceFactoryInterface = Inheritance.upcast(?*PaymentTransactionInterfaceFactoryInterface, paymentType.?.getPaymentTransactionInterfaceFactoryInterface());
                const paymentTransactionInterface: ?*PaymentTransactionInterface = Inheritance.upcast(?*PaymentTransactionInterface, Inheritance.call(paymentTransactionInterfaceFactoryInterface.?, "getInstance", .{ orderReview }));
                return paymentTransactionInterface;
            }
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.plus(String.literal("Failed to create PaymentTransactionInterface: "), String.literal("GatewayName is: ")), gatewayName); break :exception error.Exception; }});
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PAYMENTERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate test data"), self, commonStrings.?.GET_INSTANCE, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

