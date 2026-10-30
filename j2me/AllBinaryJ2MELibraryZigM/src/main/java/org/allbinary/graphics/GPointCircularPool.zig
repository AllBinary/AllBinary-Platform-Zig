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
const BaseCircularPool = @import("org/allbinary/logic/util/cache/BaseCircularPool.zig").BaseCircularPool;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const CustomGPoint = @import("org/allbinary/graphics/CustomGPoint.zig").CustomGPoint;

pub const GPointCircularPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.GPointCircularPool";
    base: BaseCircularPool = undefined,
    

    pub fn create1(size: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseCircularPool.create().*;
        Inheritance.fieldPointer(this, "circularIndexUtil").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "circularIndexUtil").*), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ size }));
        Inheritance.fieldPointer(this, "OBJECT_ARRAY").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "OBJECT_ARRAY").*), array_N65722: { const array_N65722_array = allocator.alloc(?Object, @intCast(size)) catch unreachable; @memset(array_N65722_array, null); break :array_N65722 array_N65722_array; });
        {
            var index: i32 = size - 1;
            while (index >= 0) : (index -= 1) {
            Inheritance.fieldPointer(this, "OBJECT_ARRAY").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "OBJECT_ARRAY").*[@intCast(index)]), Inheritance.callStatic(CustomGPoint, "getInstance3", .{ 0, 0 }));
            }
        }
        Inheritance.bindOverrides(this);
        return this;
    }
};

