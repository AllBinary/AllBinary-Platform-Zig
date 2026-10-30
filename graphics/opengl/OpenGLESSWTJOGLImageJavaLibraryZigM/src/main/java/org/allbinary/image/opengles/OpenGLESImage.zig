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
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
// const OpenGLESPostLoadPlatformImage = @import("javax/microedition/lcdui/OpenGLESPostLoadPlatformImage.zig").OpenGLESPostLoadPlatformImage;
// const PostLoadImageProcessor = @import("javax/microedition/lcdui/PostLoadImageProcessor.zig").PostLoadImageProcessor;
const GraphicsStrings = @import("org/allbinary/graphics/GraphicsStrings.zig").GraphicsStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const PlatformBitmapBase = @import("org/allbinary/platform/graphics/PlatformBitmapBase.zig").PlatformBitmapBase;
const PlatformBitmapBaseFactory = @import("org/allbinary/platform/graphics/PlatformBitmapBaseFactory.zig").PlatformBitmapBaseFactory;
const PlatformTextureBaseFactory = @import("org/allbinary/platform/opengles/PlatformTextureBaseFactory.zig").PlatformTextureBaseFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const OpenGLESImageProcessor = @import("org/allbinary/image/opengles/OpenGLESImageProcessor.zig").OpenGLESImageProcessor;
const OpenGLESImageProperties = @import("org/allbinary/image/opengles/OpenGLESImageProperties.zig").OpenGLESImageProperties;
const OpenGLESImageTranslate = @import("org/allbinary/image/opengles/OpenGLESImageTranslate.zig").OpenGLESImageTranslate;
const OpenGLImageCacheFactory = @import("org/allbinary/image/opengles/OpenGLImageCacheFactory.zig").OpenGLImageCacheFactory;
const OpenGLSurfaceChangedInterface = @import("org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.zig").OpenGLSurfaceChangedInterface;

//OpenGLESSWTJOGLImageJavaLibrary
pub const OpenGLESImage = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.opengles.OpenGLESImage";
    pub const java_interfaces = .{ OpenGLSurfaceChangedInterface };
    base: Image = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    textureFactory: ?*PlatformTextureBaseFactory = null,
    openGLBitmap: ?*PlatformBitmapBase = null,
    imageProcessor: ?*OpenGLESImageProcessor = null,
    openGLESImageTranslate: ?*OpenGLESImageTranslate = null,
    openGLESImageProperties: ?*OpenGLESImageProperties = null,
    // Implements OpenGLSurfaceChangedInterface
    pub var NULL_OPENGL_IMAGE: ?*OpenGLESImage = undefined;
    pub var texture2dList: ?*BasicArrayList = undefined;
    pub const TYPE: i32 = 4;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_OPENGL_IMAGE = Inheritance.callStatic(OpenGLESImage, "create3", .{ NullImage.NULL_IMAGE, PlatformBitmapBaseFactory.NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory.NULL_PLATFORM_TEXTURE_BASE_FACTORY });
        texture2dList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        this.imageProcessor = Inheritance.upcast(?*OpenGLESImageProcessor, OpenGLESImageProcessor.getInstance());
        this.openGLESImageTranslate = Inheritance.upcast(?*OpenGLESImageTranslate, OpenGLESImageTranslate.getInstance());
        this.openGLESImageProperties = OpenGLESImageProperties.create();
    }
    

    pub fn create3(image: ?*Image, bitmapFactory: ?*PlatformBitmapBaseFactory, textureFactory: ?*PlatformTextureBaseFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Image, "create2", .{ image.?.getName(), PostLoadImageProcessor.NULL_POST_LOAD_IMAGE_PROCESSOR }).*;
        this.initFields();
        this.openGLBitmap = Inheritance.upcast(@TypeOf(this.openGLBitmap), Inheritance.call(bitmapFactory.?, "createBitmap", .{ image }));
        this.textureFactory = textureFactory;
        _ = Inheritance.call(OpenGLImageCacheFactory.getInstance().?, "init", .{ this });
        Inheritance.fieldPointer(this, "platformImage").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "platformImage").*), OpenGLESPostLoadPlatformImage.getInstance());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getHeight(self: *Self) i32 {
        return @as(i32, @intCast((self.openGLBitmap.?.getHeight() * self.openGLESImageProperties.?.scaleY2)));
    }
    

    pub fn getWidth(self: *Self) i32 {
        return @as(i32, @intCast((self.openGLBitmap.?.getWidth() * self.openGLESImageProperties.?.scaleX2)));
    }
    

    // throws Exception
    pub fn set(self: *Self, gl: ?*GL) void {
        _ = gl;
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    pub fn initTexture(self: *Self, gl: ?*GL10) bool {
        if (!Inheritance.call(OpenGLESImage.texture2dList.?, "contains", .{ self })) {
            _ = Inheritance.call(OpenGLESImage.texture2dList.?, "add", .{ self });
            const textures: []i32 = array_N67146: { const array_N67146_array = allocator.alloc(i32, @intCast(1)) catch unreachable; @memset(array_N67146_array, 0); break :array_N67146 array_N67146_array; };
            _ = Inheritance.call(gl.?, "glEnable", .{ GL10.GL_TEXTURE_2D });
            if (self.openGLESImageProperties.?.textureID != -1) {
                textures[@intCast(0)] = self.openGLESImageProperties.?.textureID;
                _ = Inheritance.call(gl.?, "glDeleteTextures", .{ 1, textures, 0 });
            }
            _ = Inheritance.call(gl.?, "glGenTextures", .{ 1, textures, 0 });
            self.openGLESImageProperties.?.textureID = Inheritance.upcast(@TypeOf(self.openGLESImageProperties.?.textureID), textures[@intCast(0)]);
            _ = Inheritance.call(gl.?, "glBindTexture", .{ GL10.GL_TEXTURE_2D, self.openGLESImageProperties.?.textureID });
            _ = Inheritance.call(gl.?, "glTexParameterf", .{ GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MIN_FILTER, GL10.GL_NEAREST });
            _ = Inheritance.call(gl.?, "glTexParameterf", .{ GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_S, GL10.GL_CLAMP_TO_EDGE });
            _ = Inheritance.call(gl.?, "glTexParameterf", .{ GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_T, GL10.GL_CLAMP_TO_EDGE });
            return true;
        }
        return false;
    }
    

    pub fn drawRegion(self: *Self, gl: ?*GL10, viewHeight: i32, x_src: f32, y_src: f32, width: f32, height: f32, x: i32, y: i32, z: i32) void {
        _ = gl;
        _ = viewHeight;
        _ = x_src;
        _ = y_src;
        _ = width;
        _ = height;
        _ = x;
        _ = y;
        _ = z;
        _ = self;
    }
    

    pub fn draw(self: *Self, gl: ?*GL10, x: i32, y: i32, z: i32) void {
        _ = gl;
        _ = x;
        _ = y;
        _ = z;
        _ = self;
    }
    

    pub fn getType(self: *Self) i32 {
        _ = self;
        return OpenGLESImage.TYPE;
    }
    

    pub fn toString(self: *Self) ?*String {
        const graphicsStrings: ?*GraphicsStrings = Inheritance.upcast(?*GraphicsStrings, GraphicsStrings.getInstance());
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(self, "getName").getName() }).?, "append", .{ self.base.toString() }).?, "append", .{ graphicsStrings.?.OPACITY }).?, "appendfloat", .{ @as(f32, @floatCast(self.openGLESImageProperties.?.alphaf)) }))));
    }
};

