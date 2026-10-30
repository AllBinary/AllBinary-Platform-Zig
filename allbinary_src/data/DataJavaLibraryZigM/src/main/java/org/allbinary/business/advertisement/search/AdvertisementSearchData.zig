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
// package org.allbinary.business.advertisement.search

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const AdvertisementSearchData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.search.AdvertisementSearchData";
    TITLE: ?*String = null,
    PRICE: ?*String = null,
    RELEVANCY: ?*String = null,
    POPULARITY: ?*String = null,
    var instance: ?*AdvertisementSearchData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AdvertisementSearchData.create();
    }

    fn initFields(this: *Self) void {
        this.TITLE = String.literal("AFFILIATE_TITLE");
        this.PRICE = String.literal("AFFILIATE_PRICE");
        this.RELEVANCY = String.literal("AFFILIATE_RELEVANCY");
        this.POPULARITY = String.literal("AFFILIATE_POPULARITY");
    }
    

    pub fn getInstance() ?*AdvertisementSearchData {
        return Inheritance.upcast(?*AdvertisementSearchData, AdvertisementSearchData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

