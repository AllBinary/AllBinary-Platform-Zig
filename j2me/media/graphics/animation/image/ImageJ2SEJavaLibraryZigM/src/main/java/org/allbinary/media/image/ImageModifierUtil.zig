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
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
// const ColorModel = @import("java/awt/image/ColorModel.zig").ColorModel;
// const WritableRaster = @import("java/awt/image/WritableRaster.zig").WritableRaster;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ImageCreationUtil = @import("org/allbinary/media/image/ImageCreationUtil.zig").ImageCreationUtil;
const ImageUtil = @import("org/allbinary/media/image/ImageUtil.zig").ImageUtil;

pub const ImageModifierUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageModifierUtil";
    imageUtil: ?*ImageUtil = null,
    colorArray: []i32 = &.{},
    var instance: ?*ImageModifierUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageModifierUtil.create();
    }

    fn initFields(this: *Self) void {
        this.imageUtil = Inheritance.upcast(?*ImageUtil, ImageUtil.getInstance());
        this.colorArray = array_N66035: { const array_N66035_array = allocator.alloc(i32, @intCast(1)) catch unreachable; @memset(array_N66035_array, 0); break :array_N66035 array_N66035_array; };
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
        const newBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(self.imageUtil.?, "getBufferedImage", .{ image }));
        const r: i16 = basicColor.?.red;
        const g: i16 = basicColor.?.green;
        const b: i16 = basicColor.?.blue;
        const width: i32 = image.?.getWidth();
        const height: i32 = image.?.getHeight();
        var colorModel: ?*ColorModel = null;
        var dataElements: ?Object = null;
        var ax: i32 = 0;
        var rx: i32 = 0;
        var gx: i32 = 0;
        var bx: i32 = 0;
        {
            var index: i32 = 0;
            while (index < width) : (index += 1) {
            {
                var index2: i32 = 0;
                while (index2 < height) : (index2 += 1) {
                colorModel = Inheritance.upcast(@TypeOf(colorModel), newBufferedImage.?.getColorModel());
                dataElements = Inheritance.upcast(@TypeOf(dataElements), Inheritance.call(newBufferedImage.?.getRaster().?, "getDataElements", .{ index, index2, null }));
                ax = Inheritance.call(colorModel.?, "getAlpha", .{ dataElements });
                rx = Inheritance.call(colorModel.?, "getRed", .{ dataElements });
                gx = Inheritance.call(colorModel.?, "getGreen", .{ dataElements });
                bx = Inheritance.call(colorModel.?, "getBlue", .{ dataElements });
                if (rx != 0 or gx != 0 or bx != 0) {
                    _ = Inheritance.call(newBufferedImage.?, "setRGB", .{ index, index2, (ax << @intCast(24)) | (r << @intCast(16)) | (g << @intCast(8)) | @as(i32, @intCast((b))) });
                }
                }
            }
            }
        }
    }
    

    pub fn changeColor(self: *Self, unusedOriginalImage: ?*Image, image: ?*Image, imageIndex: i32, basicColor: ?*BasicColor) void {
        _ = unusedOriginalImage;
        _ = imageIndex;
        const newBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(self.imageUtil.?, "getBufferedImage", .{ image }));
        const MAX: f32 = 255.0;
        const r: f32 = (@as(f32, @floatCast(basicColor.?.red))) / MAX;
        const g: f32 = (@as(f32, @floatCast(basicColor.?.green))) / MAX;
        const b: f32 = (@as(f32, @floatCast(basicColor.?.blue))) / MAX;
        const width: i32 = image.?.getWidth();
        const height: i32 = image.?.getHeight();
        var colorModel: ?*ColorModel = null;
        var dataElements: ?Object = null;
        var ax: i32 = 0;
        var rx: i32 = 0;
        var gx: i32 = 0;
        var bx: i32 = 0;
        {
            var index: i32 = 0;
            while (index < width) : (index += 1) {
            {
                var index2: i32 = 0;
                while (index2 < height) : (index2 += 1) {
                colorModel = Inheritance.upcast(@TypeOf(colorModel), newBufferedImage.?.getColorModel());
                dataElements = Inheritance.upcast(@TypeOf(dataElements), Inheritance.call(newBufferedImage.?.getRaster().?, "getDataElements", .{ index, index2, null }));
                ax = Inheritance.call(colorModel.?, "getAlpha", .{ dataElements });
                rx = Inheritance.call(colorModel.?, "getRed", .{ dataElements });
                gx = Inheritance.call(colorModel.?, "getGreen", .{ dataElements });
                bx = Inheritance.call(colorModel.?, "getBlue", .{ dataElements });
                rx = @as(i32, @intFromFloat(rx * r));
                gx = @as(i32, @intFromFloat(gx * g));
                bx = @as(i32, @intFromFloat(bx * b));
                _ = Inheritance.call(newBufferedImage.?, "setRGB", .{ index, index2, (ax << @intCast(24)) | (rx << @intCast(16)) | (gx << @intCast(8)) | (bx) });
                }
            }
            }
        }
    }
    

    pub fn setAlpha(self: *Self, unusedOriginalImage: ?*Image, image: ?*Image, imageIndex: i32, alphaInt: i32) void {
        _ = unusedOriginalImage;
        _ = imageIndex;
        const alpha: i8 = @as(i8, @intCast(alphaInt));
        const newBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(self.imageUtil.?, "getBufferedImage", .{ image }));
        const width: i32 = image.?.getWidth();
        const height: i32 = image.?.getHeight();
        const raster: ?*WritableRaster = Inheritance.upcast(?*WritableRaster, newBufferedImage.?.getAlphaRaster());
        {
            var index: i32 = 0;
            while (index < width) : (index += 1) {
            {
                var index2: i32 = 0;
                while (index2 < height) : (index2 += 1) {
                _ = Inheritance.call(raster.?, "getPixel", .{ index, index2, self.colorArray });
                self.colorArray[@intCast(0)] = @as(i32, @intCast(alpha)) & self.colorArray[@intCast(0)];
                _ = Inheritance.call(raster.?, "setPixel", .{ index, index2, self.colorArray });
                }
            }
            }
        }
    }
    

    pub fn getImageArray(self: *Self, originalImageArray: []?*Image) []?*Image {
        _ = self;
        { // try
            const newImageArray: []?*Image = array_N69267: { const array_N69267_array = allocator.alloc(?*Image, @intCast(@as(i32, @intCast(originalImageArray.len)))) catch unreachable; @memset(array_N69267_array, null); break :array_N69267 array_N69267_array; };
            const size: i32 = @as(i32, @intCast(newImageArray.len));
            var originalImage: ?*Image = null;
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                originalImage = Inheritance.upcast(@TypeOf(originalImage), originalImageArray[@intCast(index)]);
                const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(ImageCreationUtil.getInstance().?, "createImageWH", .{ originalImage.?.getWidth(), originalImage.?.getHeight() }));
                _ = Inheritance.call(image.?.getGraphics().?, "drawImage", .{ originalImage, 0, 0, Anchor.TOP_LEFT });
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

