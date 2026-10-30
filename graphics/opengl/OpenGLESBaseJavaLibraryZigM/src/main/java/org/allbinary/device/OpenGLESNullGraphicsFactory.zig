// Generated Code Do Not Modify
// package org.allbinary.device

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const OpenGLESGraphics = @import("org/allbinary/device/OpenGLESGraphics.zig").OpenGLESGraphics;

pub const OpenGLESNullGraphicsFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.device.OpenGLESNullGraphicsFactory";
    var instance: ?*OpenGLESGraphics = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLESGraphics.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*OpenGLESGraphics {
        return Inheritance.upcast(?*OpenGLESGraphics, OpenGLESNullGraphicsFactory.instance);
    }
};

