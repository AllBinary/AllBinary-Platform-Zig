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
// package org.allbinary.media.image.comparison.motion

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const ImageOutputData = @import("org/allbinary/input/automation/ImageOutputData.zig").ImageOutputData;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LongUtil = @import("org/allbinary/logic/java/number/LongUtil.zig").LongUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AutomaticCacheInterface = @import("org/allbinary/logic/util/cache/AutomaticCacheInterface.zig").AutomaticCacheInterface;
const PoolInterface = @import("org/allbinary/logic/util/cache/PoolInterface.zig").PoolInterface;
const MediaDataFactory = @import("org/allbinary/logic/visual/media/MediaDataFactory.zig").MediaDataFactory;
const ImagePersistanceUtil = @import("org/allbinary/media/image/ImagePersistanceUtil.zig").ImagePersistanceUtil;
const BufferedImageCacheable = @import("org/allbinary/media/image/cache/BufferedImageCacheable.zig").BufferedImageCacheable;
const BufferedImageInfo = @import("org/allbinary/media/image/cache/BufferedImageInfo.zig").BufferedImageInfo;
const BufferedImageInfoFactory = @import("org/allbinary/media/image/cache/BufferedImageInfoFactory.zig").BufferedImageInfoFactory;
const BufferedImagePoolSingleton = @import("org/allbinary/media/image/cache/BufferedImagePoolSingleton.zig").BufferedImagePoolSingleton;
const ImageComparisonResult = @import("org/allbinary/media/image/comparison/ImageComparisonResult.zig").ImageComparisonResult;
const ImageIOInterface = @import("org/allbinary/media/image/io/ImageIOInterface.zig").ImageIOInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AllMotionRectanglesResultsCacheSingleton = @import("org/allbinary/media/image/comparison/motion/AllMotionRectanglesResultsCacheSingleton.zig").AllMotionRectanglesResultsCacheSingleton;
const ConsolidatedMotionRectanglesResultsCacheSingleton = @import("org/allbinary/media/image/comparison/motion/ConsolidatedMotionRectanglesResultsCacheSingleton.zig").ConsolidatedMotionRectanglesResultsCacheSingleton;
const ConstrainedMotionRectanglesResultsCacheSingleton = @import("org/allbinary/media/image/comparison/motion/ConstrainedMotionRectanglesResultsCacheSingleton.zig").ConstrainedMotionRectanglesResultsCacheSingleton;
const MotionRectangle = @import("org/allbinary/media/image/comparison/motion/MotionRectangle.zig").MotionRectangle;
const MotionRectangles = @import("org/allbinary/media/image/comparison/motion/MotionRectangles.zig").MotionRectangles;
const MotionRectanglesResultsFrameCacheable = @import("org/allbinary/media/image/comparison/motion/MotionRectanglesResultsFrameCacheable.zig").MotionRectanglesResultsFrameCacheable;
const Long = @import("java/lang/Long.zig").Long;

