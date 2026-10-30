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
// const Graphics2D = @import("java/awt/Graphics2D.zig").Graphics2D;
// const AffineTransform = @import("java/awt/geom/AffineTransform.zig").AffineTransform;
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const ImageCache = @import("org/allbinary/image/ImageCache.zig").ImageCache;
const ImageCreationUtil = @import("org/allbinary/media/image/ImageCreationUtil.zig").ImageCreationUtil;
const ImageJ2SEUtil = @import("org/allbinary/media/image/ImageJ2SEUtil.zig").ImageJ2SEUtil;
const ImageUtil = @import("org/allbinary/media/image/ImageUtil.zig").ImageUtil;

pub const ImageScaleUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageScaleUtil";
    imageUtil: ?*ImageUtil = null,
    imageJ2SEUtil: ?*ImageJ2SEUtil = null,
    imageCreationUtil: ?*ImageCreationUtil = null,
    var instance: ?*ImageScaleUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageScaleUtil.create();
    }

    fn initFields(this: *Self) void {
        this.imageUtil = Inheritance.upcast(?*ImageUtil, ImageUtil.getInstance());
        this.imageJ2SEUtil = Inheritance.upcast(?*ImageJ2SEUtil, ImageJ2SEUtil.getInstance());
        this.imageCreationUtil = Inheritance.upcast(?*ImageCreationUtil, ImageCreationUtil.getInstance());
    }
    

    pub fn getInstance() ?*ImageScaleUtil {
        return Inheritance.upcast(?*ImageScaleUtil, ImageScaleUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn createImage2(self: *Self, imageCache: ?*ImageCache, originalImage: ?*Image, scaleNominatorX: f32, scaleDenominatorX: f32, scaleNominatorY: f32, scaleDenominatorY: f32, cached: bool) ?*Image {
        return Inheritance.upcast(?*Image, Inheritance.call(self, "createImage3", .{ imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true }));
    }
    

    // throws Exception
    pub fn createImage3(self: *Self, imageCache: ?*ImageCache, originalImage: ?*Image, scaleNominatorX: f32, scaleDenominatorX: f32, scaleNominatorY: f32, scaleDenominatorY: f32, cached: bool, mutable: bool) ?*Image {
        _ = mutable;
        const width: i32 = originalImage.?.getWidth();
        const height: i32 = originalImage.?.getHeight();
        const scaleX: f32 = scaleNominatorX / scaleDenominatorX;
        const scaleY: f32 = scaleNominatorY / scaleDenominatorY;
        var image: ?*Image = null;
        if (cached) {
            image = Inheritance.upcast(@TypeOf(image), Inheritance.call(imageCache.?, "get", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name), @as(i32, @intFromFloat((@as(f32, @floatFromInt(width)) * scaleX))), @as(i32, @intFromFloat((@as(f32, @floatFromInt(height)) * scaleY))) }));
        } else {
            image = Inheritance.upcast(@TypeOf(image), Inheritance.call(imageCache.?, "get", .{ String.literal("createImage"), @as(i32, @intFromFloat((@as(f32, @floatFromInt(width)) * scaleX))), @as(i32, @intFromFloat((@as(f32, @floatFromInt(height)) * scaleY))) }));
        }
        _ = Inheritance.call(self, "scale", .{ originalImage, image, scaleX, scaleY, true });
        return image;
    }
    

    // throws Exception
    pub fn scale2(self: *Self, originalImage: ?*Image, originalImageArray: []?*Image, ximageToShowArray: []?*Image, unused: i32, scaleX: f32, scaleY: f32, maxScaleX: f32, maxScaleY: f32) void {
        _ = ximageToShowArray;
        _ = unused;
        if (maxScaleX * originalImage.?.getWidth() > originalImageArray[@intCast(0)].?.getWidth() or maxScaleY * originalImage.?.getHeight() > originalImageArray[@intCast(0)].?.getHeight()) {
            originalImageArray[@intCast(0)] = Inheritance.upcast(@TypeOf(originalImageArray[@intCast(0)]), Inheritance.call(self.imageCreationUtil.?, "createImage", .{ originalImage.?.getWidth(), originalImage.?.getHeight(), maxScaleX, maxScaleY }));
        }
        _ = Inheritance.call(self, "scale", .{ originalImage, originalImageArray[@intCast(0)], scaleX, scaleY, false });
    }
    

    pub fn scale(self: *Self, originalImage: ?*Image, newMaxSizeImage: ?*Image, scaleX: f32, scaleY: f32, clear: bool) void {
        const bufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(self.imageUtil.?, "getBufferedImage", .{ originalImage }));
        const newBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(self.imageUtil.?, "getBufferedImage", .{ newMaxSizeImage }));
        const at: ?*AffineTransform = Inheritance.upcast(?*AffineTransform, Inheritance.callStatic(AffineTransform, "getScaleInstance", .{ scaleX, scaleY }));
        const g: ?*Graphics2D = Inheritance.upcast(?*Graphics2D, newBufferedImage.?.createGraphics());
        if (clear) {
            _ = Inheritance.call(g.?, "setBackground", .{ self.imageJ2SEUtil.?.TRANSPARENT_COLOR });
            _ = Inheritance.call(g.?, "clearRect", .{ 0, 0, newBufferedImage.?.getWidth(), newBufferedImage.?.getHeight() });
        }
        _ = Inheritance.call(g.?, "drawRenderedImage", .{ bufferedImage, at });
        _ = g.?.dispose();
    }
};

