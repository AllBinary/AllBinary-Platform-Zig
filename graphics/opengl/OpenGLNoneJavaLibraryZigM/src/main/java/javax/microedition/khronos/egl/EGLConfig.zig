// Generated Code Do Not Modify
// package javax.microedition.khronos.egl

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const EGLConfig = struct {
    const Self = @This();
    pub const java_name = "javax.microedition.khronos.egl.EGLConfig";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        std.debug.panic("{any}", .{error.RuntimeException});
        return this;
    }
};

