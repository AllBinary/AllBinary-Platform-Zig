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
const CachePolicy = @import("org/allbinary/logic/util/cache/CachePolicy.zig").CachePolicy;
const CacheableInterfaceFactoryInterface = @import("org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.zig").CacheableInterfaceFactoryInterface;
const PoolInterface = @import("org/allbinary/logic/util/cache/PoolInterface.zig").PoolInterface;
const PoolType = @import("org/allbinary/logic/util/cache/PoolType.zig").PoolType;

pub const PoolInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.cache.PoolInterfaceFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(cacheableInterfaceFactoryInterface: ?*CacheableInterfaceFactoryInterface, poolType: ?*PoolType, cachePolicy: ?*CachePolicy) ?*PoolInterface {
        _ = cacheableInterfaceFactoryInterface;
        _ = cachePolicy;
        std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("No Such PoolType: "), Object.toString(Object.of(poolType))); break :exception error.Exception; }});
    }
};

