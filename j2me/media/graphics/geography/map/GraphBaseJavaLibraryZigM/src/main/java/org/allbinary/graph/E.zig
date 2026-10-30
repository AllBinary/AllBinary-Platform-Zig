// Generated Code Do Not Modify
// package org.allbinary.graph

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const E = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graph.E";
    var e: ?*E = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        e = E.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn newInstance(self: *Self) ?*E {
        _ = self;
        return Inheritance.upcast(?*E, E.e);
    }
};

