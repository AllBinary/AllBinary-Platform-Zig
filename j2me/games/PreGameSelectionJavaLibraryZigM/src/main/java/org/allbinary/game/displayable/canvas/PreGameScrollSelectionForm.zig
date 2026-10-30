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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const FormTypeFactory = @import("org/allbinary/graphics/form/FormTypeFactory.zig").FormTypeFactory;
const ItemPaintableFactory = @import("org/allbinary/graphics/form/ItemPaintableFactory.zig").ItemPaintableFactory;
const ScrollCurrentSelectionForm = @import("org/allbinary/graphics/form/ScrollCurrentSelectionForm.zig").ScrollCurrentSelectionForm;

pub const PreGameScrollSelectionForm = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm";
    base: ScrollCurrentSelectionForm = undefined,
    

    pub fn create5(title: ?*String, items: []?*ABCustomItem, formPaintableFactory: ?*ItemPaintableFactory, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ScrollCurrentSelectionForm, "create8", .{ title, items, formPaintableFactory, 0, 3, false, backgroundBasicColor, foregroundBasicColor }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, rectangle: ?*Rectangle) void {
        _ = Inheritance.call(&self.base, "init", .{ rectangle, FormTypeFactory.getInstance().?.TEMP_HORIZONTAL_FORM });
    }
};

