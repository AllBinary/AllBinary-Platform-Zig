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

pub const BasicItemData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.item.BasicItemData";
    ITEM: ?*String = null,
    TOTAL: ?*String = null,
    ID: ?*String = null,
    NUMBER: ?*String = null,
    INBASKETS: ?*String = null,
    WEIGHT: ?*String = null,
    NEWORUSED: ?*String = null,
    SUMMARY: ?*String = null,
    DISTRIBUTOR: ?*String = null,
    IDUSEDBYDISTRIBUTOR: ?*String = null,
    PRODUCEDBY: ?*String = null,
    PRODUCTIONDATE: ?*String = null,
    STARTPRODUCTIONDATE: ?*String = null,
    DESCRIPTION: ?*String = null,
    KEYWORDS: ?*String = null,
    CATEGORY: ?*String = null,
    TYPE: ?*String = null,
    IMAGE: ?*String = null,
    SMALLIMAGE: ?*String = null,
    MEDIUMIMAGE: ?*String = null,
    LARGEIMAGE: ?*String = null,
    PRICE: ?*String = null,
    COMMENT: ?*String = null,
    CUSTOMS: ?*String = null,
    DOWNLOADS: ?*String = null,
    GROUPS: ?*String = null,
    OPTIONS: ?*String = null,
    PERMISSIONS: ?*String = null,
    SPECIALS: ?*String = null,
    var instance: ?*BasicItemData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicItemData.create();
    }

    fn initFields(this: *Self) void {
        this.ITEM = String.literal("BASICITEM");
        this.TOTAL = String.literal("BASICITEM_TOTAL");
        this.ID = String.literal("BASICITEM_ID");
        this.NUMBER = String.literal("BASICITEM_NUMBER");
        this.INBASKETS = String.literal("BASICITEM_IN_BASKETS");
        this.WEIGHT = String.literal("BASICITEM_WEIGHT");
        this.NEWORUSED = String.literal("BASICITEM_NEW_OR_USED");
        this.SUMMARY = String.literal("BASICITEM_SUMMARY");
        this.DISTRIBUTOR = String.literal("BASICITEM_DISTRIBUTOR");
        this.IDUSEDBYDISTRIBUTOR = String.literal("BASICITEM_IDUSEDBYDISTRIBUTOR");
        this.PRODUCEDBY = String.literal("BASICITEM_PRODUCEDBY");
        this.PRODUCTIONDATE = String.literal("BASICITEM_PRODUCTIONDATE");
        this.STARTPRODUCTIONDATE = String.literal("BASICITEM_STARTPRODUCTIONDATE");
        this.DESCRIPTION = String.literal("BASICITEM_DESCRIPTION");
        this.KEYWORDS = String.literal("BASICITEM_KEYWORDS");
        this.CATEGORY = String.literal("BASICITEM_CATEGORY");
        this.TYPE = String.literal("BASICITEM_TYPE");
        this.IMAGE = String.literal("BASICITEM_IMG");
        this.SMALLIMAGE = String.literal("BASICITEM_SMALL_IMG");
        this.MEDIUMIMAGE = String.literal("BASICITEM_MEDIUM_IMG");
        this.LARGEIMAGE = String.literal("BASICITEM_LARGE_IMG");
        this.PRICE = String.literal("BASICITEM_PRICE");
        this.COMMENT = String.literal("BASICITEM_COMMENT");
        this.CUSTOMS = String.literal("BASICITEM_CUSTOMS");
        this.DOWNLOADS = String.literal("BASICITEM_DOWNLOADS");
        this.GROUPS = String.literal("BASICITEM_GROUPS");
        this.OPTIONS = String.literal("BASICITEM_OPTIONS");
        this.PERMISSIONS = String.literal("BASICITEM_PERMISSIONS");
        this.SPECIALS = String.literal("BASICITEM_SPECIALS");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BasicItemData {
        return Inheritance.upcast(?*BasicItemData, BasicItemData.instance);
    }
};

