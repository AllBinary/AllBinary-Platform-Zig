// Generated Code Do Not Modify
// package org.allbinary.graphics.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const CustomScreen = @import("org/allbinary/graphics/form/CustomScreen.zig").CustomScreen;

pub const ABCustomForm = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.ABCustomForm";
    base: CustomScreen = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn create4(title: ?*String, items: []?*ABCustomItem, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        _ = title;
        _ = items;
        _ = backgroundBasicColor;
        _ = foregroundBasicColor;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CustomScreen.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getAllitems(self: *Self) []?*ABCustomItem {
        _ = self;
        return array_N65975: { const array_N65975_array = allocator.alloc(?*ABCustomItem, @intCast(0)) catch unreachable; @memset(array_N65975_array, null); break :array_N65975 array_N65975_array; };
    }
    

    pub fn size(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn setSelectedIndex(self: *Self, index: i32) void {
        _ = index;
        _ = self;
    }
    

    pub fn getSelectedIndex(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn deleteAll(self: *Self) void {
        _ = self;
    }
    

    pub fn delete(self: *Self, itemNum: i32) void {
        _ = itemNum;
        _ = self;
    }
    

    pub fn append(self: *Self, item: ?*ABCustomItem) i32 {
        _ = item;
        _ = self;
        return -1;
    }
    

    pub fn insert(self: *Self, itemNum: i32, item: ?*ABCustomItem) void {
        _ = itemNum;
        _ = item;
        _ = self;
    }
    

    pub fn set(self: *Self, itemNum: i32, item: ?*ABCustomItem) void {
        _ = itemNum;
        _ = item;
        _ = self;
    }
    

    pub fn get(self: *Self, itemNum: i32) ?*ABCustomItem {
        _ = itemNum;
        _ = self;
        return Inheritance.upcast(?*ABCustomItem, ABCustomItem.getNullInstance());
    }
    

    pub fn getWidth(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn getTitle(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
};

