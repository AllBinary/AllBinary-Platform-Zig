// Generated Code Do Not Modify
// package org.platform.opengl

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const PlatformTextureBaseFactory = @import("org/allbinary/platform/opengles/PlatformTextureBaseFactory.zig").PlatformTextureBaseFactory;
const OpenGLGLUUtils = @import("org/platform/opengl/OpenGLGLUUtils.zig").OpenGLGLUUtils;

pub const OpenGLTextureFactory = struct {
    const Self = @This();
    pub const java_name = "org.platform.opengl.OpenGLTextureFactory";
    base: PlatformTextureBaseFactory = undefined,
    gluUtils: ?*OpenGLGLUUtils = null,
    var instance: ?*OpenGLTextureFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLTextureFactory.create();
    }

    fn initFields(this: *Self) void {
        this.gluUtils = Inheritance.upcast(?*OpenGLGLUUtils, OpenGLGLUUtils.getInstance());
    }
    

    pub fn getInstance() ?*OpenGLTextureFactory {
        return Inheritance.upcast(?*OpenGLTextureFactory, OpenGLTextureFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = PlatformTextureBaseFactory.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn load(self: *Self, gl: ?*GL10, target: i32, level: i32, image: ?*Image, border: i32, flip: bool) void {
        _ = gl;
        _ = target;
        _ = level;
        _ = image;
        _ = border;
        _ = flip;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

