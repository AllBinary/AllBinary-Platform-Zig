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
// package org.allbinary.business.user.commerce.inventory.order

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Date = @import("java/util/Date.zig").Date;
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const BillingAddressData = @import("org/allbinary/business/user/address/BillingAddressData.zig").BillingAddressData;
const ShippingAddressData = @import("org/allbinary/business/user/address/ShippingAddressData.zig").ShippingAddressData;
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const BasketInterface = @import("org/allbinary/business/user/commerce/inventory/basket/BasketInterface.zig").BasketInterface;
const Money = @import("org/allbinary/business/user/commerce/money/Money.zig").Money;
const MoneyException = @import("org/allbinary/business/user/commerce/money/MoneyException.zig").MoneyException;
const Payment = @import("org/allbinary/business/user/commerce/money/payment/Payment.zig").Payment;
const PaymentData = @import("org/allbinary/business/user/commerce/money/payment/PaymentData.zig").PaymentData;
const ShippingMethodData = @import("org/allbinary/business/user/commerce/shipping/ShippingMethodData.zig").ShippingMethodData;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const Order = @import("org/allbinary/business/user/commerce/inventory/order/Order.zig").Order;
const OrderData = @import("org/allbinary/business/user/commerce/inventory/order/OrderData.zig").OrderData;
const OrderHistoryData = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryData.zig").OrderHistoryData;
const OrderHistoryInterface = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryInterface.zig").OrderHistoryInterface;
const Long = @import("java/lang/Long.zig").Long;

