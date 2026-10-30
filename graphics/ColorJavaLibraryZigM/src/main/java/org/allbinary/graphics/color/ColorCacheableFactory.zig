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
// package org.allbinary.graphics.color

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CacheableInterface = @import("org/allbinary/logic/util/cache/CacheableInterface.zig").CacheableInterface;
const CacheableInterfaceFactoryInterface = @import("org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.zig").CacheableInterfaceFactoryInterface;
const ColorCacheable = @import("org/allbinary/graphics/color/ColorCacheable.zig").ColorCacheable;

pub const ColorCacheableFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.color.ColorCacheableFactory";
    // Implements CacheableInterfaceFactoryInterface
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(self: *Self, key: ?Object) ?*CacheableInterface {
        _ = self;
        return Inheritance.upcast(?*CacheableInterface, Inheritance.callStatic(ColorCacheable, "create1", .{ key }));
    }
};

