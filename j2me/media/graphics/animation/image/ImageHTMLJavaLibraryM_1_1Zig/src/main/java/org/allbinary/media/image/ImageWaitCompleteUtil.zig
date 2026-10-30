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
const GameFeatureImageCacheFactory = @import("org/allbinary/image/GameFeatureImageCacheFactory.zig").GameFeatureImageCacheFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const HashtableUtil = @import("org/allbinary/util/HashtableUtil.zig").HashtableUtil;
const PlaynImage = @import("org/microemu/device/playn/PlaynImage.zig").PlaynImage;
const ImageCompleteUtil = @import("org/allbinary/media/image/ImageCompleteUtil.zig").ImageCompleteUtil;

pub const ImageWaitCompleteUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageWaitCompleteUtil";
    base: ImageCompleteUtil = undefined,
    logUtil: ?*LogUtil = null,
    timeDelayHelper: ?*TimeDelayHelper = null,
    allTimeDelayHelper: ?*TimeDelayHelper = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 18000 });
        this.allTimeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 120000 });
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ImageCompleteUtil.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn waitForImage(self: *Self, image: ?*Image, name: ?*String) void {
        _ = self.timeDelayHelper.?.setStartTimeTNT();
        _ = Inheritance.call(self, "waitForATime", .{ image, name, self.timeDelayHelper });
    }
    

    // throws Exception
    pub fn handleTimeout(self: *Self, name: ?*String) void {
        if (self.timeDelayHelper.?.isTimeTNT()) {
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("isReady: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: "), name); break :exception error.Exception; }});
        }
    }
    

    // throws Exception
    pub fn waitForATime(self: *Self, image: ?*Image, name: ?*String, timeDelayHelper: ?*TimeDelayHelper) void {
        const playnImage: ?*PlaynImage = Inheritance.cast(?*PlaynImage, image);
        const playnCoreImage: ?*Image = Inheritance.cast(?*Image, playnImage.?.getImage());
        while (!playnCoreImage.?.isReady() or playnCoreImage.?.width() + playnCoreImage.?.height() <= 0) {
            if (timeDelayHelper.?.isTimeTNT()) {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("waitFor: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: "), name); break :exception error.Exception; }});
            }
        }
        if (!image.?.isReady()) {
            _ = Inheritance.call(image.?, "init", .{ image.?.getImage() });
        }
    }
    

    // throws Exception
    pub fn waitForAll(self: *Self) void {
        _ = self.allTimeDelayHelper.?.setStartTimeTNT();
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(GameFeatureImageCacheFactory.getInstance().?, "getHashtableP").getHashtableP());
        const objectArray: []?Object = Inheritance.call(HashtableUtil.getInstance().?, "getKeysAsArray", .{ hashtable });
        const size: i32 = @as(i32, @intCast(objectArray.len));
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("Image Total: "), size), self, String.literal("waitForAll") });
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(self, "waitForATime", .{ Inheritance.cast(?*Image, Inheritance.call(hashtable.?, "get", .{ objectArray[@intCast(index)] })), Inheritance.cast(?*String, objectArray[@intCast(index)]), self.allTimeDelayHelper });
            }
        }
    }
};

