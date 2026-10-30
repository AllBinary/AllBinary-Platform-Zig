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
// package org.allbinary.logic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;

//ActualPlatform
pub const NullUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.NullUtil";
    NULL_OBJECT: ?Object = null,
    NULL_CLASS: ?*anyopaque = null,
    NULL_OBJECT_ARRAY: []?Object = &.{},
    NULL_CHAR_ARRAY: []u16 = &.{},
    NULL_BYTE_ARRAY: []i8 = &.{},
    NULL_SHORT_ARRAY_ARRAY: [][]i16 = &.{},
    NULL_INT_ARRAY: []i32 = &.{},
    NULL_INT_ARRAY_ARRAY: [][]i32 = &.{},
    NULL_INT_ARRAY_ARRAY_ARRAY: [][][]i32 = &.{},
    NULL_FLOAT_ARRAY: []f32 = &.{},
    var instance: ?*NullUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = NullUtil.create();
    }

    fn initFields(this: *Self) void {
        this.NULL_OBJECT = Object.create();
        this.NULL_CLASS = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(this.NULL_OBJECT).?.class))));
        this.NULL_OBJECT_ARRAY = array_N65840: { const array_N65840_array = allocator.alloc(?Object, @intCast(0)) catch unreachable; @memset(array_N65840_array, null); break :array_N65840 array_N65840_array; };
        this.NULL_CHAR_ARRAY = array_N65906: { const array_N65906_array = allocator.alloc(u16, @intCast(0)) catch unreachable; @memset(array_N65906_array, 0); break :array_N65906 array_N65906_array; };
        this.NULL_BYTE_ARRAY = array_N65964: { const array_N65964_array = allocator.alloc(i8, @intCast(0)) catch unreachable; @memset(array_N65964_array, 0); break :array_N65964 array_N65964_array; };
        this.NULL_SHORT_ARRAY_ARRAY = array_N66022: { const array_N66022_array = allocator.alloc([]i16, @intCast(0)) catch unreachable; for (array_N66022_array) |*array_N66022_row| { array_N66022_row.* = allocator.alloc(i16, @intCast(0)) catch unreachable; @memset(array_N66022_row.*, 0); } break :array_N66022 array_N66022_array; };
        this.NULL_INT_ARRAY = array_N66093: { const array_N66093_array = allocator.alloc(i32, @intCast(0)) catch unreachable; @memset(array_N66093_array, 0); break :array_N66093 array_N66093_array; };
        this.NULL_INT_ARRAY_ARRAY = array_N66151: { const array_N66151_array = allocator.alloc([]i32, @intCast(0)) catch unreachable; for (array_N66151_array) |*array_N66151_row| { array_N66151_row.* = allocator.alloc(i32, @intCast(0)) catch unreachable; @memset(array_N66151_row.*, 0); } break :array_N66151 array_N66151_array; };
        this.NULL_INT_ARRAY_ARRAY_ARRAY = undefined // Otherwise - newArray - 3
;
        this.NULL_FLOAT_ARRAY = array_N66306: { const array_N66306_array = allocator.alloc(f32, @intCast(0)) catch unreachable; @memset(array_N66306_array, 0.0); break :array_N66306 array_N66306_array; };
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*NullUtil {
        return Inheritance.upcast(?*NullUtil, NullUtil.instance);
    }
};

