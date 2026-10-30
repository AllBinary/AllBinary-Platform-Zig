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
// package org.allbinary.graphics.form.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const ABStringComponent = @import("org/allbinary/graphics/form/item/ABStringComponent.zig").ABStringComponent;
const ABTextItem = @import("org/allbinary/graphics/form/item/ABTextItem.zig").ABTextItem;

pub const SelectableTextItem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.SelectableTextItem";
    base: ABTextItem = undefined,
    

    pub fn create5(label: ?*String, layout: i32, altText: ?*String, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ABTextItem, "create5", .{ label, layout, altText, backgroundBasicColor, foregroundBasicColor }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isFocusable(self: *Self) bool {
        _ = self;
        return true;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "myFontProcessor").*.?, "process", .{ graphics });
        const stringComponent: ?*ABStringComponent = Inheritance.upcast(?*ABStringComponent, Inheritance.receiver(self, "getLabelStringComponent").getLabelStringComponent());
        if (stringComponent != null) {
            _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.receiverOf(stringComponent.?.getForegroundBasicColor().?, "intValue").intValue() });
        }
        _ = Inheritance.call(graphics.?, "drawString", .{ Inheritance.receiver(self, "getLabel").getLabel(), x + 2, y, 0 });
    }
};

