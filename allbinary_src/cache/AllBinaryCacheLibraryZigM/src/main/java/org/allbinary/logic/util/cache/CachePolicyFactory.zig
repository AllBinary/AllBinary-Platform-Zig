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
// package org.allbinary.logic.util.cache

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CachePolicy = @import("org/allbinary/logic/util/cache/CachePolicy.zig").CachePolicy;
const Long = @import("java/lang/Long.zig").Long;

pub const CachePolicyFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.cache.CachePolicyFactory";
    NAME: ?*String = null,
    MAX_TIME_THOUSAND_MAX: ?*CachePolicy = null,
    THIRTY_MINUTES_TEN_THOUSAND_MAX: ?*CachePolicy = null,
    THIRTY_MINUTES_FIFTY_THOUSAND_MAX: ?*CachePolicy = null,
    ONE_MINUTE_FIVE_MAX: ?*CachePolicy = null,
    ONE_MINUTE_TEN_MAX: ?*CachePolicy = null,
    ONE_MINUTE_ONE_HUNDRED_MAX: ?*CachePolicy = null,
    var instance: ?*CachePolicyFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CachePolicyFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("lru");
        this.MAX_TIME_THOUSAND_MAX = Inheritance.callStatic(CachePolicy, "create3", .{ this.NAME, @as(i64, std.math.maxInt(i64)), 1000 });
        this.THIRTY_MINUTES_TEN_THOUSAND_MAX = Inheritance.callStatic(CachePolicy, "create3", .{ this.NAME, 1000 * 60 * 30, 10000 });
        this.THIRTY_MINUTES_FIFTY_THOUSAND_MAX = Inheritance.callStatic(CachePolicy, "create3", .{ this.NAME, 1000 * 60 * 30, 100000 });
        this.ONE_MINUTE_FIVE_MAX = Inheritance.callStatic(CachePolicy, "create3", .{ this.NAME, 1000 * 60 * 1, 5 });
        this.ONE_MINUTE_TEN_MAX = Inheritance.callStatic(CachePolicy, "create3", .{ this.NAME, 1000 * 60 * 1, 10 });
        this.ONE_MINUTE_ONE_HUNDRED_MAX = Inheritance.callStatic(CachePolicy, "create3", .{ this.NAME, 1000 * 60 * 1, 100 });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CachePolicyFactory {
        return Inheritance.upcast(?*CachePolicyFactory, CachePolicyFactory.instance);
    }
};

