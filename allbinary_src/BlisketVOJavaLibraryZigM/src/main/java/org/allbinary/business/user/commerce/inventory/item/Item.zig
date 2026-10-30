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
// package org.allbinary.business.user.commerce.inventory.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const ShippingAddressData = @import("org/allbinary/business/user/address/ShippingAddressData.zig").ShippingAddressData;
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const StreetAddressData = @import("org/allbinary/business/user/address/StreetAddressData.zig").StreetAddressData;
const OrderHistoryData = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryData.zig").OrderHistoryData;
const MoneyException = @import("org/allbinary/business/user/commerce/money/MoneyException.zig").MoneyException;
const ShippingMethodData = @import("org/allbinary/business/user/commerce/shipping/ShippingMethodData.zig").ShippingMethodData;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicItem = @import("org/allbinary/business/user/commerce/inventory/item/BasicItem.zig").BasicItem;
const OrderItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/OrderItemInterface.zig").OrderItemInterface;

pub const Item = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.item.Item";
    pub const java_interfaces = .{ OrderItemInterface };
    base: BasicItem = undefined,
    group: ?*String = null,
    tax: ?*String = null,
    shippingType: ?*String = null,
    shippingCost: ?*String = null,
    shippedDate: ?*String = null,
    shippingAddress: ?*StreetAddress = null,
    special: ?*String = null,
    // Implements OrderItemInterface

    fn initFields(this: *Self) void {
        
        
        
        
        this.shippedDate = null;
        
        this.special = null;
    }
    

    pub fn create1(itemHashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicItem, "create1", .{ itemHashMap }).*;
        this.initFields();
        _ = Inheritance.call(this, "setData", .{ itemHashMap });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicItem.create().*;
        this.initFields();
        const EMPTY: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.group = EMPTY;
        this.tax = EMPTY;
        this.shippingType = EMPTY;
        this.shippingCost = EMPTY;
        this.shippingAddress = StreetAddress.create();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setData(self: *Self, itemHashMap: ?*HashMap) void {
        self.group = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ ShippingMethodData.GROUP }));
        self.tax = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ OrderHistoryData.TAX }));
        self.shippingType = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ ShippingMethodData.NAME }));
        self.shippingCost = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ ShippingMethodData.COST }));
        self.shippedDate = Inheritance.cast(?*String, Inheritance.call(itemHashMap.?, "get", .{ OrderHistoryData.SHIPPEDDATE }));
        _ = Inheritance.call(itemHashMap.?, "put", .{ StreetAddressData.NAME, Inheritance.call(itemHashMap.?, "get", .{ ShippingAddressData.NAME }) });
        _ = Inheritance.call(itemHashMap.?, "put", .{ StreetAddressData.STREET, Inheritance.call(itemHashMap.?, "get", .{ ShippingAddressData.STREET }) });
        _ = Inheritance.call(itemHashMap.?, "put", .{ StreetAddressData.CITY, Inheritance.call(itemHashMap.?, "get", .{ ShippingAddressData.CITY }) });
        _ = Inheritance.call(itemHashMap.?, "put", .{ StreetAddressData.STATE, Inheritance.call(itemHashMap.?, "get", .{ ShippingAddressData.STATE }) });
        _ = Inheritance.call(itemHashMap.?, "put", .{ StreetAddressData.CODE, Inheritance.call(itemHashMap.?, "get", .{ ShippingAddressData.CODE }) });
        _ = Inheritance.call(itemHashMap.?, "put", .{ StreetAddressData.COUNTRY, Inheritance.call(itemHashMap.?, "get", .{ ShippingAddressData.COUNTRY }) });
        self.shippingAddress = Inheritance.callStatic(StreetAddress, "create1", .{ itemHashMap });
    }
    

    pub fn setGroup(self: *Self, value: ?*String) void {
        self.group = value;
    }
    

    pub fn setTax(self: *Self, value: ?*String) void {
        self.tax = value;
    }
    

    pub fn setShippingType(self: *Self, value: ?*String) void {
        self.shippingType = value;
    }
    

    pub fn setShippingCost(self: *Self, value: ?*String) void {
        self.shippingCost = value;
    }
    

    pub fn setShippingAddress(self: *Self, value: ?*StreetAddress) void {
        self.shippingAddress = Inheritance.upcast(@TypeOf(self.shippingAddress), value);
    }
    

    pub fn setSpecial(self: *Self, value: ?*String) void {
        self.special = value;
    }
    

    pub fn getGroup(self: *Self) ?*String {
        return self.group;
    }
    

    pub fn getTax(self: *Self) ?*String {
        return self.tax;
    }
    

    pub fn getShippingType(self: *Self) ?*String {
        return self.shippingType;
    }
    

    pub fn getShippingCost(self: *Self) ?*String {
        return self.shippingCost;
    }
    

    pub fn getShippingAddress(self: *Self) ?*StreetAddress {
        return self.shippingAddress;
    }
    

    pub fn getSpecial(self: *Self) ?*String {
        return self.special;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.base.toHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ ShippingMethodData.GROUP, self.group });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderHistoryData.TAX, self.tax });
        _ = Inheritance.call(hashMap.?, "put", .{ ShippingMethodData.NAME, self.shippingType });
        _ = Inheritance.call(hashMap.?, "put", .{ ShippingMethodData.COST, self.shippingCost });
        _ = Inheritance.call(hashMap.?, "put", .{ OrderHistoryData.SHIPPEDDATE, self.shippedDate });
        _ = Inheritance.call(hashMap.?, "put", .{ EntryData.getInstance().?.SPECIAL, self.special });
        return hashMap;
    }
};

