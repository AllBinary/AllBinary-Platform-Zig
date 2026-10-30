// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const ABCustomItemInterface = @import("org/allbinary/graphics/form/item/ABCustomItemInterface.zig").ABCustomItemInterface;
const ABStringComponent = @import("org/allbinary/graphics/form/item/ABStringComponent.zig").ABStringComponent;
const CustomCustomItem = @import("org/allbinary/graphics/form/item/CustomCustomItem.zig").CustomCustomItem;

pub const ABTextItem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.ABTextItem";
    pub const java_interfaces = .{ ABCustomItemInterface };
    base: CustomCustomItem = undefined,
    // Implements ABCustomItemInterface
    

    pub fn create5(label: ?*String, layout: i32, altText: ?*String, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        _ = layout;
        _ = altText;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CustomCustomItem, "create3", .{ label, backgroundBasicColor, foregroundBasicColor }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn keyPressed(self: *Self, keyCode: i32) void {
        _ = keyCode;
        _ = self;
    }
    

    pub fn paintUnselected(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = graphics;
        _ = x;
        _ = y;
        _ = self;
    }
    

    pub fn getLabelStringComponent(self: *Self) ?*ABStringComponent {
        _ = self;
        return Inheritance.upcast(?*ABStringComponent, ABStringComponent.NULL_STRING_COMPONENT);
    }
};

