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
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureFactory = @import("org/allbinary/game/configuration/feature/GameFeatureFactory.zig").GameFeatureFactory;
const ImageCache = @import("org/allbinary/image/ImageCache.zig").ImageCache;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ImageCopyUtil = @import("org/allbinary/media/image/ImageCopyUtil.zig").ImageCopyUtil;

pub const ImageScaleUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageScaleUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    imageCopyUtil: ?*ImageCopyUtil = null,
    gameFeatureFactory: ?*GameFeatureFactory = null,
    features: ?*Features = null,
    NO_COPY: ?*String = null,
    var instance: ?*ImageScaleUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageScaleUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.imageCopyUtil = Inheritance.upcast(?*ImageCopyUtil, ImageCopyUtil.getInstance());
        this.gameFeatureFactory = Inheritance.upcast(?*GameFeatureFactory, GameFeatureFactory.getInstance());
        this.features = Inheritance.upcast(?*Features, Features.getInstance());
        this.NO_COPY = String.literal("SWT should not copy images after initial loading as the alpha is not honored");
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
        _ = imageCache;
        _ = cached;
        if (!Inheritance.call(self.features.?, "isFeature", .{ self.gameFeatureFactory.?.POST_IMAGE_LOADING_MODIFICATION })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.NO_COPY, self, self.commonStrings.?.CONSTRUCTOR });
            return originalImage;
        }
        const width: i32 = originalImage.?.getWidth();
        const height: i32 = originalImage.?.getHeight();
        const scaleX: f32 = scaleNominatorX / scaleDenominatorX;
        const scaleY: f32 = scaleNominatorY / scaleDenominatorY;
        const scaledImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self.imageCopyUtil.?, "createImageWH", .{ originalImage, @as(i32, @intFromFloat((scaleX * @as(f32, @floatFromInt(width))))), @as(i32, @intFromFloat((scaleY * @as(f32, @floatFromInt(height))))), mutable }));
        return scaledImage;
    }
    

    // throws Exception
    pub fn scale2(self: *Self, originalImage: ?*Image, originalImageArray: []?*Image, ximageToShowArray: []?*Image, unused: i32, scaleX: f32, scaleY: f32, maxScaleX: f32, maxScaleY: f32) void {
        _ = Inheritance.call(self, "scale", .{ originalImage, originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY, true });
    }
    

    // throws Exception
    pub fn scale(self: *Self, originalImage: ?*Image, originalImageArray: []?*Image, ximageToShowArray: []?*Image, unused: i32, scaleX: f32, scaleY: f32, maxScaleX: f32, maxScaleY: f32, mutable: bool) void {
        _ = ximageToShowArray;
        _ = unused;
        _ = maxScaleX;
        _ = maxScaleY;
        const width: i32 = originalImage.?.getWidth();
        const height: i32 = originalImage.?.getHeight();
        const scaledImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self.imageCopyUtil.?, "createImageWH", .{ originalImage, @as(i32, @intFromFloat((scaleX * @as(f32, @floatFromInt(width))))), @as(i32, @intFromFloat((scaleY * @as(f32, @floatFromInt(height))))), mutable }));
        originalImageArray[@intCast(0)] = Inheritance.upcast(@TypeOf(originalImageArray[@intCast(0)]), scaledImage);
    }
};

