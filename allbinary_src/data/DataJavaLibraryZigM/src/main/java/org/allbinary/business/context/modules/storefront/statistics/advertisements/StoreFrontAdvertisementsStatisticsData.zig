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
// package org.allbinary.business.context.modules.storefront.statistics.advertisements

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const StoreFrontAdvertisementsStatisticsData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsData";
    NAME: ?*String = null,
    var instance: ?*StoreFrontAdvertisementsStatisticsData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = StoreFrontAdvertisementsStatisticsData.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("STOREFRONT_ADVERTISEMENTS_STATISTICS_NAME");
    }
    

    pub fn getInstance() ?*StoreFrontAdvertisementsStatisticsData {
        return Inheritance.upcast(?*StoreFrontAdvertisementsStatisticsData, StoreFrontAdvertisementsStatisticsData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

