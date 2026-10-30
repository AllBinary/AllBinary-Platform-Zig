// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Screen = @import("javax/microedition/lcdui/Screen.zig").Screen;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const ABCustomItem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.ABCustomItem";
    pub var NULL_CUSTOM_ITEM: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_CUSTOM_ITEM = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }
    

    pub fn getNullInstance() ?*ABCustomItem {
        if (Object.same(ABCustomItem.NULL_CUSTOM_ITEM, NullUtil.getInstance().?.NULL_OBJECT)) {
            ABCustomItem.NULL_CUSTOM_ITEM = Inheritance.upcast(@TypeOf(ABCustomItem.NULL_CUSTOM_ITEM), Inheritance.callStatic(ABCustomItem, "create3", .{ StringUtil.getInstance().?.EMPTY_STRING, BasicColorFactory.getInstance().?.BLACK, BasicColorFactory.getInstance().?.WHITE }));
        }
        return Inheritance.cast(?*ABCustomItem, ABCustomItem.NULL_CUSTOM_ITEM);
    }
    

    pub fn create3(label: ?*String, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        _ = label;
        _ = backgroundBasicColor;
        _ = foregroundBasicColor;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn setOwner(self: *Self, owner: ?*Screen) void {
        _ = owner;
        _ = self;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = graphics;
        _ = x;
        _ = y;
        _ = self;
    }
    

    pub fn paintUnselected(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = graphics;
        _ = x;
        _ = y;
        _ = self;
    }
    

    pub fn isFocusable(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getLabel(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn setLabel(self: *Self, label: ?*String) void {
        _ = label;
        _ = self;
    }
    

    pub fn getHeight(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn setHeight(self: *Self, height: i32) void {
        _ = height;
        _ = self;
    }
    

    pub fn getValue(self: *Self) f32 {
        _ = self;
        return 0.0;
    }
    

    pub fn setValue(self: *Self, value: f32) void {
        _ = value;
        _ = self;
    }
    

    pub fn getMinimumWidth(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn getMinimumHeight(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn preMeasurement(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
};

