// Generated Code Do Not Modify
// package org.allbinary.logic.control.crypt

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const SuperCrypt = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.crypt.SuperCrypt";
    pub var KEYMAX: i32 = 0;
    

    pub fn create1(key: i32) *Self {
        _ = key;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn encrypt(self: *Self, value: ?*String) ?*String {
        _ = value;
        _ = self;
        return null;
    }
    

    pub fn decrypt(self: *Self, value: ?*String) ?*String {
        _ = value;
        _ = self;
        return null;
    }
};

