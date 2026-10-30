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
// package org.allbinary.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BaseCircularPool = @import("org/allbinary/logic/util/cache/BaseCircularPool.zig").BaseCircularPool;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerFactoryInterface = @import("org/allbinary/layer/AllBinaryLayerFactoryInterface.zig").AllBinaryLayerFactoryInterface;

pub const AllBinaryLayerCircularPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.AllBinaryLayerCircularPool";
    base: BaseCircularPool = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseCircularPool.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn initAllBinaryLayerCircularPool(self: *Self, allbinaryLayerFactoryInterface: ?*AllBinaryLayerFactoryInterface, total: i32) void {
        Inheritance.fieldPointer(self, "circularIndexUtil").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "circularIndexUtil").*), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ total }));
        Inheritance.fieldPointer(self, "OBJECT_ARRAY").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "OBJECT_ARRAY").*), array_N65740: { const array_N65740_array = allocator.alloc(?*AllBinaryLayer, @intCast(total)) catch unreachable; @memset(array_N65740_array, null); break :array_N65740 array_N65740_array; });
        {
            var localIndex: i32 = 0;
            while (localIndex < total) : (localIndex += 1) {
            Inheritance.fieldPointer(self, "OBJECT_ARRAY").*[@intCast(localIndex)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "OBJECT_ARRAY").*[@intCast(localIndex)]), allbinaryLayerFactoryInterface.?.getInstance());
            }
        }
    }
};

