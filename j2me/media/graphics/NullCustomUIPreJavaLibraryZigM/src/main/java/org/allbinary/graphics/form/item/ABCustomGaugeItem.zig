// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;

pub const ABCustomGaugeItem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.ABCustomGaugeItem";
    base: ABCustomItem = undefined,
    pub var NULL_GAUGE_ITEM: ?*ABCustomGaugeItem = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_GAUGE_ITEM = Inheritance.callStatic(ABCustomGaugeItem, "create5", .{ StringUtil.getInstance().?.EMPTY_STRING, 1, 0, BasicColorFactory.getInstance().?.BLACK, BasicColorFactory.getInstance().?.WHITE });
    }
    

    pub fn create5(label: ?*String, maxValue: i32, initialValue: i32, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        _ = maxValue;
        _ = initialValue;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ABCustomItem, "create3", .{ label, backgroundBasicColor, foregroundBasicColor }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

