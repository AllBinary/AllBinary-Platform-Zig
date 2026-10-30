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
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const ImageUtil = @import("org/allbinary/media/image/ImageUtil.zig").ImageUtil;
const PixelDelta = @import("org/allbinary/media/image/comparison/pixel/PixelDelta.zig").PixelDelta;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Long = @import("java/lang/Long.zig").Long;

pub const ImageComparisonResult = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.ImageComparisonResult";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    bufferedImages: []?*BufferedImage = &.{},
    name: ?*String = null,
    isSameHeight: bool = false,
    isSameWidth: bool = false,
    imageHeight: i32 = 0,
    imageWidth: i32 = 0,
    nonMatchingPixelVector: ?*BasicArrayList = null,
    frameOne: ?*Long = null,
    frameTwo: ?*Long = null,
    pixelsThatMatch: i32 = 0,
    pixelsIgnored: i32 = 0,
    tolerance: i32 = 0,
    matchingPercent: f32 = 0.0,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.bufferedImages = array_N65967: { const array_N65967_array = allocator.alloc(?*BufferedImage, @intCast(2)) catch unreachable; @memset(array_N65967_array, null); break :array_N65967 array_N65967_array; };
        
        this.isSameHeight = false;
        this.isSameWidth = false;
        
        
        
        
        
        this.pixelsThatMatch = 0;
        this.pixelsIgnored = 0;
        this.tolerance = 0;
        this.matchingPercent = @as(f32, @floatFromInt(-1));
    }
    

    pub fn create6(name: ?*String, bufferedImage: ?*BufferedImage, bufferedImage2: ?*BufferedImage, frameOne: ?*Long, frameTwo: ?*Long, tolerance: i32) *Self {
        _ = tolerance;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        this.nonMatchingPixelVector = Inheritance.upcast(@TypeOf(this.nonMatchingPixelVector), BasicArrayListD.create());
        this.bufferedImages[@intCast(0)] = Inheritance.upcast(@TypeOf(this.bufferedImages[@intCast(0)]), bufferedImage);
        this.bufferedImages[@intCast(1)] = Inheritance.upcast(@TypeOf(this.bufferedImages[@intCast(1)]), bufferedImage2);
        this.frameOne = frameOne;
        this.frameTwo = frameTwo;
        _ = Inheritance.call(this, "setTolerance", .{ 0 });
        var imageHeight: i32 = bufferedImage.?.getHeight();
        var imageWidth: i32 = bufferedImage.?.getWidth();
        if (!Object.same(bufferedImage.?.getHeight(), bufferedImage2.?.getHeight())) {
            this.isSameHeight = false;
            if (imageHeight > bufferedImage2.?.getHeight()) {
                imageHeight = bufferedImage2.?.getHeight();
            }
        } else {
            this.isSameHeight = true;
        }
        if (!Object.same(bufferedImage.?.getWidth(), bufferedImage2.?.getWidth())) {
            this.isSameWidth = false;
            if (imageWidth > bufferedImage2.?.getWidth()) {
                imageWidth = bufferedImage2.?.getWidth();
            }
        } else {
            this.isSameWidth = true;
        }
        this.imageWidth = imageWidth;
        this.imageHeight = imageHeight;
        if (!this.isSameWidth or !this.isSameHeight) {
            const imageUtil: ?*ImageUtil = Inheritance.upcast(?*ImageUtil, ImageUtil.getInstance());
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.literal("Images were not the same size? Most likely a resolution change."), this, this.commonStrings.?.CONSTRUCTOR });
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("1: "), Inheritance.call(imageUtil.?, "toString", .{ bufferedImage })), this, this.commonStrings.?.CONSTRUCTOR });
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("2: "), Inheritance.call(imageUtil.?, "toString", .{ bufferedImage2 })), this, this.commonStrings.?.CONSTRUCTOR });
        }
        return this;
    }
    

    pub fn getMatchingPercent(self: *Self) f32 {
        if (self.matchingPercent == @as(f32, @floatFromInt(-1))) {
            self.matchingPercent = @as(f32, @floatFromInt(self.pixelsThatMatch)) / @as(f32, @floatFromInt((self.imageWidth * self.imageHeight)));
        }
        return self.matchingPercent;
    }
    

    pub fn add(self: *Self, pixel: ?*PixelDelta) void {
        _ = Inheritance.call(self.nonMatchingPixelVector.?, "add", .{ pixel });
    }
    

    pub fn getNonMatchingPixelVector(self: *Self) ?*BasicArrayList {
        return self.nonMatchingPixelVector;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("ImageComparisonInfo: ") }).?, "append", .{ self.name }).?, "append", .{ String.literal(" Number Of Matching Pixels: ") }).?, "appendint", .{ self.pixelsThatMatch }).?, "append", .{ String.literal("\nNumber Of Non-Matching Pixels: ") }).?, "appendint", .{ Inheritance.receiverOf(self.getNonMatchingPixelVector().?, "size").size() }).?, "append", .{ String.literal("\nNumber Of Pixels Ignored: ") }).?, "appendint", .{ self.pixelsIgnored }).?, "append", .{ String.literal("\nMatching Percentage: ") }).?, "appendfloat", .{ self.getMatchingPercent() }))));
    }
    

    pub fn getBufferedImages(self: *Self) []?*BufferedImage {
        return self.bufferedImages;
    }
    

    pub fn getTolerance(self: *Self) i32 {
        return self.tolerance;
    }
    

    pub fn setTolerance(self: *Self, tolerance: i32) void {
        self.tolerance = tolerance;
    }
    

    pub fn getFrameOne(self: *Self) ?*Long {
        return self.frameOne;
    }
    

    pub fn getFrameTwo(self: *Self) ?*Long {
        return self.frameTwo;
    }
};