pub const OrderHistory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.order.OrderHistory";
    pub const java_interfaces = .{ OrderHistoryInterface };
    base: Order = undefined,
    userName: ?*String = null,
    shippingAddress: ?*StreetAddress = null,
    billingAddress: ?*StreetAddress = null,
    payment: ?*Payment = null,
    shipDate: ?*String = null,
    orderDate: ?*String = null,
    transDate: ?*String = null,
    cancelDate: ?*String = null,
    status: ?*String = null,
    subTotal: ?*Money = null,
    shippingCost: ?*Money = null,
    taxes: ?*Money = null,
    total: ?*Money = null,
    // Implements OrderHistoryInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    

    pub fn create1(basketInterface: ?*BasketInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Order, "create1", .{ basketInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create2(basketInterface: ?*BasketInterface, orderHistory: ?*OrderHistory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Order, "create6", .{ Inheritance.receiver(orderHistory.?, "getStoreName").getStoreName(), basketInterface, Inheritance.receiver(orderHistory.?, "getId").getId(), Inheritance.receiver(orderHistory.?, "getShippingMethod").getShippingMethod(), Inheritance.receiver(orderHistory.?, "getSpecial").getSpecial(), Inheritance.receiver(orderHistory.?, "getPaymentMethod").getPaymentMethod() }).*;
        this.initFields();
        this.userName = Inheritance.upcast(@TypeOf(this.userName), Inheritance.receiver(orderHistory.?, "getUserName").getUserName());
        this.shippingAddress = Inheritance.upcast(@TypeOf(this.shippingAddress), Inheritance.receiver(orderHistory.?, "getShippingAddress").getShippingAddress());
        this.billingAddress = Inheritance.upcast(@TypeOf(this.billingAddress), Inheritance.receiver(orderHistory.?, "getBillingAddress").getBillingAddress());
        this.payment = Inheritance.upcast(@TypeOf(this.payment), Inheritance.receiver(orderHistory.?, "getPaymentInfo").getPaymentInfo());
        this.shipDate = Inheritance.upcast(@TypeOf(this.shipDate), Inheritance.receiver(orderHistory.?, "getShipDate").getShipDate());
        this.orderDate = Inheritance.upcast(@TypeOf(this.orderDate), Inheritance.receiver(orderHistory.?, "getOrderDate").getOrderDate());
        this.transDate = Inheritance.upcast(@TypeOf(this.transDate), Inheritance.receiver(orderHistory.?, "getTransDate").getTransDate());
        this.cancelDate = Inheritance.upcast(@TypeOf(this.cancelDate), Inheritance.receiver(orderHistory.?, "getCancelDate").getCancelDate());
        this.status = Inheritance.upcast(@TypeOf(this.status), Inheritance.receiver(orderHistory.?, "getStatus").getStatus());
        this.subTotal = Inheritance.upcast(@TypeOf(this.subTotal), Inheritance.receiver(orderHistory.?, "getSubTotal").getSubTotal());
        this.shippingCost = Inheritance.upcast(@TypeOf(this.shippingCost), Inheritance.receiver(orderHistory.?, "getShippingCost").getShippingCost());
        this.taxes = Inheritance.upcast(@TypeOf(this.taxes), Inheritance.receiver(orderHistory.?, "getTaxes").getTaxes());
        this.total = Inheritance.upcast(@TypeOf(this.total), Inheritance.receiver(orderHistory.?, "getTotal").getTotal());
        _ = Inheritance.call(&this.base, "setUserComments", .{ Inheritance.cast(?*String, Inheritance.receiver(orderHistory.?, "getUserComments").getUserComments()) });
        _ = Inheritance.call(&this.base, "setUserCancelComments", .{ Inheritance.cast(?*String, Inheritance.receiver(orderHistory.?, "getUserCancelComments").getUserCancelComments()) });
        _ = Inheritance.call(&this.base, "setStoreComments", .{ Inheritance.cast(?*String, Inheritance.receiver(orderHistory.?, "getStoreComments").getStoreComments()) });
        _ = Inheritance.call(&this.base, "setStoreCancelComments", .{ Inheritance.cast(?*String, Inheritance.receiver(orderHistory.?, "getStoreCancelComments").getStoreCancelComments()) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create2(basketInterface: ?*BasketInterface, orderHistoryHashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Order, "create6", .{ Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ StoreFrontData.getInstance().?.NAME })), basketInterface, Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ OrderData.ID })), Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ ShippingMethodData.NAME })), Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ EntryData.getInstance().?.SPECIAL })), Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ PaymentData.METHOD })) }).*;
        this.initFields();
        this.shippingAddress = Inheritance.callStatic(StreetAddress, "create6", .{ Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ ShippingAddressData.NAME })), Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ ShippingAddressData.STREET })), Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ ShippingAddressData.CITY })), Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ ShippingAddressData.STATE })), Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ ShippingAddressData.CODE })), Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ ShippingAddressData.COUNTRY })) });
        this.billingAddress = Inheritance.callStatic(StreetAddress, "create6", .{ Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ BillingAddressData.NAME })), Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ BillingAddressData.STREET })), Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ BillingAddressData.CITY })), Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ BillingAddressData.STATE })), Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ BillingAddressData.CODE })), Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ BillingAddressData.COUNTRY })) });
        this.payment = Inheritance.callStatic(Payment, "create1", .{ orderHistoryHashMap });
        this.userName = Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ UserData.USERNAME }));
        this.orderDate = Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ OrderHistoryData.ORDERDATE }));
        this.shipDate = Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ OrderHistoryData.SHIPPEDDATE }));
        this.transDate = Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ OrderHistoryData.TRANSDATE }));
        this.cancelDate = Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ OrderHistoryData.CANCELDATE }));
        this.status = Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ OrderHistoryData.STATUS }));
        this.subTotal = Inheritance.callStatic(Money, "create1", .{ Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ OrderHistoryData.SUBTOTAL })) });
        this.total = Inheritance.callStatic(Money, "create1", .{ Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ OrderHistoryData.TOTAL })) });
        this.shippingCost = Inheritance.callStatic(Money, "create1", .{ Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ OrderHistoryData.SHIPPINGCOST })) });
        this.taxes = Inheritance.callStatic(Money, "create1", .{ Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ OrderHistoryData.TAX })) });
        _ = Inheritance.call(&this.base, "setUserComments", .{ Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ OrderData.CUSTOMERCOMMENT })) });
        _ = Inheritance.call(&this.base, "setUserCancelComments", .{ Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ OrderData.CUSTOMERCANCELCOMMENT })) });
        _ = Inheritance.call(&this.base, "setStoreComments", .{ Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ OrderData.STORECOMMENT })) });
        _ = Inheritance.call(&this.base, "setStoreCancelComments", .{ Inheritance.cast(?*String, Inheritance.call(orderHistoryHashMap.?, "get", .{ OrderData.STORECANCELCOMMENT })) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setUserName(self: *Self, value: ?*String) void {
        self.userName = value;
    }
    

    pub fn setDefaultShippingAddress(self: *Self, shippingAddress: ?*StreetAddress) void {
        self.shippingAddress = shippingAddress;
    }
    

    pub fn setBillingAddress(self: *Self, billingAddress: ?*StreetAddress) void {
        self.billingAddress = billingAddress;
    }
    

    pub fn setPaymentInfo(self: *Self, payment: ?*Payment) void {
        self.payment = payment;
    }
    

    pub fn setShipDate(self: *Self, value: ?*String) void {
        self.shipDate = value;
    }
    

    pub fn setOrderDate(self: *Self, value: ?*String) void {
        self.orderDate = value;
    }
    

    pub fn setTransDate(self: *Self, value: ?*String) void {
        self.transDate = value;
    }
    

    pub fn setCancelDate(self: *Self, value: ?*String) void {
        self.cancelDate = value;
    }
    

    pub fn setStatus(self: *Self, value: ?*String) void {
        self.status = value;
    }
    

    pub fn setSubTotal(self: *Self, value: ?*Money) void {
        self.subTotal = Inheritance.upcast(@TypeOf(self.subTotal), value);
    }
    

    pub fn setShippingCost(self: *Self, value: ?*Money) void {
        self.shippingCost = Inheritance.upcast(@TypeOf(self.shippingCost), value);
    }
    

    pub fn setTaxes(self: *Self, value: ?*Money) void {
        self.taxes = Inheritance.upcast(@TypeOf(self.taxes), value);
    }
    

    pub fn setTotal(self: *Self, value: ?*Money) void {
        self.total = Inheritance.upcast(@TypeOf(self.total), value);
    }
    

    pub fn getUserName(self: *Self) ?*String {
        return self.userName;
    }
    

    pub fn getShippingAddress(self: *Self) ?*StreetAddress {
        return self.shippingAddress;
    }
    

    pub fn getBillingAddress(self: *Self) ?*StreetAddress {
        return self.billingAddress;
    }
    

    pub fn getPaymentInfo(self: *Self) ?*Payment {
        return self.payment;
    }
    

    pub fn getShipDate(self: *Self) ?*String {
        return self.shipDate;
    }
    

    pub fn getOrderDate(self: *Self) ?*String {
        return self.orderDate;
    }
    

    pub fn getTransDate(self: *Self) ?*String {
        return self.transDate;
    }
    

    pub fn getCancelDate(self: *Self) ?*String {
        return self.cancelDate;
    }
    

    pub fn getStatus(self: *Self) ?*String {
        return self.status;
    }
    

    pub fn getSubTotal(self: *Self) ?*Money {
        return self.subTotal;
    }
    

    pub fn getShippingCost(self: *Self) ?*Money {
        return self.shippingCost;
    }
    

    pub fn getTaxes(self: *Self) ?*Money {
        return self.taxes;
    }
    

    pub fn getTotal(self: *Self) ?*Money {
        return self.total;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ UserData.USERNAME, self.userName });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderHistoryData.ORDERDATE, self.orderDate });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderHistoryData.SHIPPEDDATE, self.shipDate });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderHistoryData.TRANSDATE, self.transDate });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderHistoryData.CANCELDATE, self.cancelDate });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderHistoryData.ORDERDATEFORMATTED, Object.toString(Object.of(Inheritance.callStatic(Date, "create1", .{ Inheritance.callStatic(Long, "create1", .{ self.orderDate }).longValue() }))) });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderHistoryData.SHIPPEDDATEFORMATTED, Object.toString(Object.of(Inheritance.callStatic(Date, "create1", .{ Inheritance.callStatic(Long, "create1", .{ self.shipDate }).longValue() }))) });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderHistoryData.TRANSDATEFORMATTED, Object.toString(Object.of(Inheritance.callStatic(Date, "create1", .{ Inheritance.callStatic(Long, "create1", .{ self.transDate }).longValue() }))) });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderHistoryData.CANCELDATEFORMATTED, Object.toString(Object.of(Inheritance.callStatic(Date, "create1", .{ Inheritance.callStatic(Long, "create1", .{ self.cancelDate }).longValue() }))) });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderHistoryData.STATUS, self.status });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderHistoryData.SUBTOTAL, Object.toString(Object.of(self.subTotal)) });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderHistoryData.TOTAL, Object.toString(Object.of(self.total)) });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderHistoryData.SHIPPINGCOST, Object.toString(Object.of(self.shippingCost)) });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderHistoryData.TAX, Object.toString(Object.of(self.taxes)) });
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.toHashMap());
        const keySet: ?*Set = Inheritance.upcast(?*Set, hashMap.?.keySet());
        const keyArray: []?Object = keySet.?.toArray();
        const size: i32 = @as(i32, @intCast(keyArray.len));
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ OrderHistoryData.ORDERHISTORY }));
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(&self.base, "toXmlNode", .{ document }) });
        const billingAddressNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ BillingAddressData.BILLINGADDRESS }));
        _ = Inheritance.call(billingAddressNode.?, "appendChild", .{ Inheritance.call(self.billingAddress.?, "toXmlNode", .{ document }) });
        const shippingAddressNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ ShippingAddressData.SHIPPINGADDRESS }));
        _ = Inheritance.call(shippingAddressNode.?, "appendChild", .{ Inheritance.call(self.shippingAddress.?, "toXmlNode", .{ document }) });
        _ = Inheritance.call(node.?, "appendChild", .{ billingAddressNode });
        _ = Inheritance.call(node.?, "appendChild", .{ shippingAddressNode });
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(self.payment.?, "toXmlNode", .{ document }) });
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const name: ?*String = Inheritance.cast(?*String, keyArray[@intCast(i)]);
            var value: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ name }));
            value = Inheritance.upcast(@TypeOf(value), Inheritance.call(StringUtil.getInstance().?, "getNonNull", .{ value }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, name, value }) });
            }
        }
        return node;
    }
};

