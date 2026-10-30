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
// package org.allbinary.data.tables.user.commerce.inventory.order

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Calendar = @import("java/util/Calendar.zig").Calendar;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const Random = @import("java/util/Random.zig").Random;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const HistoryDbInitInfo = @import("org/allbinary/business/init/db/HistoryDbInitInfo.zig").HistoryDbInitInfo;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const BillingAddressData = @import("org/allbinary/business/user/address/BillingAddressData.zig").BillingAddressData;
const ShippingAddressData = @import("org/allbinary/business/user/address/ShippingAddressData.zig").ShippingAddressData;
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const Basket = @import("org/allbinary/business/user/commerce/inventory/basket/Basket.zig").Basket;
const BasketInterface = @import("org/allbinary/business/user/commerce/inventory/basket/BasketInterface.zig").BasketInterface;
const Order = @import("org/allbinary/business/user/commerce/inventory/order/Order.zig").Order;
const OrderData = @import("org/allbinary/business/user/commerce/inventory/order/OrderData.zig").OrderData;
const OrderHistory = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistory.zig").OrderHistory;
const OrderHistoryData = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryData.zig").OrderHistoryData;
const Money = @import("org/allbinary/business/user/commerce/money/Money.zig").Money;
const PaymentData = @import("org/allbinary/business/user/commerce/money/payment/PaymentData.zig").PaymentData;
const PaymentInterface = @import("org/allbinary/business/user/commerce/money/payment/PaymentInterface.zig").PaymentInterface;
const TaxFactory = @import("org/allbinary/business/user/commerce/money/tax/TaxFactory.zig").TaxFactory;
const ShippingMethodData = @import("org/allbinary/business/user/commerce/shipping/ShippingMethodData.zig").ShippingMethodData;
const ShippingMethods = @import("org/allbinary/business/user/commerce/shipping/ShippingMethods.zig").ShippingMethods;
const ShippingInterface = @import("org/allbinary/business/user/commerce/shipping/modules/ShippingInterface.zig").ShippingInterface;
const OrderHistoryIdGenerator = @import("org/allbinary/data/generator/OrderHistoryIdGenerator.zig").OrderHistoryIdGenerator;
const TableDataFactory = @import("org/allbinary/data/tables/TableDataFactory.zig").TableDataFactory;
const BillingAddressesEntity = @import("org/allbinary/data/tables/user/address/billing/BillingAddressesEntity.zig").BillingAddressesEntity;
const ShippingAddressesEntity = @import("org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntity.zig").ShippingAddressesEntity;
const PaymentEntity = @import("org/allbinary/data/tables/user/commerce/money/payment/PaymentEntity.zig").PaymentEntity;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlBean = @import("org/allbinary/logic/communication/sql/AbSqlBean.zig").AbSqlBean;
const SuperCrypt = @import("org/allbinary/logic/control/crypt/SuperCrypt.zig").SuperCrypt;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const OrderHistoryEntityInterface = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityInterface.zig").OrderHistoryEntityInterface;
const Integer = @import("java/lang/Integer.zig").Integer;
const Long = @import("java/lang/Long.zig").Long;
const Float = @import("java/lang/Float.zig").Float;

