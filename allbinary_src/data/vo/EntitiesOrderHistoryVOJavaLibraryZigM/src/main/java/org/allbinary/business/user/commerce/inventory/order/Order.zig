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
// const Serializable = @import("java/io/Serializable.zig").Serializable;
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const BasketInterface = @import("org/allbinary/business/user/commerce/inventory/basket/BasketInterface.zig").BasketInterface;
const PaymentData = @import("org/allbinary/business/user/commerce/money/payment/PaymentData.zig").PaymentData;
const ShippingMethodData = @import("org/allbinary/business/user/commerce/shipping/ShippingMethodData.zig").ShippingMethodData;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const OrderData = @import("org/allbinary/business/user/commerce/inventory/order/OrderData.zig").OrderData;
const OrderHistoryData = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryData.zig").OrderHistoryData;
const OrderInterface = @import("org/allbinary/business/user/commerce/inventory/order/OrderInterface.zig").OrderInterface;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const Order = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.order.Order";
    pub const java_interfaces = .{ OrderInterface };
    basket: ?*BasketInterface = null,
    paymentMethod: ?*String = null,
    shippingType: ?*String = null,
    storeName: ?*String = null,
    special: ?*String = null,
    id: ?*String = null,
    userComment: ?*String = null,
    userCancelComment: ?*String = null,
    storeComment: ?*String = null,
    storeCancelComment: ?*String = null,
    // Implements OrderInterface
    // Implements Serializable

    fn initFields(this: *Self) void {
        
        
        
        
        
        
        this.userComment = null;
        this.userCancelComment = null;
        this.storeComment = null;
        this.storeCancelComment = null;
    }
    

    pub fn create1(basket: ?*BasketInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.basket = basket;
        this.id = null;
        this.shippingType = Inheritance.upcast(@TypeOf(this.shippingType), StringUtil.getInstance().?.EMPTY_STRING);
        return this;
    }
    

    pub fn create6(storeName: ?*String, basket: ?*BasketInterface, id: ?*String, shippingType: ?*String, special: ?*String, paymentMethod: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.storeName = storeName;
        this.basket = basket;
        this.id = id;
        this.shippingType = shippingType;
        this.special = special;
        this.paymentMethod = paymentMethod;
        return this;
    }
    

    pub fn isIdValid(self: *Self) ?*Boolean {
        if (self.getId() == null or Inheritance.call(self.getId().?, "compareTo", .{ StringUtil.getInstance().?.EMPTY_STRING }) == 0 or Inheritance.receiverOf(self.getId().?, "length").length() > OrderHistoryData.MAXIDLEN or !Inheritance.call(StringValidationUtil.getInstance().?, "isNumber", .{ self.getId() })) {
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        _ = self;
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    pub fn getIdValidationInfo(self: *Self) ?*String {
        const EMPTY_STRING: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        if (self.getId() == null or Inheritance.call(self.getId().?, "compareTo", .{ EMPTY_STRING }) == 0 or Inheritance.receiverOf(self.getId().?, "length").length() > OrderHistoryData.MAXIDLEN or !Inheritance.call(StringValidationUtil.getInstance().?, "isNumber", .{ self.getId() })) {
            return Inheritance.upcast(?*String, String.plus(String.plus(String.literal("Please enter a valid order Id < "), OrderHistoryData.MAXIDLEN), String.literal(" digits in length.<br>")));
        }
        return EMPTY_STRING;
    }
    

    pub fn setShippingMethod(self: *Self, shippingType: ?*String) void {
        self.shippingType = shippingType;
    }
    

    pub fn setPaymentMethod(self: *Self, value: ?*String) void {
        self.paymentMethod = value;
    }
    

    pub fn setSpecial(self: *Self, special: ?*String) void {
        self.special = special;
    }
    

    pub fn setId(self: *Self, value: ?*String) void {
        self.id = value;
    }
    

    pub fn setStoreName(self: *Self, value: ?*String) void {
        self.storeName = value;
    }
    

    pub fn setUserComments(self: *Self, value: ?*String) void {
        self.userComment = value;
    }
    

    pub fn setUserCancelComments(self: *Self, value: ?*String) void {
        self.userCancelComment = value;
    }
    

    pub fn setStoreComments(self: *Self, value: ?*String) void {
        self.storeComment = value;
    }
    

    pub fn setStoreCancelComments(self: *Self, value: ?*String) void {
        self.storeCancelComment = value;
    }
    

    pub fn getBasket(self: *Self) ?*BasketInterface {
        return self.basket;
    }
    

    pub fn getShippingMethod(self: *Self) ?*String {
        return self.shippingType;
    }
    

    pub fn getPaymentMethod(self: *Self) ?*String {
        return self.paymentMethod;
    }
    

    pub fn getSpecial(self: *Self) ?*String {
        return self.special;
    }
    

    pub fn getId(self: *Self) ?*String {
        return self.id;
    }
    

    pub fn getStoreName(self: *Self) ?*String {
        return self.storeName;
    }
    

    pub fn getUserComments(self: *Self) ?*String {
        return self.userComment;
    }
    

    pub fn getUserCancelComments(self: *Self) ?*String {
        return self.userCancelComment;
    }
    

    pub fn getStoreComments(self: *Self) ?*String {
        return self.storeComment;
    }
    

    pub fn getStoreCancelComments(self: *Self) ?*String {
        return self.storeCancelComment;
    }
    

    pub fn reviewOrder(self: *Self, paymentMethod: ?*String) ?*String {
        _ = paymentMethod;
        _ = self;
        return String.literal("Create your own Order.reviewOrder");
    }
    

    pub fn viewOrder(self: *Self, paymentMethod: ?*String) ?*String {
        _ = paymentMethod;
        _ = self;
        return String.literal("Create your own Order.viewOrder");
    }
    

    pub fn emailOrder(self: *Self, userName: ?*String, paymentMethod: ?*String, storeFrontInterface: ?*StoreFrontInterface) ?*String {
        _ = userName;
        _ = paymentMethod;
        _ = storeFrontInterface;
        _ = self;
        return String.literal("Create your own Order.emailOrder");
    }
    

    pub fn toHashMapOrder(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ PaymentData.METHOD, self.paymentMethod });
        _ = Inheritance.call(hashMap.?, "put", .{ ShippingMethodData.NAME, self.shippingType });
        _ = Inheritance.call(hashMap.?, "put", .{ StoreFrontData.getInstance().?.NAME, self.storeName });
        _ = Inheritance.call(hashMap.?, "put", .{ EntryData.getInstance().?.SPECIAL, self.special });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderData.ID, self.id });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderData.CUSTOMERCOMMENT, self.userComment });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderData.CUSTOMERCANCELCOMMENT, self.userCancelComment });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderData.STORECOMMENT, self.storeComment });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderData.STORECANCELCOMMENT, self.storeCancelComment });
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.toHashMapOrder());
        const keySet: ?*Set = Inheritance.upcast(?*Set, hashMap.?.keySet());
        const keyArray: []?Object = keySet.?.toArray();
        const size: i32 = @as(i32, @intCast(keyArray.len));
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ OrderData.ORDER }));
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

