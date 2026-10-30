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
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const ImageUtil = @import("org/allbinary/media/image/ImageUtil.zig").ImageUtil;

pub const ImagesRatioUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImagesRatioUtil";
    logUtil: ?*LogUtil = null,
    imageUtil: ?*ImageUtil = null,
    var instance: ?*ImagesRatioUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImagesRatioUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.imageUtil = Inheritance.upcast(?*ImageUtil, ImageUtil.getInstance());
    }
    

    pub fn getInstance() ?*ImagesRatioUtil {
        return Inheritance.upcast(?*ImagesRatioUtil, ImagesRatioUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn isEqual(self: *Self, bufferedImageArray: []?*BufferedImage, totalImages: i32) bool {
        _ = self;
        var end: i32 = totalImages;
        if (@as(i32, @intCast(bufferedImageArray.len)) < totalImages) {
            end = @as(i32, @intCast(bufferedImageArray.len));
        }
        const ratio: f64 = (@as(f64, @floatCast(bufferedImageArray[@intCast(0)].?.getWidth())) / bufferedImageArray[@intCast(0)].?.getHeight());
        {
            var index: i32 = 1;
            while (index < end) : (index += 1) {
            if (ratio != (@as(f64, @floatCast(bufferedImageArray[@intCast(index)].?.getWidth())) / bufferedImageArray[@intCast(index)].?.getHeight())) {
                return false;
            }
            }
        }
        return true;
    }
    

    pub fn getAverage(self: *Self, bufferedImageArray: []?*BufferedImage, totalImages: i32) f64 {
        _ = self;
        var ratio: f64 = 0.0;
        var end: i32 = totalImages;
        if (@as(i32, @intCast(bufferedImageArray.len)) < totalImages) {
            end = @as(i32, @intCast(bufferedImageArray.len));
        }
        {
            var index: i32 = 0;
            while (index < end) : (index += 1) {
            ratio += (@as(f64, @floatCast(bufferedImageArray[@intCast(index)].?.getWidth())) / bufferedImageArray[@intCast(index)].?.getHeight());
            }
        }
        return (ratio / @as(f64, @floatFromInt(end)));
    }
    

    // throws Exception
    pub fn fudge(self: *Self, bufferedImage: ?*BufferedImage, ratio: f64) ?*BufferedImage {
        const imageRatio: f64 = (@as(f64, @floatCast(bufferedImage.?.getWidth())) / bufferedImage.?.getHeight());
        const point: ?*Point = Point.create();
        var newHeight: i32 = bufferedImage.?.getHeight();
        var newWidth: i32 = bufferedImage.?.getWidth();
        if (ratio > imageRatio) {
            newWidth = @as(i32, @intFromFloat((@as(f64, @floatCast(bufferedImage.?.getHeight())) * ratio)));
            point.?.x = Inheritance.upcast(@TypeOf(point.?.x), (divide_N67236: { const left_N67236 = (newWidth - bufferedImage.?.getWidth()); const right_N67236 = 2; break :divide_N67236 if (comptime @typeInfo(@TypeOf(left_N67236)) == .int or @TypeOf(left_N67236) == comptime_int) @divTrunc(left_N67236, right_N67236) else left_N67236 / right_N67236; }));
        } else {
            newHeight = @as(i32, @intFromFloat((@as(f64, @floatCast(bufferedImage.?.getWidth())) / ratio)));
            point.?.y = Inheritance.upcast(@TypeOf(point.?.y), (divide_N67092: { const left_N67092 = (newHeight - bufferedImage.?.getHeight()); const right_N67092 = 2; break :divide_N67092 if (comptime @typeInfo(@TypeOf(left_N67092)) == .int or @TypeOf(left_N67092) == comptime_int) @divTrunc(left_N67092, right_N67092) else left_N67092 / right_N67092; }));
        }
        const commonLabels: ?*CommonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.plus(String.plus(String.plus(String.plus(String.plus(commonLabels.?.WIDTH_LABEL + bufferedImage.?.getWidth(), String.literal(" newWidth: ")), newWidth), commonLabels.?.HEIGHT_LABEL), bufferedImage.?.getHeight()), String.literal(" newHeight: ")), newHeight), String.literal(" needed ratio: ")), (@as(f64, @floatFromInt(newWidth)) / @as(f64, @floatFromInt(newHeight)))), self, String.literal("fudge") });
        const newBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(self.imageUtil.?, "create", .{ newWidth, newHeight }));
        const g: ?*Graphics2D = Inheritance.upcast(?*Graphics2D, newBufferedImage.?.createGraphics());
        if (point.?.x > 0) {
            const firstColumnBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(bufferedImage.?, "getSubimage", .{ 0, 0, 1, bufferedImage.?.getHeight() }));
            const lastColumnBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(bufferedImage.?, "getSubimage", .{ bufferedImage.?.getWidth() - 1, 0, 1, bufferedImage.?.getHeight() }));
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Draw some columns to fill in gap"), self, String.literal("fudge") });
            {
                var index: i32 = 0;
                while (index < point.?.x) : (index += 1) {
                _ = Inheritance.call(g.?, "drawImage", .{ firstColumnBufferedImage, index, 0, null });
                _ = Inheritance.call(g.?, "drawImage", .{ lastColumnBufferedImage, newWidth - index, 0, null });
                }
            }
        }
        if (point.?.y > 0) {
            const firstRowBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(bufferedImage.?, "getSubimage", .{ 0, 0, bufferedImage.?.getWidth(), 1 }));
            const lastRowBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(bufferedImage.?, "getSubimage", .{ 0, bufferedImage.?.getHeight() - 1, bufferedImage.?.getWidth(), 1 }));
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Draw some rows to fill in gap"), self, String.literal("fudge") });
            {
                var index: i32 = 0;
                while (index < point.?.y) : (index += 1) {
                _ = Inheritance.call(g.?, "drawImage", .{ firstRowBufferedImage, 0, index, null });
                _ = Inheritance.call(g.?, "drawImage", .{ lastRowBufferedImage, 0, newHeight - index, null });
                }
            }
        }
        _ = Inheritance.call(g.?, "drawImage", .{ bufferedImage, point.?.x, point.?.y, bufferedImage.?.getWidth(), bufferedImage.?.getHeight(), null });
        return newBufferedImage;
    }
    

    // throws Exception
    pub fn fudge3(self: *Self, bufferedImageArray: []?*BufferedImage, totalImages: i32, ratio: f64) []?*BufferedImage {
        var end: i32 = totalImages;
        if (@as(i32, @intCast(bufferedImageArray.len)) < totalImages) {
            end = @as(i32, @intCast(bufferedImageArray.len));
        }
        const fudgedBufferedImageArray: []?*BufferedImage = array_N68825: { const array_N68825_array = allocator.alloc(?*BufferedImage, @intCast(end)) catch unreachable; @memset(array_N68825_array, null); break :array_N68825 array_N68825_array; };
        {
            var index: i32 = 0;
            while (index < end) : (index += 1) {
            fudgedBufferedImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(fudgedBufferedImageArray[@intCast(index)]), Inheritance.call(self, "fudge", .{ bufferedImageArray[@intCast(index)], ratio }));
            }
        }
        return fudgedBufferedImageArray;
    }
};

