// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;

pub const ABStringComponent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.ABStringComponent";
    pub var NULL_STRING_COMPONENT: ?*ABStringComponent = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_STRING_COMPONENT = Inheritance.callStatic(ABStringComponent, "create2", .{ BasicColorFactory.getInstance().?.BLACK, BasicColorFactory.getInstance().?.WHITE });
    }
    

    pub fn getBackgroundBasicColor(self: *Self) ?*BasicColor {
        _ = self;
        return Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.WHITE);
    }
    

    pub fn create2(backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        _ = backgroundBasicColor;
        _ = foregroundBasicColor;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getForegroundBasicColor(self: *Self) ?*BasicColor {
        _ = self;
        return Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.WHITE);
    }
    

    pub fn setForegroundBasicColor(self: *Self, foregroundBasicColor: ?*BasicColor) void {
        _ = foregroundBasicColor;
        _ = self;
    }
};

