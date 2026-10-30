// Generated Code Do Not Modify
// package java.lang

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

//J2SE to J2ME compatibility
pub const Deprecated = struct {
    const Self = @This();
    pub const java_name = "java.lang.Deprecated";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

