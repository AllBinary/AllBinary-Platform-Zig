// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const ModifierOpenGLESImageProcessor = @import("org/allbinary/image/opengles/ModifierOpenGLESImageProcessor.zig").ModifierOpenGLESImageProcessor;
const OpenGLESImage = @import("org/allbinary/image/opengles/OpenGLESImage.zig").OpenGLESImage;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const ImageData = @import("org/eclipse/swt/graphics/ImageData.zig").ImageData;
const SwtImmutableImage = @import("org/microemu/device/swt/SwtImmutableImage.zig").SwtImmutableImage;
const SwtMutableImage = @import("org/microemu/device/swt/SwtMutableImage.zig").SwtMutableImage;
const ImageCopyUtil = @import("org/allbinary/media/image/ImageCopyUtil.zig").ImageCopyUtil;

pub const ImageModifierUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageModifierUtil";
    logUtil: ?*LogUtil = null,
    imageCopyUtil: ?*ImageCopyUtil = null,
    features: ?*Features = null,
    var instance: ?*ImageModifierUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageModifierUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.imageCopyUtil = Inheritance.upcast(?*ImageCopyUtil, ImageCopyUtil.getInstance());
        this.features = Inheritance.upcast(?*Features, Features.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstanceOrCreate() ?*ImageModifierUtil {
        return Inheritance.upcast(?*ImageModifierUtil, ImageModifierUtil.instance);
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        _ = basicColor;
        _ = self;
    }
    

    pub fn setColor(self: *Self, unusedOriginalImage: ?*Image, image: ?*Image, imageIndex: i32, basicColor: ?*BasicColor) void {
        _ = unusedOriginalImage;
        _ = imageIndex;
        _ = self;
        var newBufferedImage: ?*Image = null;
        if (image.?.isMutable()) {
            const swtImage: ?*SwtMutableImage = Inheritance.cast(?*SwtMutableImage, image);
            newBufferedImage = Inheritance.cast(?*Image, swtImage.?.getImage());
        } else {
            const swtImage: ?*SwtImmutableImage = Inheritance.cast(?*SwtImmutableImage, image);
            newBufferedImage = Inheritance.cast(?*Image, swtImage.?.getImage());
        }
        const r: i16 = basicColor.?.red;
        const g: i16 = basicColor.?.green;
        const b: i16 = basicColor.?.blue;
        const width: i32 = image.?.getWidth();
        const height: i32 = image.?.getHeight();
        const imageData: ?*ImageData = Inheritance.upcast(?*ImageData, newBufferedImage.?.getImageData());
        if (imageData.?.depth == 24) {
            var rx: i32 = 0;
            var gx: i32 = 0;
            var bx: i32 = 0;
            var index3: i32 = 0;
            {
                var index: i32 = 0;
                while (index < width) : (index += 1) {
                {
                    var index2: i32 = 0;
                    while (index2 < height) : (index2 += 1) {
                    index3 = (index2 * imageData.?.bytesPerLine) + (index * 4);
                    rx = (imageData.?.data[@intCast(index3)] & 0xFF) << @intCast(16);
                    gx = (imageData.?.data[@intCast(index3 + 1)] & 0xFF) << @intCast(8);
                    bx = (imageData.?.data[@intCast(index3 + 2)] & 0xFF);
                    if (rx != 0 or gx != 0 or bx != 0) {
                        imageData.?.data[@intCast(index3)] = @as(i8, @intCast(r));
                        imageData.?.data[@intCast(index3 + 1)] = @as(i8, @intCast(g));
                        imageData.?.data[@intCast(index3 + 2)] = @as(i8, @intCast(b));
                    }
                    }
                }
                }
            }
        }
    }
    

    pub fn changeColor(self: *Self, unusedOriginalImage: ?*Image, image: ?*Image, imageIndex: i32, basicColor: ?*BasicColor) void {
        _ = unusedOriginalImage;
        _ = imageIndex;
        if (Inheritance.call(self.features.?, "isFeature", .{ OpenGLFeatureFactory.getInstance().?.OPENGL })) {
            if (image.?.getType() >= OpenGLESImage.TYPE) {
                const openGLESImage: ?*OpenGLESImage = Inheritance.upcast(?*OpenGLESImage, (Inheritance.cast(?*OpenGLESImage, image)));
                openGLESImage.?.imageProcessor = Inheritance.upcast(@TypeOf(openGLESImage.?.imageProcessor), ModifierOpenGLESImageProcessor.getInstance());
                openGLESImage.?.openGLESImageProperties.?.redf = Inheritance.upcast(@TypeOf(openGLESImage.?.openGLESImageProperties.?.redf), basicColor.?.getRedComponent());
                openGLESImage.?.openGLESImageProperties.?.greenf = Inheritance.upcast(@TypeOf(openGLESImage.?.openGLESImageProperties.?.greenf), basicColor.?.getGreenComponent());
                openGLESImage.?.openGLESImageProperties.?.bluef = Inheritance.upcast(@TypeOf(openGLESImage.?.openGLESImageProperties.?.bluef), basicColor.?.getBlueComponent());
                return;
            }
        }
        var newBufferedImage: ?*Image = null;
        if (image.?.isMutable()) {
            const swtImage: ?*SwtMutableImage = Inheritance.cast(?*SwtMutableImage, image);
            newBufferedImage = Inheritance.cast(?*Image, swtImage.?.getImage());
        } else {
            const swtImage: ?*SwtImmutableImage = Inheritance.cast(?*SwtImmutableImage, image);
            newBufferedImage = Inheritance.cast(?*Image, swtImage.?.getImage());
        }
        const MAX: f32 = 255.0;
        const r: f32 = (@as(f32, @floatCast(basicColor.?.red))) / MAX;
        const g: f32 = (@as(f32, @floatCast(basicColor.?.green))) / MAX;
        const b: f32 = (@as(f32, @floatCast(basicColor.?.blue))) / MAX;
        var rx: i32 = 0;
        var gx: i32 = 0;
        var bx: i32 = 0;
        const imageData: ?*ImageData = Inheritance.upcast(?*ImageData, newBufferedImage.?.getImageData());
        if (imageData.?.depth == 24) {
            const size: i32 = @as(i32, @intCast(imageData.?.data.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 4) {
                rx = (imageData.?.data[@intCast(index)] & 0xFF) << @intCast(16);
                gx = (imageData.?.data[@intCast(index + 1)] & 0xFF) << @intCast(8);
                bx = (imageData.?.data[@intCast(index + 2)] & 0xFF);
                rx = @as(i32, @intFromFloat(rx * r));
                gx = @as(i32, @intFromFloat(gx * g));
                bx = @as(i32, @intFromFloat(bx * b));
                imageData.?.data[@intCast(index)] = @as(i8, @intCast(rx));
                imageData.?.data[@intCast(index + 1)] = @as(i8, @intCast(gx));
                imageData.?.data[@intCast(index + 2)] = @as(i8, @intCast(bx));
                }
            }
        }
    }
    

    pub fn setAlpha(self: *Self, unusedOriginalImage: ?*Image, image: ?*Image, imageIndex: i32, alphaInt: i32) void {
        _ = unusedOriginalImage;
        _ = imageIndex;
        if (Inheritance.call(self.features.?, "isFeature", .{ OpenGLFeatureFactory.getInstance().?.OPENGL })) {
            if (image.?.getType() >= OpenGLESImage.TYPE) {
                const openGLESImage: ?*OpenGLESImage = Inheritance.upcast(?*OpenGLESImage, (Inheritance.cast(?*OpenGLESImage, image)));
                openGLESImage.?.imageProcessor = Inheritance.upcast(@TypeOf(openGLESImage.?.imageProcessor), ModifierOpenGLESImageProcessor.getInstance());
                openGLESImage.?.openGLESImageProperties.?.alphaf = Inheritance.upcast(@TypeOf(openGLESImage.?.openGLESImageProperties.?.alphaf), (@as(f32, @floatFromInt(alphaInt))) / 255.0);
                return;
            }
        }
        _ = Inheritance.call(self, "setAlphaSWT", .{ image, alphaInt });
    }
    

    pub fn setAlphaSWT(self: *Self, image: ?*Image, alphaInt: i32) void {
        _ = self;
        const alpha: i8 = @as(i8, @intCast(alphaInt));
        var newBufferedImage: ?*Image = null;
        if (image.?.isMutable()) {
            const swtImage: ?*SwtMutableImage = Inheritance.cast(?*SwtMutableImage, image);
            newBufferedImage = Inheritance.cast(?*Image, swtImage.?.getImage());
        } else {
            const swtImage: ?*SwtImmutableImage = Inheritance.cast(?*SwtImmutableImage, image);
            newBufferedImage = Inheritance.cast(?*Image, swtImage.?.getImage());
        }
        newBufferedImage.?.getImageData().?.alpha = Inheritance.upcast(@TypeOf(newBufferedImage.?.getImageData().?.alpha), alpha);
    }
    

    pub fn getImageArray(self: *Self, originalImageArray: []?*Image) []?*Image {
        { // try
            const newImageArray: []?*Image = array_N70661: { const array_N70661_array = allocator.alloc(?*Image, @intCast(@as(i32, @intCast(originalImageArray.len)))) catch unreachable; @memset(array_N70661_array, null); break :array_N70661 array_N70661_array; };
            const size: i32 = @as(i32, @intCast(newImageArray.len));
            var originalImage: ?*Image = null;
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                originalImage = Inheritance.upcast(@TypeOf(originalImage), originalImageArray[@intCast(index)]);
                const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self.imageCopyUtil.?, "createImage", .{ originalImage }));
                newImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(newImageArray[@intCast(index)]), image);
                }
            }
            return newImageArray;
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ commonStrings.?.EXCEPTION, self, String.literal("getImageArray"), e });
//             return originalImageArray;
    }
    

    pub fn handleImage(self: *Self, imageArray: []?*Image, index: i32, image: ?*Image) void {
        _ = imageArray;
        _ = index;
        _ = image;
        _ = self;
    }
    

    pub fn reset(self: *Self) void {
        _ = self;
    }
};

