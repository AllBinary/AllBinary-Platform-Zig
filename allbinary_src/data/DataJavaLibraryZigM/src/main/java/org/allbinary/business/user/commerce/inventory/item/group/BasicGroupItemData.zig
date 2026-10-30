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
// package org.allbinary.business.user.commerce.inventory.item.group

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const BasicGroupItemData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData";
    pub const ITEM_ONE: ?*String = String.literal("BASICGROUPITEM_ONE");
    pub const ITEM_TWO: ?*String = String.literal("BASICGROUPITEM_TWO");
    pub const ITEM_THREE: ?*String = String.literal("BASICGROUPITEM_THREE");
    pub const ITEM_FOUR: ?*String = String.literal("BASICGROUPITEM_FOUR");
    pub const ITEM_FIVE: ?*String = String.literal("BASICGROUPITEM_FIVE");
    pub const ITEM_SIX: ?*String = String.literal("BASICGROUPITEM_SIX");
    pub const ITEM_SEVEN: ?*String = String.literal("BASICGROUPITEM_SEVEN");
    pub const ITEM_EIGHT: ?*String = String.literal("BASICGROUPITEM_EIGHT");
    pub const ITEM_NINE: ?*String = String.literal("BASICGROUPITEM_NINE");
    pub const ITEM_TEN: ?*String = String.literal("BASICGROUPITEM_TEN");

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

