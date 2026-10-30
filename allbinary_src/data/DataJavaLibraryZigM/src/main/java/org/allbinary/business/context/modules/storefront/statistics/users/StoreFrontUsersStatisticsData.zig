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
// package org.allbinary.business.context.modules.storefront.statistics.users

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const StoreFrontUsersStatisticsData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData";
    NAME: ?*String = null,
    NUMBEROFUSERS: ?*String = null,
    var instance: ?*StoreFrontUsersStatisticsData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = StoreFrontUsersStatisticsData.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("STOREFRONT_USERS_STATISTICS_NAME");
        this.NUMBEROFUSERS = String.literal("STOREFRONT_USERS_STATISTICS_NUMBER_OF_USERS");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*StoreFrontUsersStatisticsData {
        return Inheritance.upcast(?*StoreFrontUsersStatisticsData, StoreFrontUsersStatisticsData.instance);
    }
};

