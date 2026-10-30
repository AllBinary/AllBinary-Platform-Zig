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
const ItemPaintableFactory = @import("org/allbinary/graphics/form/ItemPaintableFactory.zig").ItemPaintableFactory;
const LockablePaintable = @import("org/allbinary/graphics/form/LockablePaintable.zig").LockablePaintable;
const PaintableForm = @import("org/allbinary/graphics/form/PaintableForm.zig").PaintableForm;

pub const LockableFormPaintableFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.LockableFormPaintableFactory";
    base: ItemPaintableFactory = undefined,
    lockedIndex: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(lockedIndex: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ItemPaintableFactory.create().*;
        this.initFields();
        this.lockedIndex = lockedIndex;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getInstanceItemPaintable(self: *Self, paintableForm: ?*PaintableForm) ?*ItemPaintable {
        _ = paintableForm;
        return Inheritance.upcast(?*ItemPaintable, Inheritance.callStatic(LockablePaintable, "create1", .{ self.lockedIndex }));
    }
};

