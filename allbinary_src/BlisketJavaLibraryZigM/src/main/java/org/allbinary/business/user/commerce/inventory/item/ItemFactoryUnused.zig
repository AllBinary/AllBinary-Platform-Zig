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
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const MoneyException = @import("org/allbinary/business/user/commerce/money/MoneyException.zig").MoneyException;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;
const RequestParams = @import("org/allbinary/logic/communication/http/request/RequestParams.zig").RequestParams;
const Item = @import("org/allbinary/business/user/commerce/inventory/item/Item.zig").Item;

pub const ItemFactoryUnused = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws MoneyException
    pub fn getInstance(hashMap: ?*HashMap) ?*TableMappingInterface {
        return Inheritance.cast(?*TableMappingInterface, Inheritance.callStatic(Item, "create1", .{ hashMap }));
    }
    

    // throws Exception, MoneyException
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance(request: ?*HttpServletRequest) ?*TableMappingInterface {
        return Inheritance.cast(?*TableMappingInterface, Inheritance.callStatic(Item, "create1", .{ Inheritance.callStatic(RequestParams, "create1", .{ request }).toHashMap() }));
    }
};

