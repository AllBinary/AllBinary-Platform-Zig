// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.util

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

pub const BasicArrayListS = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.util.BasicArrayListS";
    base: BasicArrayList = undefined,
    

    pub fn create1(size: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicArrayList, "create1", .{ NullUtil.getInstance().?.NULL_OBJECT_ARRAY }).*;
        if (size < 0) {
            std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Init Size Exception: ") }).?, "appendint", .{ size }))); break :exception error.IllegalArgumentException; }});
        }
        Inheritance.fieldPointer(this, "objectArray").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "objectArray").*), array_N65851: { const array_N65851_array = allocator.alloc(?Object, @intCast(size)) catch unreachable; @memset(array_N65851_array, null); break :array_N65851 array_N65851_array; });
        Inheritance.bindOverrides(this);
        return this;
    }
};

