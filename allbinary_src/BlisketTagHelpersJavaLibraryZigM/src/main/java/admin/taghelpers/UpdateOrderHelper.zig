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
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const BillingAddressData = @import("org/allbinary/business/user/address/BillingAddressData.zig").BillingAddressData;
const ShippingAddressData = @import("org/allbinary/business/user/address/ShippingAddressData.zig").ShippingAddressData;
const OrderData = @import("org/allbinary/business/user/commerce/inventory/order/OrderData.zig").OrderData;
const OrderHistoryData = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryData.zig").OrderHistoryData;
const PaymentData = @import("org/allbinary/business/user/commerce/money/payment/PaymentData.zig").PaymentData;
const ShippingMethodData = @import("org/allbinary/business/user/commerce/shipping/ShippingMethodData.zig").ShippingMethodData;
const OrderHistoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory.zig").OrderHistoryEntityFactory;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const TagHelper = @import("admin/taghelpers/TagHelper.zig").TagHelper;

pub const UpdateOrderHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.UpdateOrderHelper";
    base: TagHelper = undefined,
    logUtil: ?*LogUtil = null,
    request: ?*HttpServletRequest = null,
    entryId: ?*String = null,
    orderId: ?*String = null,
    userName: ?*String = null,
    storeName: ?*String = null,
    shipDate: ?*String = null,
    orderDate: ?*String = null,
    transDate: ?*String = null,
    cancelDate: ?*String = null,
    status: ?*String = null,
    paymentMethod: ?*String = null,
    name: ?*String = null,
    @"type": ?*String = null,
    expiration: ?*String = null,
    number: ?*String = null,
    encryption: ?*String = null,
    billingName: ?*String = null,
    billingStreet: ?*String = null,
    billingCity: ?*String = null,
    billingState: ?*String = null,
    billingCode: ?*String = null,
    billingCountry: ?*String = null,
    shippingName: ?*String = null,
    shippingStreet: ?*String = null,
    shippingCity: ?*String = null,
    shippingState: ?*String = null,
    shippingCode: ?*String = null,
    shippingCountry: ?*String = null,
    shippingMethodName: ?*String = null,
    subTotal: ?*String = null,
    shippingCost: ?*String = null,
    tax: ?*String = null,
    total: ?*String = null,
    special: ?*String = null,
    userComment: ?*String = null,
    userCancelComment: ?*String = null,
    storeComment: ?*String = null,
    storeCancelComment: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.entryId = null;
        this.orderId = null;
        this.userName = null;
        this.storeName = null;
        this.shipDate = null;
        this.orderDate = null;
        this.transDate = null;
        this.cancelDate = null;
        this.status = null;
        this.paymentMethod = null;
        this.name = null;
        this.@"type" = null;
        this.expiration = null;
        this.number = null;
        this.encryption = null;
        this.billingName = null;
        this.billingStreet = null;
        this.billingCity = null;
        this.billingState = null;
        this.billingCode = null;
        this.billingCountry = null;
        this.shippingName = null;
        this.shippingStreet = null;
        this.shippingCity = null;
        this.shippingState = null;
        this.shippingCode = null;
        this.shippingCountry = null;
        this.shippingMethodName = null;
        this.subTotal = null;
        this.shippingCost = null;
        this.tax = null;
        this.total = null;
        this.special = null;
        this.userComment = null;
        this.userCancelComment = null;
        this.storeComment = null;
        this.storeCancelComment = null;
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        _ = hashMap;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TagHelper.create().*;
        this.initFields();
        this.request = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
        _ = this.getFormData();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getFormData(self: *Self) void {
        self.entryId = Inheritance.upcast(@TypeOf(self.entryId), Inheritance.call(self.request.?, "getParameter", .{ EntryData.getInstance().?.ID }));
        self.orderId = Inheritance.upcast(@TypeOf(self.orderId), Inheritance.call(self.request.?, "getParameter", .{ OrderData.ID }));
        self.userName = Inheritance.upcast(@TypeOf(self.userName), Inheritance.call(self.request.?, "getParameter", .{ UserData.USERNAME }));
        self.storeName = Inheritance.upcast(@TypeOf(self.storeName), Inheritance.call(self.request.?, "getParameter", .{ StoreFrontData.getInstance().?.NAME }));
        self.shipDate = Inheritance.upcast(@TypeOf(self.shipDate), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.SHIPPEDDATE }));
        self.orderDate = Inheritance.upcast(@TypeOf(self.orderDate), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.ORDERDATE }));
        self.transDate = Inheritance.upcast(@TypeOf(self.transDate), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.TRANSDATE }));
        self.cancelDate = Inheritance.upcast(@TypeOf(self.cancelDate), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.CANCELDATE }));
        self.status = Inheritance.upcast(@TypeOf(self.status), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.STATUS }));
        self.paymentMethod = Inheritance.upcast(@TypeOf(self.paymentMethod), Inheritance.call(self.request.?, "getParameter", .{ PaymentData.METHOD }));
        self.name = Inheritance.upcast(@TypeOf(self.name), Inheritance.call(self.request.?, "getParameter", .{ PaymentData.NAME }));
        self.@"type" = Inheritance.upcast(@TypeOf(self.@"type"), Inheritance.call(self.request.?, "getParameter", .{ PaymentData.TYPE }));
        self.expiration = Inheritance.upcast(@TypeOf(self.expiration), Inheritance.call(self.request.?, "getParameter", .{ PaymentData.EXPIRATION }));
        self.number = Inheritance.upcast(@TypeOf(self.number), Inheritance.call(self.request.?, "getParameter", .{ PaymentData.NUMBER }));
        self.encryption = Inheritance.upcast(@TypeOf(self.encryption), Inheritance.call(self.request.?, "getParameter", .{ EntryData.getInstance().?.ENCRYPTION }));
        self.billingName = Inheritance.upcast(@TypeOf(self.billingName), Inheritance.call(self.request.?, "getParameter", .{ BillingAddressData.NAME }));
        self.billingStreet = Inheritance.upcast(@TypeOf(self.billingStreet), Inheritance.call(self.request.?, "getParameter", .{ BillingAddressData.STREET }));
        self.billingCity = Inheritance.upcast(@TypeOf(self.billingCity), Inheritance.call(self.request.?, "getParameter", .{ BillingAddressData.CITY }));
        self.billingState = Inheritance.upcast(@TypeOf(self.billingState), Inheritance.call(self.request.?, "getParameter", .{ BillingAddressData.STATE }));
        self.billingCode = Inheritance.upcast(@TypeOf(self.billingCode), Inheritance.call(self.request.?, "getParameter", .{ BillingAddressData.CODE }));
        self.billingCountry = Inheritance.upcast(@TypeOf(self.billingCountry), Inheritance.call(self.request.?, "getParameter", .{ BillingAddressData.COUNTRY }));
        self.shippingName = Inheritance.upcast(@TypeOf(self.shippingName), Inheritance.call(self.request.?, "getParameter", .{ ShippingAddressData.NAME }));
        self.shippingStreet = Inheritance.upcast(@TypeOf(self.shippingStreet), Inheritance.call(self.request.?, "getParameter", .{ ShippingAddressData.STREET }));
        self.shippingCity = Inheritance.upcast(@TypeOf(self.shippingCity), Inheritance.call(self.request.?, "getParameter", .{ ShippingAddressData.CITY }));
        self.shippingState = Inheritance.upcast(@TypeOf(self.shippingState), Inheritance.call(self.request.?, "getParameter", .{ ShippingAddressData.STATE }));
        self.shippingCode = Inheritance.upcast(@TypeOf(self.shippingCode), Inheritance.call(self.request.?, "getParameter", .{ ShippingAddressData.CODE }));
        self.shippingCountry = Inheritance.upcast(@TypeOf(self.shippingCountry), Inheritance.call(self.request.?, "getParameter", .{ ShippingAddressData.COUNTRY }));
        self.shippingMethodName = Inheritance.upcast(@TypeOf(self.shippingMethodName), Inheritance.call(self.request.?, "getParameter", .{ ShippingMethodData.NAME }));
        self.subTotal = Inheritance.upcast(@TypeOf(self.subTotal), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.SUBTOTAL }));
        self.shippingCost = Inheritance.upcast(@TypeOf(self.shippingCost), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.SHIPPINGCOST }));
        self.tax = Inheritance.upcast(@TypeOf(self.tax), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.TAX }));
        self.total = Inheritance.upcast(@TypeOf(self.total), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.TOTAL }));
        self.special = Inheritance.upcast(@TypeOf(self.special), Inheritance.call(self.request.?, "getParameter", .{ EntryData.getInstance().?.SPECIAL }));
        self.userComment = Inheritance.upcast(@TypeOf(self.userComment), Inheritance.call(self.request.?, "getParameter", .{ OrderData.CUSTOMERCOMMENT }));
        self.userCancelComment = Inheritance.upcast(@TypeOf(self.userCancelComment), Inheritance.call(self.request.?, "getParameter", .{ OrderData.CUSTOMERCANCELCOMMENT }));
        self.storeComment = Inheritance.upcast(@TypeOf(self.storeComment), Inheritance.call(self.request.?, "getParameter", .{ OrderData.STORECOMMENT }));
        self.storeCancelComment = Inheritance.upcast(@TypeOf(self.storeCancelComment), Inheritance.call(self.request.?, "getParameter", .{ OrderData.STORECANCELCOMMENT }));
    }
    

    pub fn update(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Successful update");
            const orderHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            const whereHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(orderHashMap.?, "put", .{ EntryData.getInstance().?.ID, self.entryId });
            _ = Inheritance.call(orderHashMap.?, "put", .{ OrderData.ID, self.orderId });
            _ = Inheritance.call(orderHashMap.?, "put", .{ UserData.USERNAME, self.userName });
            _ = Inheritance.call(orderHashMap.?, "put", .{ StoreFrontData.getInstance().?.NAME, self.storeName });
            _ = Inheritance.call(orderHashMap.?, "put", .{ OrderHistoryData.SHIPPEDDATE, self.shipDate });
            _ = Inheritance.call(orderHashMap.?, "put", .{ OrderHistoryData.ORDERDATE, self.orderDate });
            _ = Inheritance.call(orderHashMap.?, "put", .{ OrderHistoryData.TRANSDATE, self.transDate });
            _ = Inheritance.call(orderHashMap.?, "put", .{ OrderHistoryData.CANCELDATE, self.cancelDate });
            _ = Inheritance.call(orderHashMap.?, "put", .{ OrderHistoryData.STATUS, self.status });
            _ = Inheritance.call(orderHashMap.?, "put", .{ PaymentData.METHOD, self.paymentMethod });
            _ = Inheritance.call(orderHashMap.?, "put", .{ PaymentData.NAME, self.name });
            _ = Inheritance.call(orderHashMap.?, "put", .{ PaymentData.TYPE, self.@"type" });
            _ = Inheritance.call(orderHashMap.?, "put", .{ PaymentData.EXPIRATION, self.expiration });
            _ = Inheritance.call(orderHashMap.?, "put", .{ BillingAddressData.NAME, self.billingName });
            _ = Inheritance.call(orderHashMap.?, "put", .{ BillingAddressData.STREET, self.billingStreet });
            _ = Inheritance.call(orderHashMap.?, "put", .{ BillingAddressData.CITY, self.billingCity });
            _ = Inheritance.call(orderHashMap.?, "put", .{ BillingAddressData.STATE, self.billingState });
            _ = Inheritance.call(orderHashMap.?, "put", .{ BillingAddressData.CODE, self.billingCode });
            _ = Inheritance.call(orderHashMap.?, "put", .{ BillingAddressData.COUNTRY, self.billingCountry });
            _ = Inheritance.call(orderHashMap.?, "put", .{ ShippingAddressData.NAME, self.shippingName });
            _ = Inheritance.call(orderHashMap.?, "put", .{ ShippingAddressData.STREET, self.shippingStreet });
            _ = Inheritance.call(orderHashMap.?, "put", .{ ShippingAddressData.CITY, self.shippingCity });
            _ = Inheritance.call(orderHashMap.?, "put", .{ ShippingAddressData.STATE, self.shippingState });
            _ = Inheritance.call(orderHashMap.?, "put", .{ ShippingAddressData.CODE, self.shippingCode });
            _ = Inheritance.call(orderHashMap.?, "put", .{ ShippingAddressData.COUNTRY, self.shippingCountry });
            _ = Inheritance.call(orderHashMap.?, "put", .{ ShippingMethodData.NAME, self.shippingMethodName });
            _ = Inheritance.call(orderHashMap.?, "put", .{ OrderHistoryData.SUBTOTAL, self.subTotal });
            _ = Inheritance.call(orderHashMap.?, "put", .{ OrderHistoryData.SHIPPINGCOST, self.shippingCost });
            _ = Inheritance.call(orderHashMap.?, "put", .{ OrderHistoryData.TAX, self.tax });
            _ = Inheritance.call(orderHashMap.?, "put", .{ OrderHistoryData.TOTAL, self.total });
            _ = Inheritance.call(orderHashMap.?, "put", .{ EntryData.getInstance().?.SPECIAL, self.special });
            _ = Inheritance.call(orderHashMap.?, "put", .{ OrderData.CUSTOMERCOMMENT, self.userComment });
            _ = Inheritance.call(orderHashMap.?, "put", .{ OrderData.CUSTOMERCANCELCOMMENT, self.userCancelComment });
            _ = Inheritance.call(orderHashMap.?, "put", .{ OrderData.STORECOMMENT, self.storeComment });
            _ = Inheritance.call(orderHashMap.?, "put", .{ OrderData.STORECANCELCOMMENT, self.storeCancelComment });
            _ = Inheritance.call(whereHashMap.?, "put", .{ OrderData.ID, self.orderId });
            _ = Inheritance.call(OrderHistoryEntityFactory.getInstance().?, "update", .{ whereHashMap, orderHashMap });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("update()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to update order table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("update()"), e });
//             }
//             return @"error";
    }
};

