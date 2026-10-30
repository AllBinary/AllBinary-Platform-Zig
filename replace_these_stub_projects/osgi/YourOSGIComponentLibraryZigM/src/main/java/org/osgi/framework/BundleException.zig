// Generated Code Do Not Modify
// package org.osgi.framework

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const BundleException = struct {
    const Self = @This();
    pub const java_name = "org.osgi.framework.BundleException";
    base: Exception = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Exception.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

