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
const Integer = @import("java/lang/Integer.zig").Integer;

pub const ColorCacheable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.color.ColorCacheable";
    key: ?Object = null,
    color: ?*Color = null,
    // Implements CacheableInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create1(key: ?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.key = key;
        this.color = Inheritance.callStatic(Color, "create1", .{ Inheritance.receiverOf((Inheritance.cast(?*Integer, key)).?, "intValue").intValue() });
        return this;
    }
    

    pub fn getKey(self: *Self) ?Object {
        return self.key;
    }
    

    pub fn getColor(self: *Self) ?*Color {
        return self.color;
    }
    

    pub fn setColor(self: *Self, color: ?*Color) void {
        self.color = color;
    }
};

