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
// package org.allbinary.media.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Bitmap = @import("android/graphics/Bitmap.zig").Bitmap;
const Canvas = @import("android/graphics/Canvas.zig").Canvas;
const Color = @import("android/graphics/Color.zig").Color;
const Matrix = @import("android/graphics/Matrix.zig").Matrix;
const Paint = @import("android/graphics/Paint.zig").Paint;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const AndroidImageInterface = @import("org/microemu/android/device/AndroidImageInterface.zig").AndroidImageInterface;

pub const AndroidImageUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.AndroidImageUtil";
    var instance: ?*AndroidImageUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AndroidImageUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*AndroidImageUtil {
        return Inheritance.upcast(?*AndroidImageUtil, AndroidImageUtil.instance);
    }
    

    pub fn paintBitmap(self: *Self, bitmap: ?*Bitmap, originalBitmap: ?*Bitmap, paint_: ?*Paint) void {
        _ = self;
        _ = Inheritance.call(bitmap.?, "eraseColor", .{ Color.TRANSPARENT });
        const canvas: ?*Canvas = Canvas.create();
        _ = Inheritance.call(canvas.?, "setBitmap", .{ bitmap });
        _ = Inheritance.call(canvas.?, "drawBitmap", .{ originalBitmap, 0.0, 0.0, paint_ });
    }
    

    pub fn paint(self: *Self, image: ?*Image, originalImage: ?*Image, paint_: ?*Paint) void {
        _ = self;
        const androidImage: ?*AndroidImageInterface = Inheritance.cast(?*AndroidImageInterface, image);
        _ = Inheritance.call(androidImage.?.getBitmap().?, "eraseColor", .{ Color.TRANSPARENT });
        const canvas: ?*Canvas = Inheritance.upcast(?*Canvas, androidImage.?.getCanvas());
        const originalAndroidImage: ?*AndroidImageInterface = Inheritance.cast(?*AndroidImageInterface, originalImage);
        _ = Inheritance.call(canvas.?, "drawBitmap", .{ originalAndroidImage.?.getBitmap(), 0.0, 0.0, paint_ });
    }
    

    pub fn rotate(self: *Self, image: ?*Image, originalImage: ?*Image, matrix: ?*Matrix, paint_: ?*Paint) void {
        _ = self;
        const androidImage: ?*AndroidImageInterface = Inheritance.cast(?*AndroidImageInterface, image);
        _ = Inheritance.call(androidImage.?.getBitmap().?, "eraseColor", .{ Color.TRANSPARENT });
        const canvas: ?*Canvas = Inheritance.upcast(?*Canvas, androidImage.?.getCanvas());
        _ = Inheritance.call(canvas.?, "concat", .{ matrix });
        const originalAndroidImage: ?*AndroidImageInterface = Inheritance.cast(?*AndroidImageInterface, originalImage);
        _ = Inheritance.call(canvas.?, "drawBitmap", .{ originalAndroidImage.?.getBitmap(), 0.0, 0.0, paint_ });
    }
};

