// Generated Code Do Not Modify
// package org.allbinary.graph

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const V = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graph.V";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getId(self: *Self) i32 {
        _ = self;
        return 0;
    }
};

