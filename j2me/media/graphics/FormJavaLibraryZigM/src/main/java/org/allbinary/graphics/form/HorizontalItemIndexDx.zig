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
// package org.allbinary.graphics.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const ItemIndexDx = @import("org/allbinary/graphics/form/ItemIndexDx.zig").ItemIndexDx;
const ScrollCurrentSelectionForm = @import("org/allbinary/graphics/form/ScrollCurrentSelectionForm.zig").ScrollCurrentSelectionForm;
const Exception = @import("java/lang/Exception.zig").Exception;

pub const HorizontalItemIndexDx = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.HorizontalItemIndexDx";
    base: ItemIndexDx = undefined,
    scrollCurrentSelectionForm: ?*ScrollCurrentSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(scrollCurrentSelectionForm: ?*ScrollCurrentSelectionForm) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ItemIndexDx.create().*;
        this.initFields();
        this.scrollCurrentSelectionForm = scrollCurrentSelectionForm;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getDx(self: *Self, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
        return Inheritance.call(self.scrollCurrentSelectionForm.?, "getXHorizontalForm", .{ index, item, dx, dy });
    }
};

