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
const ImageCache = @import("org/allbinary/image/ImageCache.zig").ImageCache;
const PlaynImmutableImage = @import("org/microemu/device/playn/PlaynImmutableImage.zig").PlaynImmutableImage;
const PlaynMutableImage = @import("org/microemu/device/playn/PlaynMutableImage.zig").PlaynMutableImage;
const Canvas = @import("playn/core/Canvas.zig").Canvas;
const CoreImage = @import("playn/core/CoreImage.zig").CoreImage;
const ImageImpl = @import("playn/core/ImageImpl.zig").ImageImpl;
const HTMLPlaynUtil = @import("playn/html/HTMLPlaynUtil.zig").HTMLPlaynUtil;
const ImageCreationUtil = @import("org/allbinary/media/image/ImageCreationUtil.zig").ImageCreationUtil;

pub const ImageScaleUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageScaleUtil";
    playnUtil: ?*HTMLPlaynUtil = null,
    var instance: ?*ImageScaleUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageScaleUtil.create();
    }

    fn initFields(this: *Self) void {
        this.playnUtil = Inheritance.upcast(?*HTMLPlaynUtil, HTMLPlaynUtil.getInstance());
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
        const scaleX: f32 = scaleNominatorX / scaleDenominatorX;
        const scaleY: f32 = scaleNominatorY / scaleDenominatorY;
        return Inheritance.upcast(?*Image, Inheritance.call(self, "createImage", .{ imageCache, originalImage, scaleX, scaleY, cached }));
    }
    

    // throws Exception
    pub fn createImage(self: *Self, imageCache: ?*ImageCache, originalImage: ?*Image, scaleX: f32, scaleY: f32, cached: bool) ?*Image {
        _ = imageCache;
        _ = cached;
        return Inheritance.upcast(?*Image, Inheritance.call(self, "createImageInternal", .{ originalImage, scaleX, scaleY }));
    }
    

    // throws Exception
    pub fn createImageInternal(self: *Self, originalImage: ?*Image, scaleX: f32, scaleY: f32) ?*Image {
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(ImageCreationUtil.getInstance().?, "createImageWH", .{ @as(i32, @intCast((originalImage.?.getWidth() * scaleX))), @as(i32, @intCast((originalImage.?.getHeight() * scaleY))) }));
        if (image.?.isMutable()) {
            var originalPlayNImage: ?*CoreImage = null;
            if (originalImage.?.isMutable()) {
                const originalHTMLImage: ?*PlaynMutableImage = Inheritance.cast(?*PlaynMutableImage, originalImage);
                originalPlayNImage = Inheritance.cast(?*CoreImage, originalHTMLImage.?.getImage());
            } else {
                const originalHTMLImage: ?*PlaynImmutableImage = Inheritance.cast(?*PlaynImmutableImage, originalImage);
                originalPlayNImage = Inheritance.cast(?*CoreImage, originalHTMLImage.?.getImage());
            }
            const htmlImage: ?*PlaynMutableImage = Inheritance.cast(?*PlaynMutableImage, image);
            const canvasImage: ?*ImageImpl = Inheritance.cast(?*ImageImpl, htmlImage.?.getImage());
            const canvas: ?*Canvas = Inheritance.upcast(?*Canvas, Inheritance.call(self.playnUtil.?, "getCanvas", .{ canvasImage }));
            _ = Inheritance.call(canvas.?, "drawScale", .{ originalPlayNImage, 0, 0, image.?.getWidth(), image.?.getHeight(), 0, 0, originalImage.?.getWidth(), originalImage.?.getHeight() });
            return image;
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not Mutable"); break :exception error.Exception; }});
        }
    }
};

