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
const GameFeatureImageCacheFactory = @import("org/allbinary/image/GameFeatureImageCacheFactory.zig").GameFeatureImageCacheFactory;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const HashtableUtil = @import("org/allbinary/util/HashtableUtil.zig").HashtableUtil;
const PlaynImage = @import("org/microemu/device/playn/PlaynImage.zig").PlaynImage;

pub const ImageCompleteUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageCompleteUtil";
    timeDelayHelper: ?*TimeDelayHelper = null,
    allTimeDelayHelper: ?*TimeDelayHelper = null,
    var instance: ?*ImageCompleteUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageCompleteUtil.create();
    }

    fn initFields(this: *Self) void {
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 18000 });
        this.allTimeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 120000 });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ImageCompleteUtil {
        return Inheritance.upcast(?*ImageCompleteUtil, ImageCompleteUtil.instance);
    }
    

    // throws Exception
    pub fn waitForImage(self: *Self, image: ?*Image, name: ?*String) void {
        _ = self.timeDelayHelper.?.setStartTime();
        _ = Inheritance.call(self, "waitForATime", .{ image, name, self.timeDelayHelper });
    }
    

    // throws Exception
    pub fn isReady(self: *Self, image: ?*Image, name: ?*String, timeDelayHelper: ?*TimeDelayHelper) bool {
        const playnImage: ?*PlaynImage = Inheritance.cast(?*PlaynImage, image);
        if (!Inheritance.receiverOf(playnImage.?.getImage().?, "isReady").isReady() and Inheritance.receiverOf(playnImage.?.getImage().?, "width").width() + Inheritance.receiverOf(playnImage.?.getImage().?, "height").height() == 0) {
            if (timeDelayHelper.?.isTime()) {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("isReady: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: "), name); break :exception error.Exception; }});
            }
            return false;
        }
        return true;
    }
    

    // throws Exception
    pub fn waitForATime(self: *Self, image: ?*Image, name: ?*String, timeDelayHelper: ?*TimeDelayHelper) void {
        const playnImage: ?*PlaynImage = Inheritance.cast(?*PlaynImage, image);
        while (!Inheritance.receiverOf(playnImage.?.getImage().?, "isReady").isReady() and Inheritance.receiverOf(playnImage.?.getImage().?, "width").width() + Inheritance.receiverOf(playnImage.?.getImage().?, "height").height() == 0) {
            if (timeDelayHelper.?.isTime()) {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("waitFor: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: "), name); break :exception error.Exception; }});
            }
        }
    }
    

    // throws Exception
    pub fn waitForAll(self: *Self) void {
        _ = self.allTimeDelayHelper.?.setStartTime();
        const hashtable: ?*Hashtable = Inheritance.upcast(?*Hashtable, Inheritance.receiverOf(GameFeatureImageCacheFactory.getInstance().?, "getHashtable").getHashtable());
        const objectArray: []?Object = Inheritance.call(HashtableUtil.getInstance().?, "getKeysAsArray", .{ hashtable });
        const size: i32 = @as(i32, @intCast(objectArray.len));
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("Total: "), size), self, String.literal("waitForAll") });
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(self, "waitForATime", .{ Inheritance.cast(?*Image, Inheritance.call(hashtable.?, "get", .{ objectArray[@intCast(index)] })), Inheritance.cast(?*String, objectArray[@intCast(index)]), self.allTimeDelayHelper });
            }
        }
    }
};

