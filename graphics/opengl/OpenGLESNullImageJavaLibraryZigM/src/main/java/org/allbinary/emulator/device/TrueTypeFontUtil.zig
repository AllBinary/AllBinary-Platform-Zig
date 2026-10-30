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
// package org.allbinary.emulator.device

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const OpenGLESImage = @import("org/allbinary/image/opengles/OpenGLESImage.zig").OpenGLESImage;
const TrueTypeFontUtilBase = @import("org/allbinary/emulator/device/TrueTypeFontUtilBase.zig").TrueTypeFontUtilBase;

pub const TrueTypeFontUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.emulator.device.TrueTypeFontUtil";
    base: TrueTypeFontUtilBase = undefined,
    fontImage: ?*OpenGLESImage = null,
    var instance: ?*TrueTypeFontUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TrueTypeFontUtil.create();
    }

    fn initFields(this: *Self) void {
        this.fontImage = Inheritance.upcast(?*OpenGLESImage, OpenGLESImage.NULL_OPENGL_IMAGE);
    }
    

    pub fn getInstance() ?*TrueTypeFontUtil {
        return Inheritance.upcast(?*TrueTypeFontUtil, TrueTypeFontUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TrueTypeFontUtilBase, "create1", .{ 1 }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getAsTextureSize(self: *Self, textureSize: i32) i32 {
        _ = textureSize;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getCellSize(self: *Self, cellSize: i32) i32 {
        _ = cellSize;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getFontBitmap(self: *Self, filename: ?*String, fontSize: i32, cellSize: i32, basicColor: ?*BasicColor) ?*Image {
        _ = filename;
        _ = fontSize;
        _ = cellSize;
        _ = basicColor;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn saveFontAtlasAsFile(self: *Self) void {
        _ = self;
    }
    

    pub fn getFontBitmapGL(self: *Self, gl: ?*GL10, filename: ?*String, cellSize: i32, basicColor: ?*BasicColor) ?*Image {
        _ = gl;
        _ = filename;
        _ = cellSize;
        _ = basicColor;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getFontWidths(self: *Self, filename: ?*String, fontSize: i32) []i32 {
        _ = filename;
        _ = fontSize;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

