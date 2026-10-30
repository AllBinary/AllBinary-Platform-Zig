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
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const PlaynImage = @import("org/microemu/device/playn/PlaynImage.zig").PlaynImage;
const CoreImage = @import("playn/core/CoreImage.zig").CoreImage;

pub const ImageCompleteUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageCompleteUtil";
    ISREADY: ?*String = null,
    COMPLETE: ?*String = null,
    var instance: ?*ImageCompleteUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageCompleteUtil.create();
    }

    fn initFields(this: *Self) void {
        this.ISREADY = String.literal("isReady");
        this.COMPLETE = String.literal("Image loading complete for: ");
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
        _ = image;
        _ = name;
        _ = self;
    }
    

    // throws Exception
    pub fn isReady(self: *Self, image: ?*Image, name: ?*String, timeDelayHelper: ?*TimeDelayHelper) bool {
        _ = timeDelayHelper;
        const playnImage: ?*PlaynImage = Inheritance.cast(?*PlaynImage, image);
        const playnCoreImage: ?*CoreImage = Inheritance.cast(?*CoreImage, playnImage.?.getImage());
        if (!playnCoreImage.?.isReady() or playnCoreImage.?.width() + playnCoreImage.?.height() <= 0) {
            _ = Inheritance.call(self, "handleTimeout", .{ name });
            return false;
        }
        if (!image.?.isReady()) {
            _ = Inheritance.call(image.?, "init", .{ image.?.getImage() });
            if (!image.?.isReady()) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("Waiting for Not Ready Image: "), image.?.getName()), self, self.ISREADY });
            }
        }
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(self.COMPLETE, image.?.getName()), self, commonStrings.?.SUCCESS });
        return true;
    }
    

    // throws Exception
    pub fn handleTimeout(self: *Self, name: ?*String) void {
        _ = name;
        _ = self;
    }
    

    // throws Exception
    pub fn waitForAll(self: *Self) void {
        _ = self;
    }
};