pub const OrderHistoryEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity";
    pub const java_interfaces = .{ OrderHistoryEntityInterface };
    base: AbSqlBean = undefined,
    logUtil: ?*LogUtil = null,
    tableName: ?*String = null,
    // Implements OrderHistoryEntityInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tableName = String.literal("orderhistory");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlBean, "create1", .{ HistoryDbInitInfo.create() }).*;
        this.initFields();
        _ = Inheritance.call(this, "setTableName", .{ this.tableName });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn insert2(self: *Self, userName: ?*String, order: ?*Order) void {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        { // try
            const paymentInterface: ?*PaymentInterface = Inheritance.upcast(?*PaymentInterface, Inheritance.call(PaymentEntity.create(), "getDefault", .{ userName }));
            const billingAddress: ?*StreetAddress = Inheritance.upcast(?*StreetAddress, Inheritance.receiver(Inheritance.callStatic(BillingAddressesEntity, "create1", .{ userName }), "getDefault").getDefault());
            const shippingAddress: ?*StreetAddress = Inheritance.upcast(?*StreetAddress, Inheritance.receiver(Inheritance.callStatic(ShippingAddressesEntity, "create1", .{ userName }), "getDefault").getDefault());
            const abeClientInformation: ?*AbeClientInformationInterface = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
            const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ order.?.getStoreName() }));
            const shippingInterface: ?*ShippingInterface = Inheritance.upcast(?*ShippingInterface, Inheritance.call(Inheritance.callStatic(ShippingMethods, "create2", .{ abeClientInformation, storeFrontInterface }), "getShippingInterface", .{ order.?.getShippingMethod() }));
            const shippingCost: ?*Money = Inheritance.upcast(?*Money, Inheritance.call(shippingInterface.?, "getCost", .{ order }));
            const basketInterface: ?*BasketInterface = Inheritance.upcast(?*BasketInterface, order.?.getBasket());
            const subTotal: ?*Money = Inheritance.upcast(?*Money, basketInterface.?.getSubTotal());
            const taxRate: ?*Float = Inheritance.upcast(?*Float, Inheritance.call(Inheritance.call(TaxFactory.getInstance().?, "getInstance", .{ abeClientInformation, storeFrontInterface }).?, "getTaxRate", .{ shippingAddress, storeFrontInterface }));
            const tax: ?*Money = Money.create();
            const total: ?*Money = Money.create();
            _ = Inheritance.call(total.?, "add", .{ Object.toString(Object.of(shippingCost)) });
            _ = Inheritance.call(total.?, "add", .{ Object.toString(Object.of(subTotal)) });
            _ = Inheritance.call(tax.?, "add", .{ Object.toString(Object.of(total)) });
            _ = Inheritance.call(tax.?, "multiply", .{ taxRate });
            _ = Inheritance.call(total.?, "add", .{ Object.toString(Object.of(tax)) });
            const empty: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
            _ = Inheritance.call(vector.?, "add", .{ Inheritance.receiver(OrderHistoryIdGenerator.create(), "getNext").getNext() });
            const ZERO: ?*String = Inheritance.upcast(?*String, TableDataFactory.getInstance().?.ZERO_STRING);
            _ = Inheritance.call(vector.?, "add", .{ order.?.getId() });
            _ = Inheritance.call(vector.?, "add", .{ userName });
            _ = Inheritance.call(vector.?, "add", .{ order.?.getStoreName() });
            const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
            const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
            _ = Inheritance.call(vector.?, "add", .{ ZERO });
            _ = Inheritance.call(vector.?, "add", .{ time });
            _ = Inheritance.call(vector.?, "add", .{ ZERO });
            _ = Inheritance.call(vector.?, "add", .{ ZERO });
            _ = Inheritance.call(vector.?, "add", .{ OrderHistoryData.PREPROCESSING });
            _ = Inheritance.call(vector.?, "add", .{ order.?.getPaymentMethod() });
            if (paymentInterface != null) {
                _ = Inheritance.call(vector.?, "add", .{ paymentInterface.?.getName() });
                _ = Inheritance.call(vector.?, "add", .{ paymentInterface.?.getType() });
                _ = Inheritance.call(vector.?, "add", .{ paymentInterface.?.getExpiration() });
                const random: i32 = Random.create().nextIntBound(SuperCrypt.KEYMAX);
                _ = Inheritance.call(vector.?, "add", .{ Inheritance.call(Inheritance.callStatic(SuperCrypt, "create1", .{ random }), "encrypt", .{ paymentInterface.?.getNumber() }) });
                _ = Inheritance.call(vector.?, "add", .{ String.valueOf(Inheritance.callStatic(Integer, "create1", .{ random }).?) });
            } else {
                _ = Inheritance.call(vector.?, "add", .{ empty });
                _ = Inheritance.call(vector.?, "add", .{ empty });
                _ = Inheritance.call(vector.?, "add", .{ empty });
                _ = Inheritance.call(vector.?, "add", .{ empty });
                _ = Inheritance.call(vector.?, "add", .{ ZERO });
            }
            if (billingAddress != null) {
                _ = Inheritance.call(vector.?, "add", .{ billingAddress.?.getName() });
                _ = Inheritance.call(vector.?, "add", .{ billingAddress.?.getStreet() });
                _ = Inheritance.call(vector.?, "add", .{ billingAddress.?.getCity() });
                _ = Inheritance.call(vector.?, "add", .{ billingAddress.?.getState() });
                _ = Inheritance.call(vector.?, "add", .{ billingAddress.?.getCode() });
                _ = Inheritance.call(vector.?, "add", .{ billingAddress.?.getCountry() });
            } else {
                _ = Inheritance.call(vector.?, "add", .{ empty });
                _ = Inheritance.call(vector.?, "add", .{ empty });
                _ = Inheritance.call(vector.?, "add", .{ empty });
                _ = Inheritance.call(vector.?, "add", .{ empty });
                _ = Inheritance.call(vector.?, "add", .{ empty });
                _ = Inheritance.call(vector.?, "add", .{ empty });
            }
            if (shippingAddress != null) {
                _ = Inheritance.call(vector.?, "add", .{ shippingAddress.?.getName() });
                _ = Inheritance.call(vector.?, "add", .{ shippingAddress.?.getStreet() });
                _ = Inheritance.call(vector.?, "add", .{ shippingAddress.?.getCity() });
                _ = Inheritance.call(vector.?, "add", .{ shippingAddress.?.getState() });
                _ = Inheritance.call(vector.?, "add", .{ shippingAddress.?.getCode() });
                _ = Inheritance.call(vector.?, "add", .{ shippingAddress.?.getCountry() });
            } else {
                _ = Inheritance.call(vector.?, "add", .{ empty });
                _ = Inheritance.call(vector.?, "add", .{ empty });
                _ = Inheritance.call(vector.?, "add", .{ empty });
                _ = Inheritance.call(vector.?, "add", .{ empty });
                _ = Inheritance.call(vector.?, "add", .{ empty });
                _ = Inheritance.call(vector.?, "add", .{ empty });
            }
            _ = Inheritance.call(vector.?, "add", .{ order.?.getShippingMethod() });
            _ = Inheritance.call(vector.?, "add", .{ Object.toString(Object.of(subTotal)) });
            _ = Inheritance.call(vector.?, "add", .{ Object.toString(Object.of(shippingCost)) });
            _ = Inheritance.call(vector.?, "add", .{ Object.toString(Object.of(tax)) });
            _ = Inheritance.call(vector.?, "add", .{ Object.toString(Object.of(total)) });
            _ = Inheritance.call(vector.?, "add", .{ order.?.getSpecial() });
            _ = Inheritance.call(vector.?, "add", .{ order.?.getUserComments() });
            _ = Inheritance.call(vector.?, "add", .{ order.?.getUserCancelComments() });
            _ = Inheritance.call(vector.?, "add", .{ order.?.getStoreComments() });
            _ = Inheritance.call(vector.?, "add", .{ order.?.getStoreCancelComments() });
            _ = Inheritance.call(self, "insert", .{ vector });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, INSERT });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Command Failed: "), vector), self, INSERT, e });
