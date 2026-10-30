// Generated Code Do Not Modify
// package org.allbinary.graphics.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CustomDisplayable = @import("org/allbinary/graphics/form/CustomDisplayable.zig").CustomDisplayable;

pub const CustomScreen = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.CustomScreen";
    base: CustomDisplayable = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CustomDisplayable.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

