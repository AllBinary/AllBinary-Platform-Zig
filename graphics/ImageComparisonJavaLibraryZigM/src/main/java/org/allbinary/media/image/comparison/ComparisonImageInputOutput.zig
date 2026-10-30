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
const ImageOutputData = @import("org/allbinary/input/automation/ImageOutputData.zig").ImageOutputData;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LongUtil = @import("org/allbinary/logic/java/number/LongUtil.zig").LongUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AutomaticCacheInterface = @import("org/allbinary/logic/util/cache/AutomaticCacheInterface.zig").AutomaticCacheInterface;
const MediaDataFactory = @import("org/allbinary/logic/visual/media/MediaDataFactory.zig").MediaDataFactory;
const ImagePersistanceUtil = @import("org/allbinary/media/image/ImagePersistanceUtil.zig").ImagePersistanceUtil;
const BufferedImageCacheable = @import("org/allbinary/media/image/cache/BufferedImageCacheable.zig").BufferedImageCacheable;
const ImageIOInterface = @import("org/allbinary/media/image/io/ImageIOInterface.zig").ImageIOInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ChangedPixelsUtil = @import("org/allbinary/media/image/comparison/ChangedPixelsUtil.zig").ChangedPixelsUtil;
const ImageComparisonResult = @import("org/allbinary/media/image/comparison/ImageComparisonResult.zig").ImageComparisonResult;
const ImageComparisonResultCacheSingleton = @import("org/allbinary/media/image/comparison/ImageComparisonResultCacheSingleton.zig").ImageComparisonResultCacheSingleton;
const ImageComparisonResultFrameCacheable = @import("org/allbinary/media/image/comparison/ImageComparisonResultFrameCacheable.zig").ImageComparisonResultFrameCacheable;
const Long = @import("java/lang/Long.zig").Long;

pub const ComparisonImageInputOutput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.ComparisonImageInputOutput";
    logUtil: ?*LogUtil = null,
    // Implements ImageIOInterface
    const ROOT_NAME: ?*String = String.literal("_Changed_");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
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
        if (frame > 0) {
            const imageComparisonResultFrameCacheable: ?*ImageComparisonResultFrameCacheable = Inheritance.cast(?*ImageComparisonResultFrameCacheable, Inheritance.call((Inheritance.cast(?*AutomaticCacheInterface, ImageComparisonResultCacheSingleton.getInstance())).?, "get", .{ frame }));
            if (imageComparisonResultFrameCacheable != null) {
                const imageComparisonResult: ?*ImageComparisonResult = Inheritance.upcast(?*ImageComparisonResult, imageComparisonResultFrameCacheable.?.getImageComparisonResult());
                _ = Inheritance.call(self, "save", .{ imageComparisonResult, imageComparisonResultFrameCacheable.?.getFrame() });
            } else {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Comparison Results Not Available for Output: "), frame), self, commonStrings.?.SAVE });
            }
        } else {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("No Comparison Results: for first frame: "), frame), self, commonStrings.?.SAVE });
        }
    }
    

    // throws Exception
    pub fn save2(self: *Self, imageComparisonResult: ?*ImageComparisonResult, frame: ?*Long) void {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const filePathStringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(filePathStringBuffer.?, "append", .{ ImageOutputData.SAVE_PATH });
        _ = Inheritance.call(filePathStringBuffer.?, "append", .{ Inheritance.callStatic(LongUtil, "fillIn", .{ String.valueOf(frame.?) }) });
        _ = Inheritance.call(filePathStringBuffer.?, "append", .{ ComparisonImageInputOutput.ROOT_NAME });
        const filePathStringBuffer1: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(filePathStringBuffer1.?, "append", .{ Object.toString(Object.of(filePathStringBuffer)) });
        _ = Inheritance.call(filePathStringBuffer1.?, "append", .{ String.literal("_1") });
        _ = Inheritance.call(filePathStringBuffer1.?, "append", .{ Inheritance.receiverOf(MediaDataFactory.getInstance().?.JPG.?, "getExtension").getExtension() });
        const filePath1: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(filePathStringBuffer1)));
        const filePathStringBuffer2: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(filePathStringBuffer2.?, "append", .{ Object.toString(Object.of(filePathStringBuffer)) });
        _ = Inheritance.call(filePathStringBuffer2.?, "append", .{ String.literal("_2") });
        _ = Inheritance.call(filePathStringBuffer2.?, "append", .{ Inheritance.receiverOf(MediaDataFactory.getInstance().?.JPG.?, "getExtension").getExtension() });
        const filePath2: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(filePathStringBuffer2)));
        const bufferedImageCacheables: []?*BufferedImageCacheable = Inheritance.callStatic(ChangedPixelsUtil, "generateBufferedImageChacheables", .{ imageComparisonResult });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Comparison Image File Path 1: "), filePath1), self, commonStrings.?.SAVE });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Comparison Image File Path 2: "), filePath2), self, commonStrings.?.SAVE });
        const bufferedImageArray: []?*BufferedImage = array_N67422: { const array_N67422_array = allocator.alloc(?*BufferedImage, @intCast(2)) catch unreachable; @memset(array_N67422_array, null); break :array_N67422 array_N67422_array; };
        bufferedImageArray[@intCast(0)] = Inheritance.upcast(@TypeOf(bufferedImageArray[@intCast(0)]), bufferedImageCacheables[@intCast(0)].?.getBufferedImage());
        bufferedImageArray[@intCast(1)] = Inheritance.upcast(@TypeOf(bufferedImageArray[@intCast(1)]), bufferedImageCacheables[@intCast(1)].?.getBufferedImage());
        const imagePersistanceUtil: ?*ImagePersistanceUtil = Inheritance.upcast(?*ImagePersistanceUtil, ImagePersistanceUtil.getInstance());
        _ = Inheritance.call(imagePersistanceUtil.?, "saveWithImageIO", .{ filePath1, bufferedImageArray[@intCast(0)] });
        _ = Inheritance.call(imagePersistanceUtil.?, "saveWithImageIO", .{ filePath2, bufferedImageArray[@intCast(1)] });
    }
};

