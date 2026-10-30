// Generated Code Do Not Modify
// package org.eclipse.swt.graphics

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const Resource = struct {
    const Self = @This();
    pub const java_name = "org.eclipse.swt.graphics.Resource";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn dispose(self: *Self) void {
        _ = self;
    }
    

    pub fn isDisposed(self: *Self) bool {
        _ = self;
        return false;
    }
};