//             }
    }
    

    pub fn insert(self: *Self, values: ?*BasicArrayList) void {
        { // try
            _ = Inheritance.call(&self.base, "insert", .{ values });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, INSERT });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, INSERT, e });
//             }
    }
    

    pub fn setStatus(self: *Self, orderId: ?*String, status: ?*String) void {
        { // try
            const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
            const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
            const updateHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(updateHashMap.?, "put", .{ OrderHistoryData.STATUS, status });
            if (Inheritance.call(status.?, "compareTo", .{ OrderHistoryData.CANCELLED }) == 0) {
                _ = Inheritance.call(updateHashMap.?, "put", .{ OrderHistoryData.CANCELDATE, time });
            } else if (Inheritance.call(status.?, "compareTo", .{ OrderHistoryData.SHIPPED }) == 0) {
                _ = Inheritance.call(updateHashMap.?, "put", .{ OrderHistoryData.SHIPPEDDATE, time });
            }
            _ = Inheritance.call(&self.base, "updateWhere", .{ OrderData.ID, orderId, updateHashMap });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("setStatus"), e });
//             }
    }
    

    pub fn setPaymentMethod(self: *Self, orderId: ?*String, paymentMethod: ?*String) void {
        { // try
            const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
            const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
            const updateHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(updateHashMap.?, "put", .{ PaymentData.METHOD, paymentMethod });
            _ = Inheritance.call(updateHashMap.?, "put", .{ OrderHistoryData.TRANSDATE, time });
            _ = Inheritance.call(&self.base, "updateWhere", .{ OrderData.ID, orderId, updateHashMap });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("setPaymentMethod"), e });
