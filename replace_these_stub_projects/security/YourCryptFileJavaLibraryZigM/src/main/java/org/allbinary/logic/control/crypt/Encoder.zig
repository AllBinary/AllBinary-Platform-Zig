// Generated Code Do Not Modify
// package org.allbinary.logic.control.crypt

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const Encoder = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.crypt.Encoder";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn encode(value: []i8) ?*String {
        _ = value;
        return null;
    }
    

    pub fn decode(value: ?*String) []i8 {
        _ = value;
        return null;
    }
};

