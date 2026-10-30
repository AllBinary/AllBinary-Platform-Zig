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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const PoolInterface = @import("org/allbinary/logic/util/cache/PoolInterface.zig").PoolInterface;
const BufferedImageCacheable = @import("org/allbinary/media/image/cache/BufferedImageCacheable.zig").BufferedImageCacheable;
const BufferedImageInfo = @import("org/allbinary/media/image/cache/BufferedImageInfo.zig").BufferedImageInfo;
const BufferedImageInfoFactory = @import("org/allbinary/media/image/cache/BufferedImageInfoFactory.zig").BufferedImageInfoFactory;
const BufferedImagePoolSingleton = @import("org/allbinary/media/image/cache/BufferedImagePoolSingleton.zig").BufferedImagePoolSingleton;
const PixelDelta = @import("org/allbinary/media/image/comparison/pixel/PixelDelta.zig").PixelDelta;
const ImageComparisonResult = @import("org/allbinary/media/image/comparison/ImageComparisonResult.zig").ImageComparisonResult;
const System = @import("java/lang/System.zig").System;

pub const ChangedPixelsUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.ChangedPixelsUtil";
    const START_X: i32 = 0;
    const START_Y: i32 = 0;
    const OFFSET: i32 = 0;
    const SCAN_SIZE: i32 = 0;
    var CLEAR_INT_ARRAY: []i32 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        CLEAR_INT_ARRAY = array_N66053: { const array_N66053_array = allocator.alloc(i32, @intCast(1800 * 1600)) catch unreachable; @memset(array_N66053_array, 0); break :array_N66053 array_N66053_array; };
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn generateBufferedImageChacheables(imageComparisonInfo: ?*ImageComparisonResult) []?*BufferedImageCacheable {
        var bufferedImageCacheables: []?*BufferedImageCacheable = &.{};
        const originalBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, imageComparisonInfo.?.getBufferedImages()[@intCast(0)]);
        bufferedImageCacheables = Inheritance.upcast(@TypeOf(bufferedImageCacheables), array_N66225: { const array_N66225_array = allocator.alloc(?*BufferedImageCacheable, @intCast(2)) catch unreachable; @memset(array_N66225_array, null); break :array_N66225 array_N66225_array; });
        const bufferedImageInfo: ?*BufferedImageInfo = Inheritance.upcast(?*BufferedImageInfo, Inheritance.callStatic(BufferedImageInfoFactory, "getInstance", .{ imageComparisonInfo.?.imageWidth, imageComparisonInfo.?.imageHeight, originalBufferedImage.?.getType() }));
        const poolInterface: ?*PoolInterface = Inheritance.upcast(?*PoolInterface, BufferedImagePoolSingleton.getInstance());
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(bufferedImageCacheables.len))) : (index += 1) {
            const bufferedImageCacheable: ?*BufferedImageCacheable = Inheritance.cast(?*BufferedImageCacheable, Inheritance.call(poolInterface.?, "remove", .{ bufferedImageInfo }));
            bufferedImageCacheables[@intCast(index)] = Inheritance.upcast(@TypeOf(bufferedImageCacheables[@intCast(index)]), bufferedImageCacheable);
            _ = Inheritance.call(bufferedImageCacheables[@intCast(index)].?.getBufferedImage().?, "setRGB", .{ ChangedPixelsUtil.START_X, ChangedPixelsUtil.START_Y, bufferedImageInfo.?.getWidth(), bufferedImageInfo.?.getHeight(), ChangedPixelsUtil.CLEAR_INT_ARRAY, ChangedPixelsUtil.OFFSET, ChangedPixelsUtil.SCAN_SIZE });
            }
        }
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, imageComparisonInfo.?.getNonMatchingPixelVector());
        const size: i32 = vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const pixelDelta: ?*PixelDelta = Inheritance.cast(?*PixelDelta, Inheritance.call(vector.?, "get", .{ index }));
            if (pixelDelta.?.getColorDelta() == null) {
                _ = std.debug.print("{s}", .{String.text(String.literal("ColorDelta"))});
                _ = std.process.exit(@intCast(0));
            }
            _ = Inheritance.call(bufferedImageCacheables[@intCast(0)].?.getBufferedImage().?, "setRGB", .{ Inheritance.receiverOf(pixelDelta.?.getPoint().?, "getX").getX(), Inheritance.receiverOf(pixelDelta.?.getPoint().?, "getY").getY(), Inheritance.receiverOf(pixelDelta.?.getColorDelta().?, "getRgb1").getRgb1() });
            _ = Inheritance.call(bufferedImageCacheables[@intCast(1)].?.getBufferedImage().?, "setRGB", .{ Inheritance.receiverOf(pixelDelta.?.getPoint().?, "getX").getX(), Inheritance.receiverOf(pixelDelta.?.getPoint().?, "getY").getY(), Inheritance.receiverOf(pixelDelta.?.getColorDelta().?, "getRgb2").getRgb2() });
            }
        }
        return bufferedImageCacheables;
    }
};

