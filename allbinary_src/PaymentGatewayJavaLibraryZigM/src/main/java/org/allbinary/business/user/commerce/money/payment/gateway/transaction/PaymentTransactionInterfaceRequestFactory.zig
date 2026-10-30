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
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const Basket = @import("org/allbinary/business/user/commerce/inventory/basket/Basket.zig").Basket;
const OrderHistory = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistory.zig").OrderHistory;
const OrderInterface = @import("org/allbinary/business/user/commerce/inventory/order/OrderInterface.zig").OrderInterface;
const Money = @import("org/allbinary/business/user/commerce/money/Money.zig").Money;
const Payment = @import("org/allbinary/business/user/commerce/money/payment/Payment.zig").Payment;
const PaymentData = @import("org/allbinary/business/user/commerce/money/payment/PaymentData.zig").PaymentData;
const PaymentGatewayData = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData.zig").PaymentGatewayData;
const TenderTypeFactory = @import("org/allbinary/business/user/commerce/money/payment/types/TenderTypeFactory.zig").TenderTypeFactory;
const TransactionTypeFactory = @import("org/allbinary/business/user/commerce/money/payment/types/TransactionTypeFactory.zig").TransactionTypeFactory;
const OrderIdGenerator = @import("org/allbinary/data/generator/OrderIdGenerator.zig").OrderIdGenerator;
const OrderHistoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory.zig").OrderHistoryEntityFactory;
const OrderHistoryEntityInterface = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityInterface.zig").OrderHistoryEntityInterface;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const PaymentTransactionInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface.zig").PaymentTransactionInterface;
const PaymentTransactionInterfaceFactory = @import("org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterfaceFactory.zig").PaymentTransactionInterfaceFactory;

pub const PaymentTransactionInterfaceRequestFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceRequestFactory";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    var instance: ?*PaymentTransactionInterfaceRequestFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PaymentTransactionInterfaceRequestFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn getInstance() ?*PaymentTransactionInterfaceRequestFactory {
        return Inheritance.upcast(?*PaymentTransactionInterfaceRequestFactory, PaymentTransactionInterfaceRequestFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getInstance1(self: *Self, transformInfoInterface: ?*TransformInfoInterface) ?*PaymentTransactionInterface {
        { // try
            const httpTransformInfoInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, transformInfoInterface);
            const pageContext: ?*PageContext = Inheritance.upcast(?*PageContext, Inheritance.receiver(httpTransformInfoInterface.?, "getPageContext").getPageContext());
            const httpServletRequest: ?*HttpServletRequest = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
            const command: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ org.allbinary.?.globals.?.GLOBALS2.?.ADMINCOMMAND }));
            if (command != null and Inheritance.call(command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.AUTHORIZEFORMEVALBODYONERROR }) == 0) {
                return Inheritance.upcast(?*PaymentTransactionInterface, Inheritance.call(self, "generateFromTestData", .{ transformInfoInterface }));
            } else {
                const propertiesHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap());
                const weblisketSession: ?*WeblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ propertiesHashMap, pageContext });
                const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ weblisketSession.?.getStoreName() })); _ = storeFrontInterface;
                const order: ?*OrderInterface = Inheritance.upcast(?*OrderInterface, weblisketSession.?.getOrder());
                const orderId: ?*String = Inheritance.upcast(?*String, order.?.getId());
                const orderHistoryEntityInterface: ?*OrderHistoryEntityInterface = Inheritance.upcast(?*OrderHistoryEntityInterface, OrderHistoryEntityFactory.getInstance());
                const orderReview: ?*OrderHistory = Inheritance.upcast(?*OrderHistory, Inheritance.call(orderHistoryEntityInterface.?, "getOrder", .{ orderId }));
                const orderPaymentInfo: ?*Payment = Inheritance.upcast(?*Payment, Inheritance.receiver(orderReview.?, "getPaymentInfo").getPaymentInfo());
                _ = Inheritance.call(orderPaymentInfo.?, "setTransactionType", .{ Object.toString(Object.of(TransactionTypeFactory.getInstance().?.SALE)) });
                _ = Inheritance.call(orderPaymentInfo.?, "setTenderType", .{ Object.toString(Object.of(TenderTypeFactory.getInstance().?.CREDITCARD)) });
                _ = Inheritance.call(orderReview.?, "setPaymentInfo", .{ orderPaymentInfo });
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PAYMENT })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.receiver(orderReview.?, "getId").getId(), self, String.literal("getPaymentTransactionInterface()") });
                }
                const paymentTransactionInterface: ?*PaymentTransactionInterface = Inheritance.upcast(?*PaymentTransactionInterface, Inheritance.call(PaymentTransactionInterfaceFactory.getInstance().?, "getInstance", .{ orderReview }));
                return paymentTransactionInterface;
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PAYMENTERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getPaymentTransactionInterface()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn generateFromTestData(self: *Self, transformInfoInterface: ?*TransformInfoInterface) ?*PaymentTransactionInterface {
        _ = self;
        { // try
            const httpTransformInfoInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, transformInfoInterface);
            const propertiesHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap());
            const pageContext: ?*PageContext = Inheritance.upcast(?*PageContext, Inheritance.receiver(httpTransformInfoInterface.?, "getPageContext").getPageContext());
            const weblisketSession: ?*WeblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ propertiesHashMap, pageContext });
            const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ weblisketSession.?.getStoreName() }));
            const httpServletRequest: ?*HttpServletRequest = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
            var gatewayName: ?*String = Inheritance.cast(?*String, weblisketSession.?.getPaymentMethod());
            if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ gatewayName })) {
                gatewayName = Inheritance.upcast(@TypeOf(gatewayName), Inheritance.call(httpServletRequest.?, "getParameter", .{ Object.toString(Object.of(PaymentGatewayData.NAME)) }));
            }
            const transactionType: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ PaymentData.TRANSACTIONTYPE }));
            const tenderType: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ PaymentData.TENDERTYPE }));
            const payment: ?*Payment = Payment.create();
            _ = Inheritance.call(payment.?, "setTransactionType", .{ transactionType });
            _ = Inheritance.call(payment.?, "setTenderType", .{ tenderType });
            const orderReview: ?*OrderHistory = Inheritance.callStatic(OrderHistory, "create1", .{ Basket.create() });
            _ = Inheritance.call(orderReview.?, "setStoreName", .{ Inheritance.receiver(storeFrontInterface.?, "getName").getName() });
            _ = Inheritance.call(orderReview.?, "setPaymentMethod", .{ gatewayName });
            _ = Inheritance.call(orderReview.?, "setUserName", .{ String.literal("testing") });
            var orderId: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ String.literal("orderNumber") }));
            if (orderId == null or Inheritance.call(orderId.?, "compareTo", .{ StringUtil.getInstance().?.EMPTY_STRING }) == 0) {
                orderId = Inheritance.upcast(@TypeOf(orderId), Inheritance.receiver(OrderIdGenerator.create(), "getNext").getNext());
                _ = Inheritance.call(orderReview.?, "setId", .{ orderId });
                const account: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ String.literal("account") }));
                const expirationDate: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ String.literal("expirationDate") }));
                const checkNumber: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ String.literal("checkNumber") }));
                const driversLicense: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ String.literal("driversLicense") }));
                const magneticInkCheckReader: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ String.literal("magneticInkCheckReader") }));
                const aba: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ String.literal("aba") }));
                const accountType: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ String.literal("accountType") }));
                const name: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ String.literal("name") }));
                _ = Inheritance.call(payment.?, "setName", .{ name });
                _ = Inheritance.call(payment.?, "setNumber", .{ account });
                _ = Inheritance.call(payment.?, "setExpiration", .{ expirationDate });
                _ = Inheritance.call(payment.?, "setCheckNumber", .{ checkNumber });
                _ = Inheritance.call(payment.?, "setDriversLicense", .{ driversLicense });
                _ = Inheritance.call(payment.?, "setMagneticInkCheckReader", .{ magneticInkCheckReader });
                _ = Inheritance.call(payment.?, "setAba", .{ aba });
                _ = Inheritance.call(payment.?, "setAccountType", .{ accountType });
                const street: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ String.literal("street") }));
                const city: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ String.literal("city") }));
                const state: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ String.literal("state") }));
                const zip: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ String.literal("zip") }));
                const streetAddress: ?*StreetAddress = StreetAddress.create();
                _ = Inheritance.call(streetAddress.?, "setName", .{ name });
                _ = Inheritance.call(streetAddress.?, "setStreet", .{ street });
                _ = Inheritance.call(streetAddress.?, "setCity", .{ city });
                _ = Inheritance.call(streetAddress.?, "setState", .{ state });
                _ = Inheritance.call(streetAddress.?, "setCode", .{ zip });
                const email: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ String.literal("email") })); _ = email;
                const amount: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getParameter", .{ String.literal("amount") }));
                _ = Inheritance.call(orderReview.?, "setTotal", .{ Inheritance.callStatic(Money, "create1", .{ amount }) });
                _ = Inheritance.call(orderReview.?, "setBillingAddress", .{ streetAddress });
            } else {
                _ = Inheritance.call(orderReview.?, "setId", .{ orderId });
            }
            _ = Inheritance.call(orderReview.?, "setPaymentInfo", .{ payment });
            const paymentTransactionInterface: ?*PaymentTransactionInterface = Inheritance.upcast(?*PaymentTransactionInterface, Inheritance.call(PaymentTransactionInterfaceFactory.getInstance().?, "getInstance", .{ orderReview }));
            return paymentTransactionInterface;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PAYMENTERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("generatePaymentTransactionInterfaceFromTestData()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

