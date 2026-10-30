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
const PlatformBitmapBase = @import("org/allbinary/platform/graphics/PlatformBitmapBase.zig").PlatformBitmapBase;
const PlatformBitmapBaseFactory = @import("org/allbinary/platform/graphics/PlatformBitmapBaseFactory.zig").PlatformBitmapBaseFactory;
const PlatformTextureBaseFactory = @import("org/allbinary/platform/opengles/PlatformTextureBaseFactory.zig").PlatformTextureBaseFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const OpenGLESImageProperties = @import("org/allbinary/image/opengles/OpenGLESImageProperties.zig").OpenGLESImageProperties;
const OpenGLSurfaceChangedInterface = @import("org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.zig").OpenGLSurfaceChangedInterface;

//OpenGLESNullImageJ2MEJavaLibrary
pub const OpenGLESImage = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.opengles.OpenGLESImage";
    pub const java_interfaces = .{ OpenGLSurfaceChangedInterface };
    commonStrings: ?*CommonStrings = null,
    textureFactory: ?*PlatformTextureBaseFactory = null,
    openGLBitmap: ?*PlatformBitmapBase = null,
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
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        this.openGLESImageProperties = OpenGLESImageProperties.create();
    }
    

    pub fn create3(image: ?*Image, bitmapFactory: ?*PlatformBitmapBaseFactory, textureFactory: ?*PlatformTextureBaseFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.openGLBitmap = Inheritance.upcast(@TypeOf(this.openGLBitmap), Inheritance.call(bitmapFactory.?, "createBitmap", .{ image }));
        this.textureFactory = textureFactory;
        return this;
    }
    

    // throws Exception
    pub fn set(self: *Self, gl: ?*GL) void {
        _ = gl;
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    pub fn initTexture(self: *Self, gl: ?*GL10) bool {
        _ = gl;
        _ = self;
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
};

