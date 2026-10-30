//
// AllBinary Open License Version 1
// Copyright (c) 2023 AllBinary
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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PlaynImmutableImage = @import("org/microemu/device/playn/PlaynImmutableImage.zig").PlaynImmutableImage;
const PlaynMutableImage = @import("org/microemu/device/playn/PlaynMutableImage.zig").PlaynMutableImage;
const CanvasImage = @import("playn/core/CanvasImage.zig").CanvasImage;
const CanvasSurface = @import("playn/core/CanvasSurface.zig").CanvasSurface;

pub const ImageJ2MEScaleUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageJ2MEScaleUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*ImageJ2MEScaleUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageJ2MEScaleUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*ImageJ2MEScaleUtil {
        return Inheritance.upcast(?*ImageJ2MEScaleUtil, ImageJ2MEScaleUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn scaleArray(self: *Self, images: []?*Image, width: i32, height: i32) []?*Image {
        const scaledImages: []?*Image = array_N65942: { const array_N65942_array = allocator.alloc(?*Image, @intCast(@as(i32, @intCast(images.len)))) catch unreachable; @memset(array_N65942_array, null); break :array_N65942 array_N65942_array; };
        {
            var index: i32 = @as(i32, @intCast(images.len));
            while (value_N66091: { index -= 1; break :value_N66091 index; } >= 0) {
            scaledImages[@intCast(index)] = Inheritance.upcast(@TypeOf(scaledImages[@intCast(index)]), Inheritance.call(self, "scale", .{ images[@intCast(index)], width, height }));
            }
        }
        return scaledImages;
    }
    

    // throws Exception
    pub fn scale(self: *Self, image: ?*Image, width: i32, height: i32) ?*Image {
        _ = self;
        var originalPlayNImage: ?*Image = null;
        if (image.?.isMutable()) {
            const originalHTMLImage: ?*PlaynMutableImage = Inheritance.cast(?*PlaynMutableImage, image);
            originalPlayNImage = Inheritance.cast(?*Image, originalHTMLImage.?.getImage());
        } else {
            const originalHTMLImage: ?*PlaynImmutableImage = Inheritance.cast(?*PlaynImmutableImage, image);
            originalPlayNImage = Inheritance.cast(?*Image, originalHTMLImage.?.getImage());
        }
        const scaledImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImage", .{ width, height }));
        const htmlImage: ?*PlaynMutableImage = Inheritance.cast(?*PlaynMutableImage, scaledImage);
        const canvasImage: ?*CanvasImage = Inheritance.cast(?*CanvasImage, htmlImage.?.getImage());
        const canvasSurface: ?*CanvasSurface = Inheritance.upcast(?*CanvasSurface, Inheritance.call(htmlImage.?, "getCanvasSurface", .{ canvasImage }));
        _ = Inheritance.call(canvasSurface.?, "drawImage", .{ originalPlayNImage, 0, 0, scaledImage.?.getWidth(), scaledImage.?.getHeight(), 0, 0, image.?.getWidth(), image.?.getHeight() });
        return scaledImage;
    }
};

