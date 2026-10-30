// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const OpenGLProcessor = @import("org/allbinary/graphics/opengles/OpenGLProcessor.zig").OpenGLProcessor;

pub const NullOpenGLProcessorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.NullOpenGLProcessorFactory";
    var instance: ?*OpenGLProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLProcessor.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*OpenGLProcessor {
        return Inheritance.upcast(?*OpenGLProcessor, NullOpenGLProcessorFactory.instance);
    }
};

