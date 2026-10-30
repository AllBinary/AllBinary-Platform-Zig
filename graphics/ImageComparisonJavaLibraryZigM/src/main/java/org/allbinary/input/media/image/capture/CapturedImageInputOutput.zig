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
// package org.allbinary.input.media.image.capture

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
const ImageUtil = @import("org/allbinary/media/image/ImageUtil.zig").ImageUtil;
const BufferedImageFrameCacheable = @import("org/allbinary/media/image/cache/BufferedImageFrameCacheable.zig").BufferedImageFrameCacheable;
const ImageIOInterface = @import("org/allbinary/media/image/io/ImageIOInterface.zig").ImageIOInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const CapturedBufferedImagesCacheSingleton = @import("org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton.zig").CapturedBufferedImagesCacheSingleton;
const Long = @import("java/lang/Long.zig").Long;

pub const CapturedImageInputOutput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.media.image.capture.CapturedImageInputOutput";
    logUtil: ?*LogUtil = null,
    // Implements ImageIOInterface

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
        const capturedBufferedImageCacheable: ?*BufferedImageFrameCacheable = Inheritance.upcast(?*BufferedImageFrameCacheable, (Inheritance.cast(?*BufferedImageFrameCacheable, Inheritance.call((Inheritance.cast(?*AutomaticCacheInterface, CapturedBufferedImagesCacheSingleton.getInstance())).?, "get", .{ frame }))));
        _ = Inheritance.call(self.logUtil.?, "putF", .{ (String.plus(String.literal("Saving: "), Object.toString(Object.of(capturedBufferedImageCacheable)))), self, commonStrings.?.SAVE });
        _ = Inheritance.call(self, "save", .{ capturedBufferedImageCacheable.?.getBufferedImage(), frame });
    }
    

    pub fn save2(self: *Self, bufferedImage: ?*BufferedImage, frame: ?*Long) void {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const imageUtil: ?*ImageUtil = Inheritance.upcast(?*ImageUtil, ImageUtil.getInstance());
        const filePathStringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(filePathStringBuffer.?, "append", .{ ImageOutputData.SAVE_PATH });
        _ = Inheritance.call(filePathStringBuffer.?, "append", .{ Inheritance.callStatic(LongUtil, "fillIn", .{ String.valueOf(frame.?) }) });
        _ = Inheritance.call(filePathStringBuffer.?, "append", .{ Inheritance.receiverOf(MediaDataFactory.getInstance().?.JPG.?, "getExtension").getExtension() });
        const filePath: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(filePathStringBuffer)));
        _ = Inheritance.call(self.logUtil.?, "putF", .{ (String.plus(String.plus(String.literal("Image File Path: "), filePath), Inheritance.call(imageUtil.?, "toString", .{ bufferedImage }))), self, commonStrings.?.SAVE });
        const imagePersistanceUtil: ?*ImagePersistanceUtil = Inheritance.upcast(?*ImagePersistanceUtil, ImagePersistanceUtil.getInstance());
        _ = Inheritance.call(imagePersistanceUtil.?, "saveWithImageIO", .{ filePath, bufferedImage });
    }
};