//             }
    }
    

    // throws Exception
    pub fn getStoreOrders(self: *Self, storeFrontInterface: ?*StoreFrontInterface) ?*BasicArrayList {
        const orderReviewVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const whereHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(whereHashMap.?, "put", .{ StoreFrontData.getInstance().?.NAME, Inheritance.receiver(storeFrontInterface.?, "getName").getName() });
        const orderHashMapVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(&self.base, "getRows", .{ whereHashMap }));
        const size: i32 = orderHashMapVector.?.size();
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const orderReviewHashMap: ?*HashMap = Inheritance.cast(?*HashMap, Inheritance.call(orderHashMapVector.?, "get", .{ i }));
            const orderReview: ?*OrderHistory = Inheritance.callStatic(OrderHistory, "create2", .{ Basket.create(), orderReviewHashMap });
            _ = Inheritance.call(orderReviewVector.?, "add", .{ orderReview });
            }
        }
        return orderReviewVector;
    }
    

    // throws Exception
    pub fn getOrders(self: *Self, userName: ?*String) ?*BasicArrayList {
        const orderReviewVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const whereHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(whereHashMap.?, "put", .{ UserData.USERNAME, userName });
        const orderHashMapVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(&self.base, "getRows", .{ whereHashMap }));
        const size: i32 = orderHashMapVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const orderReviewHashMap: ?*HashMap = Inheritance.cast(?*HashMap, Inheritance.call(orderHashMapVector.?, "get", .{ index }));
            const orderReview: ?*OrderHistory = Inheritance.callStatic(OrderHistory, "create2", .{ Basket.create(), orderReviewHashMap });
            _ = Inheritance.call(orderReviewVector.?, "add", .{ orderReview });
            }
        }
        return orderReviewVector;
    }
    

    // throws Exception
    pub fn getOrders3(self: *Self, status: ?*String, fromDate: ?*String, toDate: ?*String) ?*BasicArrayList {
        const orderReviewVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const whereHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(whereHashMap.?, "put", .{ OrderHistoryData.STATUS, status });
        const orderHashMapVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(&self.base, "getRowsWhereBetween", .{ whereHashMap, OrderHistoryData.ORDERDATE, fromDate, toDate }));
        const size: i32 = orderHashMapVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const orderReviewHashMap: ?*HashMap = Inheritance.cast(?*HashMap, Inheritance.call(orderHashMapVector.?, "get", .{ index }));
            const orderReview: ?*OrderHistory = Inheritance.callStatic(OrderHistory, "create2", .{ Basket.create(), orderReviewHashMap });
            _ = Inheritance.call(orderReviewVector.?, "add", .{ orderReview });
            }
        }
        return orderReviewVector;
    }
    

    // throws Exception
    pub fn getOrders2(self: *Self, fromDate: ?*String, toDate: ?*String) ?*BasicArrayList {
        const orderReviewVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const orderHashMapVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(&self.base, "getRowsWhereBetween", .{ OrderHistoryData.ORDERDATE, fromDate, toDate }));
        const size: i32 = orderHashMapVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const orderReviewHashMap: ?*HashMap = Inheritance.cast(?*HashMap, Inheritance.call(orderHashMapVector.?, "get", .{ index }));
            const orderReview: ?*OrderHistory = Inheritance.callStatic(OrderHistory, "create2", .{ Basket.create(), orderReviewHashMap });
            _ = Inheritance.call(orderReviewVector.?, "add", .{ orderReview });
            }
        }
        return orderReviewVector;
    }
    

    // throws Exception
    pub fn getOrder(self: *Self, id: ?*String) ?*OrderHistory {
        const whereHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(whereHashMap.?, "put", .{ OrderData.ID, id });
        const orderReviewHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(&self.base, "getRow", .{ whereHashMap }));
        if (orderReviewHashMap != null) {
            const orderHistory: ?*OrderHistory = Inheritance.callStatic(OrderHistory, "create2", .{ Basket.create(), orderReviewHashMap });
            return orderHistory;
        } else {
            return null;
        }
    }
    

    pub fn createTableStatement(self: *Self) ?*String {
        const entryData: ?*EntryData = Inheritance.upcast(?*EntryData, EntryData.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("CREATE TABLE ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.tableName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" (") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ entryData.?.ID });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderData.ID });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ UserData.USERNAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ StoreFrontData.getInstance().?.NAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.SHIPPEDDATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" BIGINT(19) UNSIGNED ,") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.ORDERDATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.TRANSDATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" BIGINT(19) UNSIGNED ,") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.CANCELDATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" BIGINT(19) UNSIGNED ,") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.STATUS });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PaymentData.METHOD });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PaymentData.NAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" VARCHAR(255) ,") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PaymentData.TYPE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" VARCHAR(255) ,") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PaymentData.EXPIRATION });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" VARCHAR(255) ,") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ PaymentData.NUMBER });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" VARCHAR(255) ,") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ entryData.?.ENCRYPTION });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" BIGINT(19) UNSIGNED ,") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ BillingAddressData.NAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ BillingAddressData.STREET });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ BillingAddressData.CITY });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ BillingAddressData.STATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ BillingAddressData.CODE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ BillingAddressData.COUNTRY });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingAddressData.NAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingAddressData.STREET });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingAddressData.CITY });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingAddressData.STATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingAddressData.CODE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingAddressData.COUNTRY });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingMethodData.NAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.SUBTOTAL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.SHIPPINGCOST });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.TAX });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderHistoryData.TOTAL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ entryData.?.SPECIAL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" VARCHAR(255) ,") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderData.CUSTOMERCOMMENT });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderData.CUSTOMERCANCELCOMMENT });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderData.STORECOMMENT });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ OrderData.STORECANCELCOMMENT });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("PRIMARY KEY(") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ entryData.?.ID });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(") )") });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn createTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(&self.base, "createTable", .{ self.createTableStatement() }));
    }
    

    pub fn dropTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.base.dropTable());
    }
    

    // throws Exception
    pub fn update(self: *Self, whereHashMap: ?*HashMap, orderHashMap: ?*HashMap) void {
        _ = self;
        { // try
            _ = Inheritance.call(self, "updateWhere", .{ whereHashMap, orderHashMap });
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
};

