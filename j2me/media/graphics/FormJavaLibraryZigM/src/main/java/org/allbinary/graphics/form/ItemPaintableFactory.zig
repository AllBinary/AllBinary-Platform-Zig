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
const ItemPaintable = @import("org/allbinary/graphics/form/ItemPaintable.zig").ItemPaintable;
const PaintableForm = @import("org/allbinary/graphics/form/PaintableForm.zig").PaintableForm;

pub const ItemPaintableFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.ItemPaintableFactory";
    base: ItemPaintable = undefined,
    var instance: ?*ItemPaintableFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ItemPaintableFactory.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ItemPaintable.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*ItemPaintableFactory {
        return Inheritance.upcast(?*ItemPaintableFactory, ItemPaintableFactory.instance);
    }
    

    // throws Exception
    pub fn getInstanceItemPaintable(self: *Self, paintableForm: ?*PaintableForm) ?*ItemPaintable {
        _ = paintableForm;
        _ = self;
        return Inheritance.upcast(?*ItemPaintable, ItemPaintableFactory.instance);
    }
};

