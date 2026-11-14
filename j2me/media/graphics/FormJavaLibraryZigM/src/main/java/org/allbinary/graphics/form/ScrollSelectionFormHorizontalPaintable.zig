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
const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const ItemIndexPaintable = @import("org/allbinary/graphics/form/ItemIndexPaintable.zig").ItemIndexPaintable;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;
const Exception = @import("java/lang/Exception.zig").Exception;

pub const ScrollSelectionFormHorizontalPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.ScrollSelectionFormHorizontalPaintable";
    base: ItemIndexPaintable = undefined,
    scrollSelectionForm: ?*ScrollSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(scrollSelectionForm: ?*ScrollSelectionForm) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ItemIndexPaintable.create().*;
        this.initFields();
        this.scrollSelectionForm = scrollSelectionForm;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn paint(self: *Self, graphics: ?*Graphics, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
        return Inheritance.call(self.scrollSelectionForm.?, "paintItemHorizontal", .{ graphics, index, item, dx, dy });
    }
};

