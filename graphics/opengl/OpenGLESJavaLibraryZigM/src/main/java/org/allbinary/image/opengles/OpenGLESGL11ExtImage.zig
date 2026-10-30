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
// const GL = @import("javax/microedition/khronos/opengles/GL.zig").GL;
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
// const GL11 = @import("javax/microedition/khronos/opengles/GL11.zig").GL11;
// const GL11Ext = @import("javax/microedition/khronos/opengles/GL11Ext.zig").GL11Ext;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const DisplayChangeEvent = @import("org/allbinary/graphics/displayable/event/DisplayChangeEvent.zig").DisplayChangeEvent;
const OpenGLLogUtil = @import("org/allbinary/graphics/opengles/OpenGLLogUtil.zig").OpenGLLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PlatformBitmapBaseFactory = @import("org/allbinary/platform/graphics/PlatformBitmapBaseFactory.zig").PlatformBitmapBaseFactory;
const PlatformTextureBaseFactory = @import("org/allbinary/platform/opengles/PlatformTextureBaseFactory.zig").PlatformTextureBaseFactory;
const OpenGLESImage = @import("org/allbinary/image/opengles/OpenGLESImage.zig").OpenGLESImage;

//Many devices don't support this even though it is supposed to
pub const OpenGLESGL11ExtImage = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.opengles.OpenGLESGL11ExtImage";
    base: OpenGLESImage = undefined,
    logUtil: ?*LogUtil = null,
    a: i32 = 0,
    rectangle: []i32 = &.{},

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.a = 0;
        
    }
    

    pub fn create3(image: ?*Image, bitmapFactory: ?*PlatformBitmapBaseFactory, textureFactory: ?*PlatformTextureBaseFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(OpenGLESImage, "create3", .{ image, bitmapFactory, textureFactory }).*;
        this.initFields();
        _ = Inheritance.call(this, "onDisplayChangeEvent", .{ DisplayInfoSingleton.getInstance().?.displayChangeEvent });
        this.rectangle = Inheritance.upcast(@TypeOf(this.rectangle), @constCast(&[_]i32{ 0, Inheritance.receiver(this, "getHeight").getHeight(), Inheritance.receiver(this, "getWidth").getWidth(), -Inheritance.receiver(this, "getHeight").getHeight() })[0..]);
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onDisplayChangeEvent(self: *Self, displayChangeEvent: ?*DisplayChangeEvent) void {
        _ = displayChangeEvent;
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, String.literal("onResize") });
            self.a = Inheritance.receiverOf(DisplayInfoSingleton.getInstance().?, "getLastHeight").getLastHeight() - Inheritance.receiver(self, "getHeight").getHeight();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("onResize"), e });
    }
    

    pub fn set(self: *Self, gl: ?*GL) void {
        _ = Inheritance.call(self, "onDisplayChangeEvent", .{ DisplayInfoSingleton.getInstance().?.displayChangeEvent });
        const gl11: ?*GL11 = Inheritance.cast(?*GL11, gl);
        if (Inheritance.call(&self.base, "initTexture", .{ gl11 })) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "textureFactory").*.?, "load", .{ gl11, GL10.GL_TEXTURE_2D, 0, self, 0, true });
            _ = Inheritance.call(gl11.?, "glTexParameteriv", .{ GL10.GL_TEXTURE_2D, GL11Ext.GL_TEXTURE_CROP_RECT_OES, self.rectangle, 0 });
            _ = Inheritance.call(gl11.?, "glDisable", .{ GL10.GL_TEXTURE_2D });
            _ = Inheritance.call(OpenGLLogUtil.getInstance().?, "logError", .{ gl11, self });
        }
    }
    

    pub fn draw(self: *Self, gl: ?*GL10, x: i32, y: i32, z: i32) void {
        _ = Inheritance.call(gl.?, "glEnable", .{ GL10.GL_TEXTURE_2D });
        _ = Inheritance.call(gl.?, "glBindTexture", .{ GL10.GL_TEXTURE_2D, Inheritance.fieldPointer(self, "openGLESImageProperties").*.?.textureID });
        const gl11Ext: ?*GL11Ext = Inheritance.cast(?*GL11Ext, gl);
        _ = Inheritance.call(gl11Ext.?, "glDrawTexfOES", .{ @as(f32, @floatFromInt(x)), @as(f32, @floatFromInt((self.a - y))), @as(f32, @floatFromInt(z)), @as(f32, @floatCast(Inheritance.receiver(self, "getWidth").getWidth())), @as(f32, @floatCast(Inheritance.receiver(self, "getHeight").getHeight())) });
        _ = Inheritance.call(gl.?, "glDisable", .{ GL10.GL_TEXTURE_2D });
    }
};

