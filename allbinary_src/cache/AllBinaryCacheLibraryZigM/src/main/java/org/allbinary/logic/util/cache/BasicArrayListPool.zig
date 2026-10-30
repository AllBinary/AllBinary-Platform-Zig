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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const AbstractArrayListPool = @import("org/allbinary/logic/util/cache/AbstractArrayListPool.zig").AbstractArrayListPool;
const BasicArrayListCacheable = @import("org/allbinary/logic/util/cache/BasicArrayListCacheable.zig").BasicArrayListCacheable;
const CacheableInterface = @import("org/allbinary/logic/util/cache/CacheableInterface.zig").CacheableInterface;
const CacheableInterfaceFactoryInterface = @import("org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.zig").CacheableInterfaceFactoryInterface;

pub const BasicArrayListPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.cache.BasicArrayListPool";
    base: AbstractArrayListPool = undefined,
    

    pub fn create1(cacheableInterfaceFactoryInterface: ?*CacheableInterfaceFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbstractArrayListPool, "create1", .{ cacheableInterfaceFactoryInterface }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn clear(self: *Self) void {
        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "buffers").*.?, "clear").clear();
    }
    

    // throws Exception
    pub fn remove(self: *Self, key: ?Object) ?*CacheableInterface {
        const size: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "buffers").*.?, "size").size();
        if (size > 0) {
            return Inheritance.cast(?*CacheableInterface, Inheritance.call(Inheritance.fieldPointer(self, "buffers").*.?, "removeAt", .{ size - 1 }));
        } else {
            return Inheritance.upcast(?*CacheableInterface, Inheritance.call(Inheritance.fieldPointer(self, "cacheableInterfaceFactoryInterface").*.?, "getInstance", .{ key }));
        }
    }
    

    // throws Exception
    pub fn addAll(self: *Self, usedList: ?*BasicArrayList) void {
        {
            var index: i32 = usedList.?.size();
            while (value_N66094: { index -= 1; break :value_N66094 index; } >= 0) {
            const anyType: ?*CacheableInterface = Inheritance.cast(?*CacheableInterface, usedList.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(self, "add", .{ anyType });
            }
        }
        _ = usedList.?.clear();
    }
    

    // throws Exception
    pub fn releaseUsedBackToPool(self: *Self, usedList: ?*BasicArrayList) void {
        {
            var index: i32 = usedList.?.size();
            while (value_N66401: { index -= 1; break :value_N66401 index; } >= 0) {
            const list: ?*BasicArrayListCacheable = Inheritance.cast(?*BasicArrayListCacheable, usedList.?.objectArray[@intCast(index)]);
            if (Inheritance.receiver(list.?, "size").size() == 0) {
                _ = Inheritance.call(usedList.?, "removeAt", .{ index });
                _ = Inheritance.call(self, "add", .{ list });
            }
            }
        }
    }
};

