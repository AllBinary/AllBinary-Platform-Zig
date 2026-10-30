// Generated Code Do Not Modify
// package org.allbinary.image.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const OpenGLStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.opengles.OpenGLStrings";
    GL_ERROR_LABEL: ?*String = null,
    SET: ?*String = null,
    var instance: ?*OpenGLStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLStrings.create();
    }

    fn initFields(this: *Self) void {
        this.GL_ERROR_LABEL = String.literal("GLError: ");
        this.SET = String.literal("set(GL10)");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*OpenGLStrings {
        return Inheritance.upcast(?*OpenGLStrings, OpenGLStrings.instance);
    }
};

