// Generated Code Do Not Modify
// package org.apache.xmlrpc

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const XmlRpcException = struct {
    const Self = @This();
    pub const java_name = "org.apache.xmlrpc.XmlRpcException";
    base: Exception = undefined,
    

    pub fn create2(code: i32, message: ?*String) *Self {
        _ = code;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Exception, "create1", .{ message }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

