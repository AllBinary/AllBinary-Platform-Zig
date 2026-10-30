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
// package javax.microedition.lcdui

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const NullImage = struct {
    const Self = @This();
    pub const java_name = "javax.microedition.lcdui.NullImage";
    pub var NULL_IMAGE_ARRAY: []?*Image = undefined;
    pub var NULL_IMAGE: ?*Image = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_IMAGE_ARRAY = array_N65602: { const array_N65602_array = allocator.alloc(?*Image, @intCast(0)) catch unreachable; @memset(array_N65602_array, null); break :array_N65602 array_N65602_array; };
        NULL_IMAGE = Image.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

