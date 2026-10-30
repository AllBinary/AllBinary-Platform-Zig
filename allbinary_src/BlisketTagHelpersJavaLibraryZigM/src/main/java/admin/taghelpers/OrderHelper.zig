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
// package admin.taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const Order = @import("org/allbinary/business/user/commerce/inventory/order/Order.zig").Order;
const OrderInterface = @import("org/allbinary/business/user/commerce/inventory/order/OrderInterface.zig").OrderInterface;
const OrderProcessorUtil = @import("org/allbinary/business/user/commerce/inventory/order/OrderProcessorUtil.zig").OrderProcessorUtil;
const PaymentGatewayData = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData.zig").PaymentGatewayData;
const PaymentGatewayInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface.zig").PaymentGatewayInterface;
const BasicPaymentType = @import("org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType.zig").BasicPaymentType;
const PaymentGatewayEntity = @import("org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntity.zig").PaymentGatewayEntity;
const PaymentGatewayEntityFactory = @import("org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityFactory.zig").PaymentGatewayEntityFactory;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TagHelper = @import("admin/taghelpers/TagHelper.zig").TagHelper;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const OrderHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.OrderHelper";
    base: TagHelper = undefined,
    logUtil: ?*LogUtil = null,
    weblisketSession: ?*WeblisketSession = null,
    storeFrontInterface: ?*StoreFrontInterface = null,
    propertiesHashMap: ?*HashMap = null,
    pageContext: ?*PageContext = null,
    request: ?*HttpServletRequest = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.storeFrontInterface = null;
        
        
        
    }
    

    pub fn create2(propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TagHelper.create().*;
        this.initFields();
        this.propertiesHashMap = propertiesHashMap;
        this.pageContext = pageContext;
        this.request = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
        const storeName: ?*String = Inheritance.cast(?*String, Inheritance.call(propertiesHashMap.?, "get", .{ StoreFrontData.getInstance().?.NAME }));
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ storeName })) {
            this.storeFrontInterface = Inheritance.upcast(@TypeOf(this.storeFrontInterface), Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ storeName }));
        }
        this.weblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ this.propertiesHashMap, this.pageContext });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setPaymentGateway(self: *Self) ?*Boolean {
        { // try
            var paymentGatewayBoolean: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.FALSE);
            const orderInterface: ?*OrderInterface = Inheritance.upcast(?*OrderInterface, self.weblisketSession.?.getOrder());
            const requestPaymentGateway: ?*String = Inheritance.cast(?*String, Inheritance.call(self.request.?, "getParameter", .{ Object.toString(Object.of(PaymentGatewayData.NAME)) }));
            if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ requestPaymentGateway })) {
                _ = Inheritance.call(self.weblisketSession.?, "setPaymentMethod", .{ requestPaymentGateway });
                _ = Inheritance.call(orderInterface.?, "setPaymentMethod", .{ requestPaymentGateway });
                paymentGatewayBoolean = Inheritance.upcast(@TypeOf(paymentGatewayBoolean), Boolean.TRUE);
            }
            const paymentGatewayEntityInterface: ?*PaymentGatewayEntity = Inheritance.cast(?*PaymentGatewayEntity, PaymentGatewayEntityFactory.getInstance());
            const paymentTypeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(paymentGatewayEntityInterface.?, "findPaymentTypeVectorByStore", .{ self.weblisketSession.?.getStoreName() }));
            if (paymentTypeVector.?.size() == 1) {
                const paymentType: ?*BasicPaymentType = Inheritance.cast(?*BasicPaymentType, Inheritance.call(paymentTypeVector.?, "get", .{ 0 }));
                const paymentGatewayInterface: ?*PaymentGatewayInterface = Inheritance.cast(?*PaymentGatewayInterface, Inheritance.call(paymentGatewayEntityInterface.?, "getPaymentGatewayInterface", .{ self.weblisketSession.?.getStoreName(), paymentType }));
                const paymentGateway: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(paymentGatewayInterface.?, "getName").getName());
                _ = Inheritance.call(self.weblisketSession.?, "setPaymentMethod", .{ paymentGateway });
                _ = Inheritance.call(orderInterface.?, "setPaymentMethod", .{ paymentGateway });
                paymentGatewayBoolean = Inheritance.upcast(@TypeOf(paymentGatewayBoolean), Boolean.TRUE);
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Successfully set PaymentGateway Order: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ orderInterface.?.getId() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ orderInterface.?.getPaymentMethod() });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("setPaymentGateway()") });
            }
            return paymentGatewayBoolean;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 const stringBuffer: ?*StringMaker = StringMaker.create();
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Failed to set PaymentGateway for Order: ") });
//                 { // try
//                     const orderInterface: ?*OrderInterface = Inheritance.upcast(?*OrderInterface, self.weblisketSession.?.getOrder());
//                     if (orderInterface != null) {
//                         _ = Inheritance.call(stringBuffer.?, "append", .{ orderInterface.?.getId() });
//                         _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to: ") });
//                         _ = Inheritance.call(stringBuffer.?, "append", .{ orderInterface.?.getPaymentMethod() });
//                     }
//                 }
//                 // catch (Exception ex):
// //                     _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Exception Getting") });
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("setPaymentGateway()"), e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn process(self: *Self) ?*String {
        { // try
            const order: ?*OrderInterface = Inheritance.upcast(?*OrderInterface, self.weblisketSession.?.getOrder());
            _ = Inheritance.call(order.?, "setStoreName", .{ Inheritance.receiver(self.storeFrontInterface.?, "getName").getName() });
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(OrderProcessorUtil.getInstance().?, "process", .{ self.weblisketSession.?.getUserName(), Inheritance.cast(?*Order, order) }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Successfully Processed Order: "), result), self, String.literal("processOrder()") });
            }
            return result;
        }
        // catch (Exception e):
//             const stringBuffer: ?*StringMaker = StringMaker.create(); _ = stringBuffer;
//             _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Failed to Process Order: ") });
//             { // try
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(self.weblisketSession.?.getOrder().?, "getId").getId() });
//             }
//             // catch (Exception ex):
// //                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Exception Getting Id") });
//             const @"error": ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer))); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS, e });
//             }
//             return @"error";
    }
};

