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
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const OpenGLLogUtil = @import("org/allbinary/graphics/opengles/OpenGLLogUtil.zig").OpenGLLogUtil;
const GLUtil = @import("org/allbinary/opengles/GLUtil.zig").GLUtil;
const PlatformBitmapBaseFactory = @import("org/allbinary/platform/graphics/PlatformBitmapBaseFactory.zig").PlatformBitmapBaseFactory;
const PlatformTextureBaseFactory = @import("org/allbinary/platform/opengles/PlatformTextureBaseFactory.zig").PlatformTextureBaseFactory;
const OpenGLESImage = @import("org/allbinary/image/opengles/OpenGLESImage.zig").OpenGLESImage;
const OpenGLESImageDraw = @import("org/allbinary/image/opengles/OpenGLESImageDraw.zig").OpenGLESImageDraw;
const OpenGLESImageProcessor = @import("org/allbinary/image/opengles/OpenGLESImageProcessor.zig").OpenGLESImageProcessor;
const OpenGLESImageProperties = @import("org/allbinary/image/opengles/OpenGLESImageProperties.zig").OpenGLESImageProperties;

pub const OpenGLESGL10Image = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.opengles.OpenGLESGL10Image";
    base: OpenGLESImage = undefined,
    textureVertexFloatBuffer: ?*FloatBuffer = null,
    realOpenGLESImageDraw: ?*OpenGLESImageDraw = null,
    openGLESImageDraw: ?*OpenGLESImageDraw = null,

    fn initFields(this: *Self) void {
        this.textureVertexFloatBuffer = Inheritance.upcast(?*FloatBuffer, Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(ByteBuffer, "allocateDirect", .{ 4 * 4 * 2 }).?, "order", .{ ByteOrder.nativeOrder() }).?, "asFloatBuffer").asFloatBuffer());
        this.realOpenGLESImageDraw = OpenGLESImageDraw.create() // Java anonymous class body: implement it as a named type
