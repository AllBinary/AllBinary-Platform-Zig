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
// package org.allbinary.business.user.commerce.inventory.basket

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const BasketData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.basket.BasketData";
    pub const BASKET: ?*String = String.literal("BASKET");
    pub const NAME: ?*String = String.literal("NAME");
    pub const BASKETREVIEW: ?*String = String.literal("BASKET_REVIEW");
    pub const TOTALWEIGHT: ?*String = String.literal("BASKET_TOTALWEIGTH");
    pub const ITEMTOTAL: ?*String = String.literal("BASKET_ITEMTOTAL");
    pub const ITEMTOTALINBASKET: ?*String = String.literal("BASKET_ITEMTOTALINBASKET");
    pub const SUBTOTAL: ?*String = String.literal("BASKET_SUBTOTAL");
    pub const ISEMPTY: ?*String = String.literal("BASKET_ISEMPTY");
    pub const INSERT: ?*String = String.literal("BASKET_INSERT");
    pub const DELETE: ?*String = String.literal("BASKET_DELETE");
    pub const ADJUST: ?*String = String.literal("BASKET_ADJUST");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

