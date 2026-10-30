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
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;
const BaseBasicArrayListCache = @import("org/allbinary/logic/util/cache/BaseBasicArrayListCache.zig").BaseBasicArrayListCache;
const CacheInterface = @import("org/allbinary/logic/util/cache/CacheInterface.zig").CacheInterface;
const CacheableInterface = @import("org/allbinary/logic/util/cache/CacheableInterface.zig").CacheableInterface;

pub const IndexedBasicArrayListCache = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.cache.IndexedBasicArrayListCache";
    pub const java_interfaces = .{ CacheInterface };
    base: BaseBasicArrayListCache = undefined,
    commonStrings: ?*CommonStrings = null,
    size: i32 = 0,
    index: i32 = 0,
    // Implements CacheInterface

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.size = 0;
        this.index = 0;
    }
    

    // throws Exception
    pub fn createCache(size: i32) ?*IndexedBasicArrayListCache {
        const indexedBasicArrayListCache: ?*IndexedBasicArrayListCache = IndexedBasicArrayListCache.create();
        _ = Inheritance.call(indexedBasicArrayListCache.?, "init", .{ size });
        return indexedBasicArrayListCache;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseBasicArrayListCache.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, size: i32) void {
        if (self.size < size) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "list").*.?, "ensureCapacity", .{ size });
            {
                var index: i32 = size - 1;
                while (index >= self.size) : (index -= 1) {
                _ = self.addDefault();
                }
            }
            self.size = size;
        }
    }
    

    pub fn getAt(self: *Self, index: i32) ?Object {
        return Inheritance.upcast(?Object, Inheritance.fieldPointer(self, "list").*.?.objectArray[@intCast(index)]);
    }
    

    // throws Exception
    pub fn addDefault(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn addObject(self: *Self, anyType: ?Object) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "list").*.?, "add", .{ anyType });
    }
    

    // throws Exception
    pub fn add(self: *Self, cacheableInterface: ?*CacheableInterface) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "list").*.?, "add", .{ cacheableInterface });
    }
    

    // throws Exception
    pub fn addArray(self: *Self, cacheableInterfaces: []?*CacheableInterface) void {
        _ = cacheableInterfaces;
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = String.literal("No Imple"); break :exception error.Exception; }});
    }
    

    pub fn clear(self: *Self) void {
        self.index = 0;
    }
};

