// Generated Code Do Not Modify
// package org.allbinary.device

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL = @import("javax/microedition/khronos/opengles/GL.zig").GL;
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
const FontDebugBase = @import("org/allbinary/graphics/font/FontDebugBase.zig").FontDebugBase;
const OpenGLSurfaceChangedInterface = @import("org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.zig").OpenGLSurfaceChangedInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GraphicsInterface = @import("org/allbinary/device/GraphicsInterface.zig").GraphicsInterface;
const NullGL10 = @import("org/allbinary/device/NullGL10.zig").NullGL10;

pub const OpenGLESGraphics = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.device.OpenGLESGraphics";
    pub const java_interfaces = .{ GraphicsInterface };
    commonStrings: ?*CommonStrings = null,
    gl: ?*GL10 = null,
    // Implements OpenGLSurfaceChangedInterface
    // Implements GraphicsInterface

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.gl = Inheritance.upcast(?*GL10, NullGL10.NULL_GL10);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn updateGL(self: *Self, gl: ?*GL) void {
        _ = gl;
        _ = self;
    }
    

    pub fn set(self: *Self, gl: ?*GL) void {
        _ = gl;
        _ = self;
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn update(self: *Self) void {
        _ = self;
    }
    

    pub fn setOrthoginalMode(self: *Self) void {
        _ = self;
    }
    

    pub fn setCameraMode(self: *Self) void {
        _ = self;
    }
    

    pub fn getGlP(self: *Self) ?*GL10 {
        return self.gl;
    }
    

    pub fn setFontDebug(self: *Self, font: ?*Font, fontDebug: ?*FontDebugBase) void {
        _ = font;
        _ = fontDebug;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