pub const MotionRectanglesImageInputOutput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput";
    logUtil: ?*LogUtil = null,
    NUMBER_OF_IMAGES: i32 = 0,
    // Implements ImageIOInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.NUMBER_OF_IMAGES = 1;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn save(self: *Self, frame: ?*Long) void {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        var motionRectanglesResultsFrameCacheable: ?*MotionRectanglesResultsFrameCacheable = Inheritance.cast(?*MotionRectanglesResultsFrameCacheable, Inheritance.call((Inheritance.cast(?*AutomaticCacheInterface, AllMotionRectanglesResultsCacheSingleton.getInstance())).?, "get", .{ frame }));
        if (motionRectanglesResultsFrameCacheable != null) {
            var motionRectangles: ?*MotionRectangles = Inheritance.upcast(?*MotionRectangles, motionRectanglesResultsFrameCacheable.?.getMotionRectangles());
            _ = Inheritance.call(self, "save", .{ motionRectangles, frame });
            motionRectanglesResultsFrameCacheable = Inheritance.cast(?*MotionRectanglesResultsFrameCacheable, Inheritance.call((Inheritance.cast(?*AutomaticCacheInterface, ConsolidatedMotionRectanglesResultsCacheSingleton.getInstance())).?, "get", .{ frame }));
            motionRectangles = Inheritance.upcast(@TypeOf(motionRectangles), motionRectanglesResultsFrameCacheable.?.getMotionRectangles());
            _ = Inheritance.call(self, "save", .{ motionRectangles, frame });
            motionRectanglesResultsFrameCacheable = Inheritance.cast(?*MotionRectanglesResultsFrameCacheable, Inheritance.call((Inheritance.cast(?*AutomaticCacheInterface, ConstrainedMotionRectanglesResultsCacheSingleton.getInstance())).?, "get", .{ frame }));
            motionRectangles = Inheritance.upcast(@TypeOf(motionRectangles), motionRectanglesResultsFrameCacheable.?.getMotionRectangles());
            _ = Inheritance.call(self, "save", .{ motionRectangles, frame });
        } else {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("No Motion Rectangle Results for Frame: "), frame), self, commonStrings.?.SAVE });
        }
    }
    

    // throws Exception
    pub fn save2(self: *Self, motionRectangles: ?*MotionRectangles, frame: ?*Long) void {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const filePathStringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(filePathStringBuffer.?, "append", .{ ImageOutputData.SAVE_PATH });
        _ = Inheritance.call(filePathStringBuffer.?, "append", .{ Inheritance.callStatic(LongUtil, "fillIn", .{ String.valueOf(frame.?) }) });
        _ = Inheritance.call(filePathStringBuffer.?, "append", .{ String.literal("_") });
        _ = Inheritance.call(filePathStringBuffer.?, "append", .{ motionRectangles.?.getName() });
        const filePathStringBuffer1: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(filePathStringBuffer1.?, "append", .{ Object.toString(Object.of(filePathStringBuffer)) });
        _ = Inheritance.call(filePathStringBuffer1.?, "append", .{ String.literal("_1") });
        _ = Inheritance.call(filePathStringBuffer1.?, "append", .{ Inheritance.receiverOf(MediaDataFactory.getInstance().?.JPG.?, "getExtension").getExtension() });
        const filePathStringBuffer2: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(filePathStringBuffer2.?, "append", .{ Object.toString(Object.of(filePathStringBuffer)) });
        _ = Inheritance.call(filePathStringBuffer2.?, "append", .{ String.literal("_2") });
        _ = Inheritance.call(filePathStringBuffer2.?, "append", .{ Inheritance.receiverOf(MediaDataFactory.getInstance().?.JPG.?, "getExtension").getExtension() });
        const filePathStringBuffer3: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(filePathStringBuffer3.?, "append", .{ Object.toString(Object.of(filePathStringBuffer)) });
        _ = Inheritance.call(filePathStringBuffer3.?, "append", .{ Inheritance.receiverOf(MediaDataFactory.getInstance().?.JPG.?, "getExtension").getExtension() });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Motion Image File Path 1: "), Object.toString(Object.of(filePathStringBuffer1))), self, commonStrings.?.SAVE });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Motion Image File Path 2: "), Object.toString(Object.of(filePathStringBuffer2))), self, commonStrings.?.SAVE });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Motion Image File Path 2: "), Object.toString(Object.of(filePathStringBuffer3))), self, commonStrings.?.SAVE });
        const bufferedImageCacheables: []?*BufferedImageCacheable = array_N67904: { const array_N67904_array = allocator.alloc(?*BufferedImageCacheable, @intCast(self.NUMBER_OF_IMAGES)) catch unreachable; @memset(array_N67904_array, null); break :array_N67904 array_N67904_array; };
        const imageComparisonInfo: ?*ImageComparisonResult = Inheritance.upcast(?*ImageComparisonResult, motionRectangles.?.getImageComparisonResult());
        const originalBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, imageComparisonInfo.?.getBufferedImages()[@intCast(0)]);
        const bufferedImageInfo: ?*BufferedImageInfo = Inheritance.upcast(?*BufferedImageInfo, Inheritance.callStatic(BufferedImageInfoFactory, "getInstance", .{ imageComparisonInfo.?.imageWidth, imageComparisonInfo.?.imageHeight, originalBufferedImage.?.getType() }));
        const poolInterface: ?*PoolInterface = Inheritance.upcast(?*PoolInterface, BufferedImagePoolSingleton.getInstance());
        {
            var index: i32 = 0;
            while (index < self.NUMBER_OF_IMAGES) : (index += 1) {
            bufferedImageCacheables[@intCast(index)] = Inheritance.cast(?*BufferedImageCacheable, Inheritance.call(poolInterface.?, "remove", .{ bufferedImageInfo }));
            }
        }
        _ = Inheritance.call(bufferedImageCacheables[@intCast(0)].?.getBufferedImage().?, "setData", .{ Inheritance.receiverOf(imageComparisonInfo.?.getBufferedImages()[@intCast(1)].?, "getData").getData() });
        if (self.NUMBER_OF_IMAGES > 1) {
            _ = Inheritance.call(bufferedImageCacheables[@intCast(1)].?.getBufferedImage().?, "setData", .{ Inheritance.receiverOf(imageComparisonInfo.?.getBufferedImages()[@intCast(1)].?, "getData").getData() });
        }
        var bufferedImageGraphicsArray: []?*Graphics = &.{};
        bufferedImageGraphicsArray = Inheritance.upcast(@TypeOf(bufferedImageGraphicsArray), array_N68555: { const array_N68555_array = allocator.alloc(?*Graphics, @intCast(self.NUMBER_OF_IMAGES)) catch unreachable; @memset(array_N68555_array, null); break :array_N68555 array_N68555_array; });
        {
            var index: i32 = 0;
            while (index < self.NUMBER_OF_IMAGES) : (index += 1) {
            bufferedImageGraphicsArray[@intCast(index)] = Inheritance.upcast(@TypeOf(bufferedImageGraphicsArray[@intCast(index)]), Inheritance.receiverOf(bufferedImageCacheables[@intCast(index)].?.getBufferedImage().?, "getGraphics").getGraphics());
            }
        }
        const rectangelList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, motionRectangles.?.getVector());
        const size: i32 = rectangelList.?.size();
        {
            var index2: i32 = 0;
            while (index2 < size) : (index2 += 1) {
            const motionRectangle: ?*MotionRectangle = Inheritance.cast(?*MotionRectangle, Inheritance.call(rectangelList.?, "get", .{ index2 }));
            const rectangle: ?*Rectangle = Inheritance.upcast(?*Rectangle, motionRectangle.?.getRectangle());
            {
                var index: i32 = 0;
                while (index < self.NUMBER_OF_IMAGES) : (index += 1) {
                _ = Inheritance.call(bufferedImageGraphicsArray[@intCast(index)].?, "setColor", .{ Color.ORANGE });
                _ = Inheritance.call(bufferedImageGraphicsArray[@intCast(index)].?, "drawRect", .{ rectangle.?.x, rectangle.?.y, rectangle.?.width, rectangle.?.height });
                }
            }
            }
        }
        const imagePersistanceUtil: ?*ImagePersistanceUtil = Inheritance.upcast(?*ImagePersistanceUtil, ImagePersistanceUtil.getInstance());
        if (self.NUMBER_OF_IMAGES > 1) {
            _ = Inheritance.call(imagePersistanceUtil.?, "saveWithImageIO", .{ Object.toString(Object.of(filePathStringBuffer1)), bufferedImageCacheables[@intCast(1)].?.getBufferedImage() });
        }
        _ = Inheritance.call(imagePersistanceUtil.?, "saveWithImageIO", .{ Object.toString(Object.of(filePathStringBuffer2)), bufferedImageCacheables[@intCast(0)].?.getBufferedImage() });
        if (self.NUMBER_OF_IMAGES > 2) {
            _ = Inheritance.call(imagePersistanceUtil.?, "saveWithImageIO", .{ Object.toString(Object.of(filePathStringBuffer3)), bufferedImageCacheables[@intCast(2)].?.getBufferedImage() });
        }
    }
};

