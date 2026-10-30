//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package org.allbinary.image.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ByteBuffer = @import("java/nio/ByteBuffer.zig").ByteBuffer;
// const ByteOrder = @import("java/nio/ByteOrder.zig").ByteOrder;
// const FloatBuffer = @import("java/nio/FloatBuffer.zig").FloatBuffer;
// const GL = @import("javax/microedition/khronos/opengles/GL.zig").GL;
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const OpenGLLogUtil = @import("org/allbinary/graphics/opengles/OpenGLLogUtil.zig").OpenGLLogUtil;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const GLUtil = @import("org/allbinary/opengles/GLUtil.zig").GLUtil;
const PlatformBitmapBaseFactory = @import("org/allbinary/platform/graphics/PlatformBitmapBaseFactory.zig").PlatformBitmapBaseFactory;
const PlatformTextureBaseFactory = @import("org/allbinary/platform/opengles/PlatformTextureBaseFactory.zig").PlatformTextureBaseFactory;
const OpenGLESImage = @import("org/allbinary/image/opengles/OpenGLESImage.zig").OpenGLESImage;

//This is not actually VBO impl
pub const OpenGLESGL11VBOImage = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.opengles.OpenGLESGL11VBOImage";
    base: OpenGLESImage = undefined,
    glUtil: ?*GLUtil = null,
    textureVertexFloatBuffer: ?*FloatBuffer = null,
    regionRectangleFloatArray: []f32 = &.{},
    regionRectangleVertexFloatBuffer: ?*FloatBuffer = null,
    regionTextureRectangleFloatArray: []f32 = &.{},
    regionTextureVertexFloatBuffer: ?*FloatBuffer = null,

    fn initFields(this: *Self) void {
        this.glUtil = Inheritance.upcast(?*GLUtil, GLUtil.getInstance());
        this.textureVertexFloatBuffer = Inheritance.upcast(?*FloatBuffer, Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(ByteBuffer, "allocateDirect", .{ 4 * 4 * 2 }).?, "order", .{ ByteOrder.nativeOrder() }).?, "asFloatBuffer").asFloatBuffer());
        this.regionRectangleFloatArray = @constCast(&[_]f32{ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 })[0..];
        this.regionRectangleVertexFloatBuffer = Inheritance.upcast(?*FloatBuffer, Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(ByteBuffer, "allocateDirect", .{ 4 * 4 * 3 }).?, "order", .{ ByteOrder.nativeOrder() }).?, "asFloatBuffer").asFloatBuffer());
        this.regionTextureRectangleFloatArray = array_N67119: { const array_N67119_array = allocator.alloc(f32, @intCast(8)) catch unreachable; @memset(array_N67119_array, 0.0); break :array_N67119 array_N67119_array; };
        this.regionTextureVertexFloatBuffer = Inheritance.upcast(?*FloatBuffer, Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(ByteBuffer, "allocateDirect", .{ 4 * 4 * 2 }).?, "order", .{ ByteOrder.nativeOrder() }).?, "asFloatBuffer").asFloatBuffer());
    }
    

    pub fn create3(image: ?*Image, bitmapFactory: ?*PlatformBitmapBaseFactory, textureFactory: ?*PlatformTextureBaseFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(OpenGLESImage, "create3", .{ image, bitmapFactory, textureFactory }).*;
        this.initFields();
        _ = this.initVertices();
        _ = Inheritance.call(this.regionRectangleVertexFloatBuffer.?, "put", .{ Inheritance.callStatic(FloatBuffer, "wrap", .{ this.regionRectangleFloatArray }) });
        _ = Inheritance.call(this.regionTextureVertexFloatBuffer.?, "put", .{ Inheritance.callStatic(FloatBuffer, "wrap", .{ this.regionTextureRectangleFloatArray }) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initVertices(self: *Self) void {
        _ = Inheritance.call(self.textureVertexFloatBuffer.?, "put", .{ 0.0 });
        _ = Inheritance.call(self.textureVertexFloatBuffer.?, "put", .{ 1.0 });
        _ = Inheritance.call(self.textureVertexFloatBuffer.?, "put", .{ 1.0 });
        _ = Inheritance.call(self.textureVertexFloatBuffer.?, "put", .{ 1.0 });
        _ = Inheritance.call(self.textureVertexFloatBuffer.?, "put", .{ 0.0 });
        _ = Inheritance.call(self.textureVertexFloatBuffer.?, "put", .{ 0.0 });
        _ = Inheritance.call(self.textureVertexFloatBuffer.?, "put", .{ 1.0 });
        _ = Inheritance.call(self.textureVertexFloatBuffer.?, "put", .{ 0.0 });
        _ = self.textureVertexFloatBuffer.?.rewind();
    }
    

    pub fn set(self: *Self, gl: ?*GL) void {
        const gl10: ?*GL10 = Inheritance.cast(?*GL10, gl);
        if (Inheritance.call(&self.base, "initTexture", .{ gl10 })) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "textureFactory").*.?, "load", .{ gl10, GL10.GL_TEXTURE_2D, 0, self, 0, true });
            _ = Inheritance.call(gl10.?, "glDisable", .{ GL10.GL_TEXTURE_2D });
            _ = Inheritance.call(OpenGLLogUtil.getInstance().?, "logError", .{ gl10, self });
        }
    }
    

    pub fn drawRegion(self: *Self, gl: ?*GL10, viewHeight: i32, x_src: f32, y_src: f32, width: f32, height: f32, x: i32, y: i32, z: i32) void {
        _ = z;
        self.regionRectangleFloatArray[@intCast(0)] = @as(f32, @floatFromInt(x));
        self.regionRectangleFloatArray[@intCast(7)] = @as(f32, @floatFromInt(viewHeight - y));
        self.regionRectangleFloatArray[@intCast(1)] = self.regionRectangleFloatArray[@intCast(7)] - height;
        self.regionRectangleFloatArray[@intCast(3)] = @as(f32, @floatFromInt(x)) + width;
        self.regionRectangleFloatArray[@intCast(4)] = self.regionRectangleFloatArray[@intCast(1)];
        self.regionRectangleFloatArray[@intCast(6)] = @as(f32, @floatFromInt(x));
        self.regionRectangleFloatArray[@intCast(9)] = self.regionRectangleFloatArray[@intCast(3)];
        self.regionRectangleFloatArray[@intCast(10)] = self.regionRectangleFloatArray[@intCast(7)];
        self.regionTextureRectangleFloatArray[@intCast(0)] = x_src / Inheritance.receiver(self, "getWidth").getWidth();
        self.regionTextureRectangleFloatArray[@intCast(1)] = (y_src + height) / Inheritance.receiver(self, "getHeight").getHeight();
        self.regionTextureRectangleFloatArray[@intCast(2)] = (x_src + width) / Inheritance.receiver(self, "getWidth").getWidth();
        self.regionTextureRectangleFloatArray[@intCast(3)] = self.regionTextureRectangleFloatArray[@intCast(1)];
        self.regionTextureRectangleFloatArray[@intCast(4)] = self.regionTextureRectangleFloatArray[@intCast(0)];
        self.regionTextureRectangleFloatArray[@intCast(5)] = y_src / Inheritance.receiver(self, "getHeight").getHeight();
        self.regionTextureRectangleFloatArray[@intCast(6)] = self.regionTextureRectangleFloatArray[@intCast(2)];
        self.regionTextureRectangleFloatArray[@intCast(7)] = self.regionTextureRectangleFloatArray[@intCast(5)];
        _ = Inheritance.call(self.glUtil.?, "position", .{ self.regionRectangleVertexFloatBuffer, 0 });
        _ = Inheritance.call(gl.?, "glVertexPointer", .{ 3, GL10.GL_FLOAT, 0, self.regionRectangleVertexFloatBuffer });
        _ = Inheritance.call(gl.?, "glEnableClientState", .{ GL10.GL_VERTEX_ARRAY });
        _ = Inheritance.call(gl.?, "glEnable", .{ GL10.GL_TEXTURE_2D });
        _ = Inheritance.call(gl.?, "glBindTexture", .{ GL10.GL_TEXTURE_2D, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.textureID });
        _ = Inheritance.call(gl.?, "glEnableClientState", .{ GL10.GL_TEXTURE_COORD_ARRAY });
        _ = Inheritance.call(self.glUtil.?, "position", .{ self.regionTextureVertexFloatBuffer, 0 });
        _ = Inheritance.call(gl.?, "glTexCoordPointer", .{ 2, GL10.GL_FLOAT, 0, self.regionTextureVertexFloatBuffer });
        _ = Inheritance.call(gl.?, "glDrawArrays", .{ GL10.GL_TRIANGLE_STRIP, 0, 4 });
        _ = Inheritance.call(gl.?, "glDisableClientState", .{ GL10.GL_VERTEX_ARRAY });
        _ = Inheritance.call(gl.?, "glDisableClientState", .{ GL10.GL_TEXTURE_COORD_ARRAY });
        _ = Inheritance.call(gl.?, "glDisable", .{ GL10.GL_TEXTURE_2D });
    }
    

    pub fn draw(self: *Self, gl: ?*GL10, x: i32, y: i32, z: i32) void {
        _ = z;
        self.regionRectangleFloatArray[@intCast(0)] = @as(f32, @floatFromInt(x));
        self.regionRectangleFloatArray[@intCast(7)] = @as(f32, @floatCast((Inheritance.receiverOf(DisplayInfoSingleton.getInstance().?, "getLastHeight").getLastHeight() - y)));
        self.regionRectangleFloatArray[@intCast(1)] = self.regionRectangleFloatArray[@intCast(7)] - Inheritance.receiver(self, "getHeight").getHeight();
        self.regionRectangleFloatArray[@intCast(3)] = @as(f32, @floatCast((x + Inheritance.receiver(self, "getWidth").getWidth())));
        self.regionRectangleFloatArray[@intCast(4)] = self.regionRectangleFloatArray[@intCast(1)];
        self.regionRectangleFloatArray[@intCast(6)] = @as(f32, @floatFromInt(x));
        self.regionRectangleFloatArray[@intCast(9)] = self.regionRectangleFloatArray[@intCast(3)];
        self.regionRectangleFloatArray[@intCast(10)] = self.regionRectangleFloatArray[@intCast(7)];
        _ = Inheritance.call(self.glUtil.?, "position", .{ self.regionRectangleVertexFloatBuffer, 0 });
        _ = Inheritance.call(gl.?, "glVertexPointer", .{ 3, GL10.GL_FLOAT, 0, self.regionRectangleVertexFloatBuffer });
        _ = Inheritance.call(gl.?, "glEnableClientState", .{ GL10.GL_VERTEX_ARRAY });
        _ = Inheritance.call(gl.?, "glEnable", .{ GL10.GL_TEXTURE_2D });
        _ = Inheritance.call(gl.?, "glBindTexture", .{ GL10.GL_TEXTURE_2D, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.textureID });
        _ = Inheritance.call(gl.?, "glEnableClientState", .{ GL10.GL_TEXTURE_COORD_ARRAY });
        _ = Inheritance.call(self.glUtil.?, "position", .{ self.textureVertexFloatBuffer, 0 });
        _ = Inheritance.call(gl.?, "glTexCoordPointer", .{ 2, GL10.GL_FLOAT, 0, self.textureVertexFloatBuffer });
        _ = Inheritance.call(gl.?, "glDrawArrays", .{ GL10.GL_TRIANGLE_STRIP, 0, 4 });
        _ = Inheritance.call(gl.?, "glDisableClientState", .{ GL10.GL_VERTEX_ARRAY });
        _ = Inheritance.call(gl.?, "glDisableClientState", .{ GL10.GL_TEXTURE_COORD_ARRAY });
        _ = Inheritance.call(gl.?, "glDisable", .{ GL10.GL_TEXTURE_2D });
    }
};

