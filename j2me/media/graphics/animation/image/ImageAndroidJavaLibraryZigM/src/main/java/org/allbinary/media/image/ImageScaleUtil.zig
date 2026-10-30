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
const Matrix = @import("android/graphics/Matrix.zig").Matrix;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const ImageCache = @import("org/allbinary/image/ImageCache.zig").ImageCache;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AndroidImageInterface = @import("org/microemu/android/device/AndroidImageInterface.zig").AndroidImageInterface;
const Float = @import("java/lang/Float.zig").Float;

pub const ImageScaleUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageScaleUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    anchor: i32 = 0,
    imageBasicArrayList: ?*BasicArrayList = null,
    scaledImageBasicArrayList: ?*BasicArrayList = null,
    scaleXBasicArrayList: ?*BasicArrayList = null,
    scaleYBasicArrayList: ?*BasicArrayList = null,
    var instance: ?*ImageScaleUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageScaleUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.anchor = Anchor.TOP_LEFT;
        this.imageBasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.scaledImageBasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.scaleXBasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.scaleYBasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn getInstance() ?*ImageScaleUtil {
        return Inheritance.upcast(?*ImageScaleUtil, ImageScaleUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn createImage2(self: *Self, imageCache: ?*ImageCache, originalImage: ?*Image, scaleNominatorX: f32, scaleDenominatorX: f32, scaleNominatorY: f32, scaleDenominatorY: f32, cached: bool) ?*Image {
        return Inheritance.upcast(?*Image, Inheritance.call(self, "createImage3", .{ imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true }));
    }
    

    // throws Exception
    pub fn createImage3(self: *Self, imageCache: ?*ImageCache, originalImage: ?*Image, scaleNominatorX: f32, scaleDenominatorX: f32, scaleNominatorY: f32, scaleDenominatorY: f32, cached: bool, mutable: bool) ?*Image {
        _ = mutable;
        const scaleX: f32 = scaleNominatorX / scaleDenominatorX;
        const scaleY: f32 = scaleNominatorY / scaleDenominatorY;
        return Inheritance.upcast(?*Image, Inheritance.call(self, "createImage", .{ imageCache, originalImage, scaleX, scaleY, cached }));
    }
    

    // throws Exception
    pub fn createImage(self: *Self, imageCache: ?*ImageCache, originalImage: ?*Image, scaleX: f32, scaleY: f32, cached: bool) ?*Image {
        const originalAndroidImage: ?*AndroidImageInterface = Inheritance.cast(?*AndroidImageInterface, originalImage);
        const originalBitmap: ?*Bitmap = Inheritance.upcast(?*Bitmap, originalAndroidImage.?.getBitmap());
        const width: i32 = @as(i32, @intCast((originalBitmap.?.getWidth() * scaleX)));
        const height: i32 = @as(i32, @intCast((originalBitmap.?.getHeight() * scaleY)));
        const index: i32 = Inheritance.call(self.imageBasicArrayList.?, "indexOf", .{ originalImage });
        var alreadyAvailable: bool = false;
        if (index >= 0) {
            const scaleX2Float: ?*Float = Inheritance.cast(?*Float, Inheritance.call(self.scaleXBasicArrayList.?, "get", .{ index }));
            const scaleX2: f32 = scaleX2Float.?.floatValue();
            const scaleY2Float: ?*Float = Inheritance.cast(?*Float, Inheritance.call(self.scaleYBasicArrayList.?, "get", .{ index }));
            const scaleY2: f32 = scaleY2Float.?.floatValue();
            if (scaleX2 == scaleX and scaleY2 == scaleY) {
                alreadyAvailable = true;
            }
        }
        if (alreadyAvailable) {
            return Inheritance.cast(?*Image, Inheritance.call(self.scaledImageBasicArrayList.?, "get", .{ index }));
        } else {
            const scaledImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self, "getScaledImage", .{ imageCache, originalImage, scaleX, scaleY, width, height, cached }));
            _ = Inheritance.call(self.imageBasicArrayList.?, "add", .{ originalImage });
            _ = Inheritance.call(self.scaledImageBasicArrayList.?, "add", .{ scaledImage });
            _ = Inheritance.call(self.scaleXBasicArrayList.?, "add", .{ scaleX });
            _ = Inheritance.call(self.scaleYBasicArrayList.?, "add", .{ scaleY });
            return scaledImage;
        }
    }
    

    // throws Exception
    pub fn getScaledImage(self: *Self, imageCache: ?*ImageCache, originalImage: ?*Image, scaleX: f32, scaleY: f32, width: i32, height: i32, cached: bool) ?*Image {
        var image: ?*Image = Inheritance.upcast(?*Image, NullImage.NULL_IMAGE);
        if (cached) {
            image = Inheritance.upcast(@TypeOf(image), Inheritance.call(imageCache.?, "get", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name), width, height }));
        } else {
            image = Inheritance.upcast(@TypeOf(image), Inheritance.call(imageCache.?, "get", .{ self.commonStrings.?.CREATE_IMAGE, width, height }));
        }
        if (image.?.isMutable()) {
            const matrix: ?*Matrix = Matrix.create();
            _ = Inheritance.call(self, "scale", .{ image, matrix, scaleX, scaleY });
            _ = Inheritance.call(image.?.getGraphics().?, "drawImage", .{ originalImage, 0, 0, self.anchor });
            return image;
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not Mutable"); break :exception error.Exception; }});
        }
    }
    

    pub fn scale(self: *Self, image: ?*Image, matrix: ?*Matrix, scaleX: f32, scaleY: f32) void {
        _ = self;
        _ = Inheritance.call(matrix.?, "setScale", .{ scaleX, scaleY });
        const canvas: ?*Canvas = Inheritance.upcast(?*Canvas, Inheritance.receiverOf((Inheritance.cast(?*AndroidImageInterface, image)).?, "getCanvas").getCanvas());
        _ = Inheritance.call(canvas.?, "concat", .{ matrix });
    }
};

