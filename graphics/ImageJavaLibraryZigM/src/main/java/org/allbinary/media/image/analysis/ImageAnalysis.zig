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
// package org.allbinary.media.image.analysis

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const ColorCacheFactory = @import("org/allbinary/graphics/color/ColorCacheFactory.zig").ColorCacheFactory;
const ColorCacheable = @import("org/allbinary/graphics/color/ColorCacheable.zig").ColorCacheable;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ColorAverage = @import("org/allbinary/media/image/analysis/ColorAverage.zig").ColorAverage;
const ColorRangeInterface = @import("org/allbinary/media/image/analysis/ColorRangeInterface.zig").ColorRangeInterface;
const ImageAnalysisResults = @import("org/allbinary/media/image/analysis/ImageAnalysisResults.zig").ImageAnalysisResults;
const ImageColorResults = @import("org/allbinary/media/image/analysis/ImageColorResults.zig").ImageColorResults;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const ImageAnalysis = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.analysis.ImageAnalysis";
    logUtil: ?*LogUtil = null,
    var instance: ?*ImageAnalysis = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageAnalysis.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*ImageAnalysis {
        return Inheritance.upcast(?*ImageAnalysis, ImageAnalysis.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self, bufferedImageArray: []?*BufferedImage, colorRangeInterface: ?*ColorRangeInterface) []?*ImageAnalysisResults {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(CommonLabels.getInstance().?.START, Object.toString(Object.of(colorRangeInterface))), self, commonStrings.?.PROCESS });
        const imageAnalysisResultsArray: []?*ImageAnalysisResults = array_N66108: { const array_N66108_array = allocator.alloc(?*ImageAnalysisResults, @intCast(@as(i32, @intCast(bufferedImageArray.len)))) catch unreachable; @memset(array_N66108_array, null); break :array_N66108 array_N66108_array; };
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(bufferedImageArray.len))) : (index += 1) {
            imageAnalysisResultsArray[@intCast(index)] = Inheritance.upcast(@TypeOf(imageAnalysisResultsArray[@intCast(index)]), Inheritance.callStatic(ImageAnalysis, "process", .{ bufferedImageArray[@intCast(index)], colorRangeInterface }));
            }
        }
        return imageAnalysisResultsArray;
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn process(bufferedImage: ?*BufferedImage, colorRangeInterface: ?*ColorRangeInterface) ?*ImageAnalysisResults {
        const imageAnalysisResults: ?*ImageAnalysisResults = ImageAnalysisResults.create();
        var redTotal: i64 = 0;
        var greenTotal: i64 = 0;
        var blueTotal: i64 = 0;
        {
            var indexY: i32 = 0;
            while (indexY < bufferedImage.?.getHeight()) : (indexY += 1) {
            {
                var indexX: i32 = 0;
                while (indexX < bufferedImage.?.getWidth()) : (indexX += 1) {
                const keyInteger: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.call(bufferedImage.?, "getRGB", .{ indexX, indexY }) }));
                const colorCacheable: ?*ColorCacheable = Inheritance.cast(?*ColorCacheable, Inheritance.call(ColorCacheFactory.getInstance().?, "get", .{ keyInteger }));
                const color: ?*Color = Inheritance.upcast(?*Color, colorCacheable.?.getColor());
                _ = Inheritance.callStatic(ImageAnalysis, "processColorRangeResults", .{ imageAnalysisResults, colorRangeInterface, color });
                _ = Inheritance.callStatic(ImageAnalysis, "processImageColorResults", .{ imageAnalysisResults.?.getImageColorResults(), colorRangeInterface, color });
                redTotal += color.?.getRed();
                greenTotal += color.?.getGreen();
                blueTotal += color.?.getBlue();
                }
            }
            }
        }
        const totalPixels: i64 = Inheritance.receiverOf(imageAnalysisResults.?.getImageColorRangeResults().?, "getTotalPixelsChecked").getTotalPixelsChecked();
        const colorAverage: ?*ColorAverage = Inheritance.upcast(?*ColorAverage, Inheritance.receiverOf(imageAnalysisResults.?.getImageColorResults().?, "getColorAverage").getColorAverage());
        _ = Inheritance.call(colorAverage.?, "setAvgRed", .{ @as(f32, @floatFromInt(redTotal)) / @as(f32, @floatFromInt(totalPixels)) });
        _ = Inheritance.call(colorAverage.?, "setAvgGreen", .{ @as(f32, @floatFromInt(greenTotal)) / @as(f32, @floatFromInt(totalPixels)) });
        _ = Inheritance.call(colorAverage.?, "setAvgBlue", .{ @as(f32, @floatFromInt(blueTotal)) / @as(f32, @floatFromInt(totalPixels)) });
        return imageAnalysisResults;
    }
    

    pub fn processColorRangeResults(imageAnalysisResults: ?*ImageAnalysisResults, colorRangeInterface: ?*ColorRangeInterface, color: ?*Color) void {
        if (Inheritance.call(colorRangeInterface.?, "isInRange", .{ color })) {
            _ = Inheritance.receiverOf(imageAnalysisResults.?.getImageColorRangeResults().?, "addMatchingPixelsChecked").addMatchingPixelsChecked();
        } else {
        }
        _ = Inheritance.receiverOf(imageAnalysisResults.?.getImageColorRangeResults().?, "addTotalPixelsChecked").addTotalPixelsChecked();
    }
    

    pub fn processImageColorResults(imageColorResults: ?*ImageColorResults, colorRangeInterface: ?*ColorRangeInterface, color: ?*Color) void {
        _ = colorRangeInterface;
        if (color.?.getRed() < Inheritance.receiverOf(imageColorResults.?.getColorRange().?, "getMinRed").getMinRed()) {
            _ = Inheritance.call(imageColorResults.?.getColorRange().?, "setMinRed", .{ color.?.getRed() });
        }
        if (color.?.getGreen() < Inheritance.receiverOf(imageColorResults.?.getColorRange().?, "getMinGreen").getMinGreen()) {
            _ = Inheritance.call(imageColorResults.?.getColorRange().?, "setMinGreen", .{ color.?.getGreen() });
        }
        if (color.?.getBlue() < Inheritance.receiverOf(imageColorResults.?.getColorRange().?, "getMinBlue").getMinBlue()) {
            _ = Inheritance.call(imageColorResults.?.getColorRange().?, "setMinBlue", .{ color.?.getBlue() });
        }
        if (color.?.getRed() > Inheritance.receiverOf(imageColorResults.?.getColorRange().?, "getMaxRed").getMaxRed()) {
            _ = Inheritance.call(imageColorResults.?.getColorRange().?, "setMaxRed", .{ color.?.getRed() });
        }
        if (color.?.getGreen() > Inheritance.receiverOf(imageColorResults.?.getColorRange().?, "getMaxGreen").getMaxGreen()) {
            _ = Inheritance.call(imageColorResults.?.getColorRange().?, "setMaxGreen", .{ color.?.getGreen() });
        }
        if (color.?.getBlue() > Inheritance.receiverOf(imageColorResults.?.getColorRange().?, "getMaxBlue").getMaxBlue()) {
            _ = Inheritance.call(imageColorResults.?.getColorRange().?, "setMaxBlue", .{ color.?.getBlue() });
        }
    }
};

