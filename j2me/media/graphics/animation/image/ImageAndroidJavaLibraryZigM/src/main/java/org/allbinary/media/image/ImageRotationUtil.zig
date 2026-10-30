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
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const Bitmap = @import("android/graphics/Bitmap.zig").Bitmap;
const Canvas = @import("android/graphics/Canvas.zig").Canvas;
const Matrix = @import("android/graphics/Matrix.zig").Matrix;
const AndroidImageInterface = @import("org/microemu/android/device/AndroidImageInterface.zig").AndroidImageInterface;
const ImageCreationUtil = @import("org/allbinary/media/image/ImageCreationUtil.zig").ImageCreationUtil;

pub const ImageRotationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageRotationUtil";
    matrix: ?*Matrix = null,
    anchor: i32 = 0,
    var instance: ?*ImageRotationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageRotationUtil.create();
    }

    fn initFields(this: *Self) void {
        this.matrix = Matrix.create();
        this.anchor = Anchor.TOP_LEFT;
    }
    

    pub fn getInstance() ?*ImageRotationUtil {
        return Inheritance.upcast(?*ImageRotationUtil, ImageRotationUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn createRotatedImage(self: *Self, originalImage: ?*Image, rotationInDegrees: i32) ?*Image {
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(ImageCreationUtil.getInstance().?, "createImageWH", .{ originalImage.?.getWidth(), originalImage.?.getHeight() }));
        if (image.?.isMutable()) {
            const bitmap: ?*Bitmap = Inheritance.upcast(?*Bitmap, Inheritance.receiverOf((Inheritance.cast(?*AndroidImageInterface, image)).?, "getBitmap").getBitmap());
            const width: i32 = bitmap.?.getWidth();
            const height: i32 = bitmap.?.getHeight();
            _ = Inheritance.call(self.matrix.?, "setRotate", .{ @as(f32, @floatFromInt(rotationInDegrees)), @as(f32, @floatFromInt((width >> @intCast(1)))), @as(f32, @floatFromInt((height >> @intCast(1)))) });
            const canvas: ?*Canvas = Inheritance.upcast(?*Canvas, Inheritance.receiverOf((Inheritance.cast(?*AndroidImageInterface, image)).?, "getCanvas").getCanvas());
            _ = Inheritance.call(canvas.?, "concat", .{ self.matrix });
            _ = Inheritance.call(image.?.getGraphics().?, "drawImage", .{ originalImage, 0, 0, self.anchor });
            return image;
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not Mutable"); break :exception error.Exception; }});
        }
    }
};

