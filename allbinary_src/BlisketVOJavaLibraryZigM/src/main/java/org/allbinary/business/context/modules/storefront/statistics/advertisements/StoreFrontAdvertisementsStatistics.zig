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
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StoreFrontAdvertisementsStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatisticsInterface.zig").StoreFrontAdvertisementsStatisticsInterface;

pub const StoreFrontAdvertisementsStatistics = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics";
    pub const java_interfaces = .{ StoreFrontAdvertisementsStatisticsInterface };
    // Implements StoreFrontAdvertisementsStatisticsInterface
    

    pub fn create1(storeFrontInterface: ?*StoreFrontInterface) *Self {
        _ = storeFrontInterface;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        _ = self;
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        return hashMap;
    }
    

    pub fn toVector(self: *Self) ?*BasicArrayList {
        _ = self;
        return null;
    }
    

    pub fn getKey(self: *Self) ?Object {
        _ = self;
        return null;
    }
};

