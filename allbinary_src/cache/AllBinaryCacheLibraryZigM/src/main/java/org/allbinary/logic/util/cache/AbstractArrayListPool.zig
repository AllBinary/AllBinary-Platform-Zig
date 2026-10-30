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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CacheableInterface = @import("org/allbinary/logic/util/cache/CacheableInterface.zig").CacheableInterface;
const CacheableInterfaceFactoryInterface = @import("org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.zig").CacheableInterfaceFactoryInterface;
const PoolInterface = @import("org/allbinary/logic/util/cache/PoolInterface.zig").PoolInterface;

pub const AbstractArrayListPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.cache.AbstractArrayListPool";
    pub const java_interfaces = .{ PoolInterface };
    commonStrings: ?*CommonStrings = null,
    buffers: ?*BasicArrayList = null,
    cacheableInterfaceFactoryInterface: ?*CacheableInterfaceFactoryInterface = null,
    // Implements PoolInterface

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.buffers = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        
    }
    

    pub fn create1(cacheableInterfaceFactoryInterface: ?*CacheableInterfaceFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.cacheableInterfaceFactoryInterface = cacheableInterfaceFactoryInterface;
        return this;
    }
    

    // throws Exception
    pub fn clear(self: *Self) void {
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn remove(self: *Self, key: ?Object) ?*CacheableInterface {
        _ = key;
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn add(self: *Self, cacheableInterface: ?*CacheableInterface) void {
        _ = Inheritance.call(self.buffers.?, "add", .{ cacheableInterface });
    }
    

    // throws Exception
    pub fn addArray(self: *Self, cacheableInterfaces: []?*CacheableInterface) void {
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(cacheableInterfaces.len))) : (index += 1) {
            _ = Inheritance.call(self.buffers.?, "add", .{ cacheableInterfaces[@intCast(index)] });
            }
        }
    }
};

