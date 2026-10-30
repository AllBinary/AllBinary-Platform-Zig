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
// package org.allbinary.graphics

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;

pub const RectangleFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.RectangleFactory";
    pub var SINGLETON: ?*Rectangle = undefined;
    pub var ARRAY_OF_ARRAYS: [][]?*Rectangle = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = Inheritance.callStatic(Rectangle, "create3", .{ PointFactory.getInstance().?.ZERO_ZERO, 0, 0 });
        ARRAY_OF_ARRAYS = array_N65683: { const array_N65683_array = allocator.alloc([]?*Rectangle, @intCast(0)) catch unreachable; for (array_N65683_array) |*array_N65683_row| { array_N65683_row.* = allocator.alloc(?*Rectangle, @intCast(0)) catch unreachable; @memset(array_N65683_row.*, null); } break :array_N65683 array_N65683_array; };
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

