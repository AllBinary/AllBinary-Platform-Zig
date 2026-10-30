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
// package org.allbinary.business.user.commerce.money.payment.gateway.processor

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PaymentTransactionInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface.zig").PaymentTransactionInterface;
const PaymentTransactionInterfaceRequestFactory = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterfaceRequestFactory.zig").PaymentTransactionInterfaceRequestFactory;
const PaymentType = @import("org/allbinary/business/user/commerce/money/payment/types/PaymentType.zig").PaymentType;
const PaymentTypeUtil = @import("org/allbinary/business/user/commerce/money/payment/types/PaymentTypeUtil.zig").PaymentTypeUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const PaymentProcessorInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterface.zig").PaymentProcessorInterface;
const PaymentProcessorInterfaceFactoryInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterfaceFactoryInterface.zig").PaymentProcessorInterfaceFactoryInterface;

pub const PaymentProcessorInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory";
    logUtil: ?*LogUtil = null,
    var instance: ?*PaymentProcessorInterfaceFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PaymentProcessorInterfaceFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*PaymentProcessorInterfaceFactory {
        return Inheritance.upcast(?*PaymentProcessorInterfaceFactory, PaymentProcessorInterfaceFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getInstance1(self: *Self, transformInfoInterface: ?*TransformInfoInterface) ?*PaymentProcessorInterface {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const paymentTransactionInterface: ?*PaymentTransactionInterface = Inheritance.upcast(?*PaymentTransactionInterface, Inheritance.call(PaymentTransactionInterfaceRequestFactory.getInstance().?, "getInstance", .{ transformInfoInterface }));
            const gatewayName: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(Inheritance.receiver(paymentTransactionInterface.?, "getOrderHistory").getOrderHistory().?, "getPaymentMethod").getPaymentMethod());
            if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ gatewayName })) {
                const paymentType: ?*PaymentType = Inheritance.upcast(?*PaymentType, Inheritance.call(PaymentTypeUtil.getInstance().?, "get", .{ gatewayName }));
                const paymentProcessorInterfaceFactoryInterface: ?*PaymentProcessorInterfaceFactoryInterface = Inheritance.upcast(?*PaymentProcessorInterfaceFactoryInterface, paymentType.?.getPaymentProcessorInterfaceFactoryInterface());
                return Inheritance.cast(?*PaymentProcessorInterface, Inheritance.call(paymentProcessorInterfaceFactoryInterface.?, "getInstance", .{ transformInfoInterface, paymentTransactionInterface }));
            }
            std.debug.panic("{any}", .{exception: { _ = String.literal("Error Getting PaymentProcessorInterface"); break :exception error.Exception; }});
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PAYMENTERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET_INSTANCE, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

