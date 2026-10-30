// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Visitor = @import("org/allbinary/logic/util/visitor/Visitor.zig").Visitor;
const ABTextItem = @import("org/allbinary/graphics/form/item/ABTextItem.zig").ABTextItem;

pub const ABTextFieldItem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.ABTextFieldItem";
    base: ABTextItem = undefined,
    font: ?*Font = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create10(canvas: ?*Canvas, visitor: ?*Visitor, label: ?*String, value: ?*String, maxSize: i32, layout: i32, altText: ?*String, font: ?*Font, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        _ = canvas;
        _ = visitor;
        _ = value;
        _ = maxSize;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ABTextItem, "create5", .{ label, layout, altText, backgroundBasicColor, foregroundBasicColor }).*;
        this.initFields();
        this.font = font;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getLabel(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn setLabel(self: *Self, label: ?*String) void {
        _ = label;
        _ = self;
    }
    

    pub fn getString(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn setString(self: *Self, string: ?*String) void {
        _ = string;
        _ = self;
    }
    

    pub fn setFocus(self: *Self, state: bool) void {
        _ = state;
        _ = self;
    }
    

    pub fn getFontHeight(self: *Self) i32 {
        return self.font.?.getHeight();
    }
    

    pub fn setBackgroundBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        _ = basicColor;
        _ = self;
    }
    

    pub fn setForegroundBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        _ = basicColor;
        _ = self;
    }
};

