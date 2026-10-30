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
// package org.allbinary.business.user.commerce.inventory.item.option

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const BasicOptionItemData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData";
    pub const OPTION_ONE_TITLE: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_TITLE");
    pub const DEFAULT_OPTION_ITEM: ?*String = String.literal("BASICOPTIONITEM_DEFAULT_OPTION_ITEM");
    pub const DEFAULT_OPTION_VALUE: ?*String = String.literal("BASICOPTIONITEM_DEFAULT_OPTION_VALUE");
    pub const OPTION_ONE_ONE_ITEM: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_ONE_ITEM");
    pub const OPTION_ONE_ONE_VALUE: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_ONE_VALUE");
    pub const OPTION_ONE_TWO_ITEM: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_TWO_ITEM");
    pub const OPTION_ONE_TWO_VALUE: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_TWO_VALUE");
    pub const OPTION_ONE_THREE_ITEM: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_THREE_ITEM");
    pub const OPTION_ONE_THREE_VALUE: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_THREE_VALUE");
    pub const OPTION_ONE_FOUR_ITEM: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_FOUR_ITEM");
    pub const OPTION_ONE_FOUR_VALUE: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_FOUR_VALUE");
    pub const OPTION_ONE_FIVE_ITEM: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_FIVE_ITEM");
    pub const OPTION_ONE_FIVE_VALUE: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_FIVE_VALUE");
    pub const OPTION_ONE_SIX_ITEM: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_SIX_ITEM");
    pub const OPTION_ONE_SIX_VALUE: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_SIX_VALUE");
    pub const OPTION_ONE_SEVEN_ITEM: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_SEVEN_ITEM");
    pub const OPTION_ONE_SEVEN_VALUE: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_SEVEN_VALUE");
    pub const OPTION_ONE_EIGHT_ITEM: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_EIGHT_ITEM");
    pub const OPTION_ONE_EIGHT_VALUE: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_EIGHT_VALUE");
    pub const OPTION_ONE_NINE_ITEM: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_NINE_ITEM");
    pub const OPTION_ONE_NINE_VALUE: ?*String = String.literal("BASICOPTIONITEM_OPTION_ONE_NINE_VALUE");

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

