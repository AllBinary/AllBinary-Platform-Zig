// Generated Code Do Not Modify
// package org.platform.opengl

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ByteBuffer = @import("java/nio/ByteBuffer.zig").ByteBuffer;
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
const OpenGLBitmap = @import("org/allbinary/graphics/OpenGLBitmap.zig").OpenGLBitmap;
const OpenGLESImage = @import("org/allbinary/image/opengles/OpenGLESImage.zig").OpenGLESImage;

pub const OpenGLGLUUtils = struct {
    const Self = @This();
    pub const java_name = "org.platform.opengl.OpenGLGLUUtils";
    var instance: ?*OpenGLGLUUtils = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLGLUUtils.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*OpenGLGLUUtils {
        return Inheritance.upcast(?*OpenGLGLUUtils, OpenGLGLUUtils.instance);
    }
    

    pub fn makeByteBuffer(self: *Self, bmp: ?*OpenGLBitmap, flip: bool) ?*ByteBuffer {
        _ = bmp;
        _ = flip;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn texImage2D(self: *Self, gl: ?*GL10, glVersion: ?*String, target: i32, level: i32, generateMipMap: bool, openGLESImage: ?*OpenGLESImage, border: i32, flip: bool) void {
        _ = gl;
        _ = glVersion;
        _ = target;
        _ = level;
        _ = generateMipMap;
        _ = openGLESImage;
        _ = border;
        _ = flip;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn texImage2D(self: *Self, gl: ?*GL10, glVersion: ?*String, target: i32, level: i32, generateMipMap: bool, bitmap: ?*OpenGLBitmap, border: i32, flip: bool) void {
        _ = gl;
        _ = glVersion;
        _ = target;
        _ = level;
        _ = generateMipMap;
        _ = bitmap;
        _ = border;
        _ = flip;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

