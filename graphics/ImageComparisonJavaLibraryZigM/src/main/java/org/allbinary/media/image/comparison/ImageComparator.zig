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
// package org.allbinary.media.image.comparison

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const ColorCacheFactory = @import("org/allbinary/graphics/color/ColorCacheFactory.zig").ColorCacheFactory;
const ColorCacheable = @import("org/allbinary/graphics/color/ColorCacheable.zig").ColorCacheable;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AutomaticCacheInterface = @import("org/allbinary/logic/util/cache/AutomaticCacheInterface.zig").AutomaticCacheInterface;
const PixelDeltaFactory = @import("org/allbinary/media/image/comparison/pixel/PixelDeltaFactory.zig").PixelDeltaFactory;
const ImageComparatorConstraintsInterface = @import("org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface.zig").ImageComparatorConstraintsInterface;
const ImageComparisonResult = @import("org/allbinary/media/image/comparison/ImageComparisonResult.zig").ImageComparisonResult;
const Integer = @import("java/lang/Integer.zig").Integer;
const Long = @import("java/lang/Long.zig").Long;

pub const ImageComparator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.ImageComparator";
    imageComparatorConstraintsInterface: ?*ImageComparatorConstraintsInterface = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(imageComparatorConstraintsInterface: ?*ImageComparatorConstraintsInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.imageComparatorConstraintsInterface = imageComparatorConstraintsInterface;
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self, imageComparisonInfo: ?*ImageComparisonResult, point: ?*GPoint) void {
        const isCollsionWithAvoidRectangles: bool = Inheritance.call(self.imageComparatorConstraintsInterface.?, "isCollisionWithAvoidRectangles", .{ point });
        if (!isCollsionWithAvoidRectangles) {
            const rgb1: i32 = Inheritance.call(imageComparisonInfo.?.getBufferedImages()[@intCast(0)].?, "getRGB", .{ point.?.getX(), point.?.getY() });
            const rgb2: i32 = Inheritance.call(imageComparisonInfo.?.getBufferedImages()[@intCast(1)].?, "getRGB", .{ point.?.getX(), point.?.getY() });
            const automaticCacheInterface: ?*AutomaticCacheInterface = Inheritance.upcast(?*AutomaticCacheInterface, ColorCacheFactory.getInstance());
            const colorInteger: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ rgb1 }));
            const colorCacheable: ?*ColorCacheable = Inheritance.cast(?*ColorCacheable, Inheritance.call(automaticCacheInterface.?, "get", .{ colorInteger }));
            const color: ?*Color = Inheritance.upcast(?*Color, colorCacheable.?.getColor());
            const colorInteger2: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ rgb2 })); _ = colorInteger2;
            const colorCacheable2: ?*ColorCacheable = Inheritance.cast(?*ColorCacheable, Inheritance.call(automaticCacheInterface.?, "get", .{ colorInteger })); _ = colorCacheable2;
            const color2: ?*Color = Inheritance.upcast(?*Color, colorCacheable.?.getColor());
            if (Inheritance.call(self.imageComparatorConstraintsInterface.?, "isColorAllowed", .{ 0, point, color }) or Inheritance.call(self.imageComparatorConstraintsInterface.?, "isColorAllowed", .{ 1, point, color2 })) {
                if (@abs(rgb1 - rgb2) <= imageComparisonInfo.?.getTolerance()) {
                    imageComparisonInfo.?.pixelsThatMatch += 1;
                } else {
                    _ = Inheritance.call(imageComparisonInfo.?, "add", .{ Inheritance.callStatic(PixelDeltaFactory, "getInstance", .{ point.?.getX(), point.?.getY(), rgb1, rgb2 }) });
                }
            }
        } else {
            imageComparisonInfo.?.pixelsIgnored += 1;
        }
    }
    

    // throws Exception
    pub fn compare(self: *Self, bufferedImage1: ?*BufferedImage, bufferedImage2: ?*BufferedImage, frameOne: ?*Long, frameTwo: ?*Long, tolerance: i32) ?*ImageComparisonResult {
        return Inheritance.upcast(?*ImageComparisonResult, Inheritance.call(self, "compare", .{ bufferedImage1, bufferedImage2, frameOne, frameTwo, tolerance, StringUtil.getInstance().?.EMPTY_STRING }));
    }
    

    // throws Exception
    pub fn compare6(self: *Self, bufferedImage1: ?*BufferedImage, bufferedImage2: ?*BufferedImage, frameOne: ?*Long, frameTwo: ?*Long, tolerance: i32, name: ?*String) ?*ImageComparisonResult {
        if (bufferedImage1 == null or bufferedImage2 == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Input images must not be null."); break :exception error.Exception; }});
        }
        const imageComparisonInfo: ?*ImageComparisonResult = Inheritance.callStatic(ImageComparisonResult, "create6", .{ name, bufferedImage1, bufferedImage2, frameOne, frameTwo, tolerance });
        {
            var indexY: i32 = 0;
            while (indexY < imageComparisonInfo.?.imageHeight) : (indexY += 1) {
            {
                var indexX: i32 = 0;
                while (indexX < imageComparisonInfo.?.imageWidth) : (indexX += 1) {
                _ = Inheritance.call(self, "process", .{ imageComparisonInfo, Inheritance.call(PointFactory.getInstance().?, "createXY", .{ indexX, indexY }) });
                if (Inheritance.receiverOf(imageComparisonInfo.?.getNonMatchingPixelVector().?, "size").size() > self.imageComparatorConstraintsInterface.?.getMaxNonMatchingPixelDeltas()) {
                    break;
                }
                }
            }
            }
        }
        return imageComparisonInfo;
    }
};