//         this.glUtil = Inheritance.upcast(?*GLUtil, GLUtil.getInstance());
//         this.displayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
//         this.textureVertexFloatBuffer = this.textureVertexFloatBuffer;
//         this.regionTextureRectangleFloatArray = array_N66199: { const array_N66199_array = allocator.alloc(f32, @intCast(8)) catch unreachable; @memset(array_N66199_array, 0.0); break :array_N66199 array_N66199_array; };
//         this.regionTextureVertexFloatBuffer = Inheritance.upcast(?*FloatBuffer, Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(ByteBuffer, "allocateDirect", .{ 4 * 4 * 2 }).?, "order", .{ ByteOrder.nativeOrder() }).?, "asFloatBuffer").asFloatBuffer());
//         this.regionRectangleFloatArray = @constCast(&[_]f32{ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 })[0..];
//         this.regionRectangleVertexFloatBuffer = Inheritance.upcast(?*FloatBuffer, Inheritance.receiverOf(Inheritance.call(Inheritance.callStatic(ByteBuffer, "allocateDirect", .{ 4 * 4 * 3 }).?, "order", .{ ByteOrder.nativeOrder() }).?, "asFloatBuffer").asFloatBuffer());
//         this.openGLESImageProperties = this.openGLESImageProperties;
//         
// 
//         pub fn drawRegion(self: *Self, gl: ?*GL10, viewHeight: i32, x_src: f32, y_src: f32, width: f32, height: f32, x: i32, y: i32, z: i32) void {
//             _ = z;
//             const imageWidth: i32 = Inheritance.receiver(self, "getWidth").getWidth();
//             const imageHeight: i32 = Inheritance.receiver(self, "getHeight").getHeight();
//             Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(7)] = @as(f32, @floatCast(viewHeight));
//             Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(1)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(1)]), Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(7)] - height);
//             Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(3)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(3)]), width);
//             Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(4)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(4)]), Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(1)]);
//             Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(9)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(9)]), Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(3)]);
//             Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(10)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(10)]), Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(7)]);
//             Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(0)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(0)]), (divide_N67026: { const left_N67026 = x_src; const right_N67026 = imageWidth; break :divide_N67026 if (comptime @typeInfo(@TypeOf(left_N67026)) == .int or @TypeOf(left_N67026) == comptime_int) @divTrunc(left_N67026, right_N67026) else left_N67026 / right_N67026; }));
//             Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(1)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(1)]), (divide_N67079: { const left_N67079 = (y_src + height); const right_N67079 = imageHeight; break :divide_N67079 if (comptime @typeInfo(@TypeOf(left_N67079)) == .int or @TypeOf(left_N67079) == comptime_int) @divTrunc(left_N67079, right_N67079) else left_N67079 / right_N67079; }));
//             Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(2)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(2)]), (divide_N67145: { const left_N67145 = (x_src + width); const right_N67145 = imageWidth; break :divide_N67145 if (comptime @typeInfo(@TypeOf(left_N67145)) == .int or @TypeOf(left_N67145) == comptime_int) @divTrunc(left_N67145, right_N67145) else left_N67145 / right_N67145; }));
//             Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(3)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(3)]), Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(1)]);
//             Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(4)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(4)]), Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(0)]);
//             Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(5)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(5)]), (divide_N67305: { const left_N67305 = y_src; const right_N67305 = imageHeight; break :divide_N67305 if (comptime @typeInfo(@TypeOf(left_N67305)) == .int or @TypeOf(left_N67305) == comptime_int) @divTrunc(left_N67305, right_N67305) else left_N67305 / right_N67305; }));
//             Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(6)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(6)]), Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(2)]);
//             Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(7)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(7)]), Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(5)]);
//             const u_center: f32 = (divide_N67440: { const left_N67440 = (Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(0)] + Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(2)]); const right_N67440 = 2.0; break :divide_N67440 if (comptime @typeInfo(@TypeOf(left_N67440)) == .int or @TypeOf(left_N67440) == comptime_int) @divTrunc(left_N67440, right_N67440) else left_N67440 / right_N67440; });
//             const v_center: f32 = (divide_N67526: { const left_N67526 = (Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(5)] + Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(1)]); const right_N67526 = 2.0; break :divide_N67526 if (comptime @typeInfo(@TypeOf(left_N67526)) == .int or @TypeOf(left_N67526) == comptime_int) @divTrunc(left_N67526, right_N67526) else left_N67526 / right_N67526; });
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "glUtil").*.?, "rotateUVs", .{ Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*, @as(f32, @floatCast(-Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.angle)), u_center, v_center });
//             _ = Inheritance.receiver(gl.?, "glPushMatrix").glPushMatrix();
//             const imageProcessor: ?*OpenGLESImageProcessor = self.imageProcessor;
//             _ = Inheritance.call(self.openGLESImageTranslate.?, "translate", .{ gl, self, @as(f32, @floatCast(x)), @as(f32, @floatCast(-y)) });
//             _ = Inheritance.call(imageProcessor.?, "scale", .{ gl, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.scaleX, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.scaleY });
//             _ = Inheritance.call(imageProcessor.?, "colorMask", .{ gl, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.redf, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.greenf, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.bluef, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.alphaf });
//             _ = Inheritance.call(self.openGLESImageTranslate.?, "translate2", .{ gl, self });
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "regionRectangleVertexFloatBuffer").*.?, "put", .{ Inheritance.fieldPointer(self, "regionRectangleFloatArray").* });
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "glUtil").*.?, "position", .{ Inheritance.fieldPointer(self, "regionRectangleVertexFloatBuffer").*, 0 });
//             _ = Inheritance.call(gl.?, "glVertexPointer", .{ 3, GL10.GL_FLOAT, 0, Inheritance.fieldPointer(self, "regionRectangleVertexFloatBuffer").* });
//             _ = Inheritance.call(gl.?, "glEnableClientState", .{ GL10.GL_VERTEX_ARRAY });
//             _ = Inheritance.call(gl.?, "glEnable", .{ GL10.GL_TEXTURE_2D });
//             _ = Inheritance.call(gl.?, "glBindTexture", .{ GL10.GL_TEXTURE_2D, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.textureID });
//             _ = Inheritance.call(gl.?, "glEnableClientState", .{ GL10.GL_TEXTURE_COORD_ARRAY });
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "regionTextureVertexFloatBuffer").*.?, "put", .{ Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").* });
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "glUtil").*.?, "position", .{ Inheritance.fieldPointer(self, "regionTextureVertexFloatBuffer").*, 0 });
//             _ = Inheritance.call(gl.?, "glTexCoordPointer", .{ 2, GL10.GL_FLOAT, 0, Inheritance.fieldPointer(self, "regionTextureVertexFloatBuffer").* });
//             _ = Inheritance.call(gl.?, "glDrawArrays", .{ GL10.GL_TRIANGLE_STRIP, 0, 4 });
//             _ = Inheritance.call(gl.?, "glDisableClientState", .{ GL10.GL_VERTEX_ARRAY });
//             _ = Inheritance.call(gl.?, "glDisableClientState", .{ GL10.GL_TEXTURE_COORD_ARRAY });
//             _ = Inheritance.call(gl.?, "glDisable", .{ GL10.GL_TEXTURE_2D });
//             _ = Inheritance.receiver(gl.?, "glPopMatrix").glPopMatrix();
//         }
//         
// 
//         pub fn draw(self: *Self, gl: ?*GL10, x: i32, y: i32, z: i32) void {
//             _ = z;
//             const width: i32 = Inheritance.receiver(self, "getWidth").getWidth();
//             const height: i32 = Inheritance.receiver(self, "getHeight").getHeight();
//             Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(7)] = @as(f32, @floatCast(Inheritance.fieldPointer(self, "displayInfoSingleton").*.?.getLastHeight()));
//             Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(1)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(1)]), Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(7)] - height);
//             Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(3)] = @as(f32, @floatFromInt(width));
//             Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(4)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(4)]), Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(1)]);
//             Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(9)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(9)]), Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(3)]);
//             Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(10)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(10)]), Inheritance.fieldPointer(self, "regionRectangleFloatArray").*[@intCast(7)]);
//             Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(0)] = 0.0;
//             Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(1)] = 1.0;
//             Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(2)] = 1.0;
//             Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(3)] = 1.0;
//             Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(4)] = 0.0;
//             Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(5)] = 0.0;
//             Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(6)] = 1.0;
//             Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*[@intCast(7)] = 0.0;
//             _ = Inheritance.receiver(gl.?, "glPushMatrix").glPushMatrix();
//             _ = Inheritance.call(self.openGLESImageTranslate.?, "translate", .{ gl, self, @as(f32, @floatCast(x)), @as(f32, @floatCast(-y)) });
//             const imageProcessor: ?*OpenGLESImageProcessor = self.imageProcessor;
//             _ = Inheritance.call(imageProcessor.?, "scale", .{ gl, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.scaleX, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.scaleY });
//             _ = Inheritance.call(imageProcessor.?, "colorMask", .{ gl, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.redf, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.greenf, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.bluef, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.alphaf });
//             _ = Inheritance.call(self.openGLESImageTranslate.?, "translate2", .{ gl, self });
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "regionRectangleVertexFloatBuffer").*.?, "put", .{ Inheritance.fieldPointer(self, "regionRectangleFloatArray").* });
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "glUtil").*.?, "position", .{ Inheritance.fieldPointer(self, "regionRectangleVertexFloatBuffer").*, 0 });
//             _ = Inheritance.call(gl.?, "glVertexPointer", .{ 3, GL10.GL_FLOAT, 0, Inheritance.fieldPointer(self, "regionRectangleVertexFloatBuffer").* });
//             _ = Inheritance.call(gl.?, "glEnableClientState", .{ GL10.GL_VERTEX_ARRAY });
//             _ = Inheritance.call(gl.?, "glEnable", .{ GL10.GL_TEXTURE_2D });
//             _ = Inheritance.call(gl.?, "glBindTexture", .{ GL10.GL_TEXTURE_2D, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.textureID });
//             _ = Inheritance.call(gl.?, "glEnableClientState", .{ GL10.GL_TEXTURE_COORD_ARRAY });
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "glUtil").*.?, "rotateUVs", .{ Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").*, @as(f32, @floatCast(-Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.angle)), 0.5, 0.5 });
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "glUtil").*.?, "position", .{ self.textureVertexFloatBuffer, 0 });
//             _ = Inheritance.call(self.textureVertexFloatBuffer.?, "put", .{ Inheritance.fieldPointer(self, "regionTextureRectangleFloatArray").* });
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "glUtil").*.?, "position", .{ self.textureVertexFloatBuffer, 0 });
//             _ = Inheritance.call(gl.?, "glTexCoordPointer", .{ 2, GL10.GL_FLOAT, 0, self.textureVertexFloatBuffer });
//             _ = Inheritance.call(gl.?, "glDrawArrays", .{ GL10.GL_TRIANGLE_STRIP, 0, 4 });
//             _ = Inheritance.call(gl.?, "glDisableClientState", .{ GL10.GL_VERTEX_ARRAY });
//             _ = Inheritance.call(gl.?, "glDisableClientState", .{ GL10.GL_TEXTURE_COORD_ARRAY });
//             _ = Inheritance.call(gl.?, "glDisable", .{ GL10.GL_TEXTURE_2D });
//             _ = Inheritance.receiver(gl.?, "glPopMatrix").glPopMatrix();
//         }
;
        this.openGLESImageDraw = Inheritance.upcast(?*OpenGLESImageDraw, OpenGLESImageDraw.getInstance());
    }
    

    pub fn create3(image: ?*Image, bitmapFactory: ?*PlatformBitmapBaseFactory, textureFactory: ?*PlatformTextureBaseFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(OpenGLESImage, "create3", .{ image, bitmapFactory, textureFactory }).*;
        this.initFields();
        _ = this.initVertices();
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
            self.openGLESImageDraw = self.realOpenGLESImageDraw;
            _ = Inheritance.call(OpenGLLogUtil.getInstance().?, "logError", .{ gl10, self });
        }
    }
    

    pub fn drawRegion(self: *Self, gl: ?*GL10, viewHeight: i32, x_src: f32, y_src: f32, width: f32, height: f32, x: i32, y: i32, z: i32) void {
        _ = Inheritance.call(self.openGLESImageDraw.?, "drawRegion", .{ gl, viewHeight, x_src, y_src, width, height, x, y, z });
    }
    

    pub fn draw(self: *Self, gl: ?*GL10, x: i32, y: i32, z: i32) void {
        _ = Inheritance.call(self.openGLESImageDraw.?, "draw", .{ gl, x, y, z });
    }
};

