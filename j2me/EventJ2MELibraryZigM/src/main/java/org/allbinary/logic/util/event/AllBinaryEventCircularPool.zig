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
// package org.allbinary.logic.util.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BaseCircularPool = @import("org/allbinary/logic/util/cache/BaseCircularPool.zig").BaseCircularPool;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const AllBinaryEventObjectFactoryInterface = @import("org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface.zig").AllBinaryEventObjectFactoryInterface;

pub const AllBinaryEventCircularPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.event.AllBinaryEventCircularPool";
    base: BaseCircularPool = undefined,
    

    pub fn create1(max: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseCircularPool.create().*;
        Inheritance.fieldPointer(this, "OBJECT_ARRAY").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "OBJECT_ARRAY").*), array_N65685: { const array_N65685_array = allocator.alloc(?Object, @intCast(max)) catch unreachable; @memset(array_N65685_array, null); break :array_N65685 array_N65685_array; });
        Inheritance.fieldPointer(this, "circularIndexUtil").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "circularIndexUtil").*), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ max }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initAllBinaryEventCircularPool(self: *Self, allBinaryEventObjectFactoryInterface: ?*AllBinaryEventObjectFactoryInterface) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "setIndex", .{ 0 });
        const size: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getSize").getSize();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            Inheritance.fieldPointer(self, "OBJECT_ARRAY").*[@intCast(index)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "OBJECT_ARRAY").*[@intCast(index)]), allBinaryEventObjectFactoryInterface.?.getInstance());
            }
        }
    }
};

