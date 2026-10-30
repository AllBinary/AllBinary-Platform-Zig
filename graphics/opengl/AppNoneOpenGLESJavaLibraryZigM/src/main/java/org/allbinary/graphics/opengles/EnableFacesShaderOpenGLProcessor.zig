// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
const ObjectThreedOpenGLProcessor = @import("org/allbinary/graphics/threed/min3d/renderer/processor/ObjectThreedOpenGLProcessor.zig").ObjectThreedOpenGLProcessor;

pub const EnableFacesShaderOpenGLProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.EnableFacesShaderOpenGLProcessor";
    base: ObjectThreedOpenGLProcessor = undefined,
    var instance: ?*EnableFacesShaderOpenGLProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = EnableFacesShaderOpenGLProcessor.create();
    }
    

    pub fn getInstance() ?*EnableFacesShaderOpenGLProcessor {
        return Inheritance.upcast(?*EnableFacesShaderOpenGLProcessor, EnableFacesShaderOpenGLProcessor.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ObjectThreedOpenGLProcessor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn process(self: *Self, gl: ?*GL10, anyType: ?Object) void {
        _ = gl;
        _ = anyType;
        _ = self;
    }
};

