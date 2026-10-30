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
// package org.allbinary.graphics.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;

pub const ItemIndexDx = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.ItemIndexDx";
    var instance: ?*ItemIndexDx = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ItemIndexDx.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*ItemIndexDx {
        return Inheritance.upcast(?*ItemIndexDx, ItemIndexDx.instance);
    }
    

    // throws Exception
    pub fn getDx(self: *Self, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
        _ = index;
        _ = item;
        _ = dx;
        _ = dy;
        _ = self;
        return 0;
    }
};

