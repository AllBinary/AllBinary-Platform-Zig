// 
// AllBinary Open License Version 1 
// Copyright (c) 2007 AllBinary 
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
const CacheType = @import("org/allbinary/logic/util/cache/CacheType.zig").CacheType;

pub const PoolType = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.cache.PoolType";
    cacheType: ?*CacheType = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(cacheType: ?*CacheType) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.cacheType = cacheType;
        return this;
    }
    

    pub fn getCacheType(self: *Self) ?*CacheType {
        return self.cacheType;
    }
    

    pub fn toString(self: *Self) ?*String {
        const POOL_TYPE: ?*String = String.literal("PoolType: ");
        return Inheritance.upcast(?*String, String.plus(POOL_TYPE, Object.toString(Object.of(self.getCacheType()))));
    }
};

