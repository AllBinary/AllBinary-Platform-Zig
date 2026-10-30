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

pub const ItemColorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.ItemColorFactory";
    INVERT_PAINT: i32 = 0,
    PAINT: i32 = 0,
    TEXT_FIELD_NO_FOCUS: i32 = 0,
    var instance: ?*ItemColorFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ItemColorFactory.create();
    }

    fn initFields(this: *Self) void {
        this.INVERT_PAINT = @as(i32, @bitCast(@as(u32, 0xFF000000)));
        this.PAINT = @as(i32, @bitCast(@as(u32, 0xFFe07718)));
        this.TEXT_FIELD_NO_FOCUS = 0x7F7F7F;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ItemColorFactory {
        return Inheritance.upcast(?*ItemColorFactory, ItemColorFactory.instance);
    }
};

