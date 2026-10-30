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
const PlaynImmutableImage = @import("org/microemu/device/playn/PlaynImmutableImage.zig").PlaynImmutableImage;
const PlaynMutableImage = @import("org/microemu/device/playn/PlaynMutableImage.zig").PlaynMutableImage;
const CanvasImage = @import("playn/core/CanvasImage.zig").CanvasImage;
const CanvasSurface = @import("playn/core/CanvasSurface.zig").CanvasSurface;
const ImageCreationUtil = @import("org/allbinary/media/image/ImageCreationUtil.zig").ImageCreationUtil;

pub const ImageRotationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageRotationUtil";
    var instance: ?*ImageRotationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageRotationUtil.create();
    }
    

    pub fn getInstance() ?*ImageRotationUtil {
        return Inheritance.upcast(?*ImageRotationUtil, ImageRotationUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn rotateImage(self: *Self, originalImage: ?*Image, image: ?*Image, totalAngle: i32) ?*Image {
        if (image.?.isMutable()) {
            const htmlImage: ?*PlaynMutableImage = Inheritance.cast(?*PlaynMutableImage, image);
            const canvasImage: ?*CanvasImage = Inheritance.cast(?*CanvasImage, htmlImage.?.getImage());
            const canvasSurface: ?*CanvasSurface = Inheritance.upcast(?*CanvasSurface, Inheritance.call(htmlImage.?, "getCanvasSurface", .{ canvasImage }));
            _ = Inheritance.call(canvasSurface.?, "translate", .{ (divide_N66077: { const left_N66077 = originalImage.?.getWidth(); const right_N66077 = 2; break :divide_N66077 if (comptime @typeInfo(@TypeOf(left_N66077)) == .int or @TypeOf(left_N66077) == comptime_int) @divTrunc(left_N66077, right_N66077) else left_N66077 / right_N66077; }), (divide_N66102: { const left_N66102 = originalImage.?.getHeight(); const right_N66102 = 2; break :divide_N66102 if (comptime @typeInfo(@TypeOf(left_N66102)) == .int or @TypeOf(left_N66102) == comptime_int) @divTrunc(left_N66102, right_N66102) else left_N66102 / right_N66102; }) });
            const image2: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self, "rotateImageCanvasSurface", .{ originalImage, image, canvasSurface, totalAngle }));
            _ = Inheritance.call(self, "drawImage", .{ originalImage, image, canvasSurface });
            return image2;
        } else {
            return null;
        }
    }
    

    pub fn rotateImageCanvasSurfaceClear(self: *Self, originalImage: ?*Image, image: ?*Image, canvasSurface: ?*CanvasSurface, totalAngle: i32) ?*Image {
        if (image.?.isMutable()) {
            _ = Inheritance.call(canvasSurface.?, "translate", .{ (divide_N66426: { const left_N66426 = -originalImage.?.getWidth(); const right_N66426 = 2; break :divide_N66426 if (comptime @typeInfo(@TypeOf(left_N66426)) == .int or @TypeOf(left_N66426) == comptime_int) @divTrunc(left_N66426, right_N66426) else left_N66426 / right_N66426; }), (divide_N66456: { const left_N66456 = -originalImage.?.getHeight(); const right_N66456 = 2; break :divide_N66456 if (comptime @typeInfo(@TypeOf(left_N66456)) == .int or @TypeOf(left_N66456) == comptime_int) @divTrunc(left_N66456, right_N66456) else left_N66456 / right_N66456; }) });
            _ = canvasSurface.?.clear();
            _ = Inheritance.call(canvasSurface.?, "translate", .{ (divide_N66529: { const left_N66529 = originalImage.?.getWidth(); const right_N66529 = 2; break :divide_N66529 if (comptime @typeInfo(@TypeOf(left_N66529)) == .int or @TypeOf(left_N66529) == comptime_int) @divTrunc(left_N66529, right_N66529) else left_N66529 / right_N66529; }), (divide_N66554: { const left_N66554 = originalImage.?.getHeight(); const right_N66554 = 2; break :divide_N66554 if (comptime @typeInfo(@TypeOf(left_N66554)) == .int or @TypeOf(left_N66554) == comptime_int) @divTrunc(left_N66554, right_N66554) else left_N66554 / right_N66554; }) });
            return Inheritance.upcast(?*Image, Inheritance.call(self, "rotateImageCanvasSurface", .{ originalImage, image, canvasSurface, totalAngle }));
        } else {
            return null;
        }
    }
    

    pub fn rotateImageCanvasSurface(self: *Self, originalImage: ?*Image, image: ?*Image, canvasSurface: ?*CanvasSurface, totalAngle: i32) ?*Image {
        _ = originalImage;
        _ = self;
        if (image.?.isMutable()) {
            _ = Inheritance.call(canvasSurface.?, "rotate", .{ @as(f32, @floatCast(std.math.degreesToRadians(totalAngle))) });
            return image;
        } else {
            return null;
        }
    }
    

    pub fn drawImage(self: *Self, originalImage: ?*Image, image: ?*Image, canvasSurface: ?*CanvasSurface) void {
        _ = image;
        _ = self;
        var originalPlayNImage: ?*Image = null;
        if (originalImage.?.isMutable()) {
            const originalHTMLImage: ?*PlaynMutableImage = Inheritance.cast(?*PlaynMutableImage, originalImage);
            originalPlayNImage = Inheritance.cast(?*Image, originalHTMLImage.?.getImage());
        } else {
            const originalHTMLImage: ?*PlaynImmutableImage = Inheritance.cast(?*PlaynImmutableImage, originalImage);
            originalPlayNImage = Inheritance.cast(?*Image, originalHTMLImage.?.getImage());
        }
        _ = Inheritance.call(canvasSurface.?, "drawImage", .{ originalPlayNImage, (divide_N67342: { const left_N67342 = -originalImage.?.getWidth(); const right_N67342 = 2; break :divide_N67342 if (comptime @typeInfo(@TypeOf(left_N67342)) == .int or @TypeOf(left_N67342) == comptime_int) @divTrunc(left_N67342, right_N67342) else left_N67342 / right_N67342; }), (divide_N67372: { const left_N67372 = -originalImage.?.getHeight(); const right_N67372 = 2; break :divide_N67372 if (comptime @typeInfo(@TypeOf(left_N67372)) == .int or @TypeOf(left_N67372) == comptime_int) @divTrunc(left_N67372, right_N67372) else left_N67372 / right_N67372; }) });
    }
    

    // throws Exception
    pub fn createRotatedImage(self: *Self, originalImage: ?*Image, rotationInDegrees: i32) ?*Image {
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(ImageCreationUtil.getInstance().?, "createImageWH", .{ originalImage.?.getWidth(), originalImage.?.getHeight() }));
        const rotatedImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self, "rotateImage", .{ originalImage, image, rotationInDegrees }));
        if (rotatedImage == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not Mutable"); break :exception error.Exception; }});
        }
        return rotatedImage;
    }
};

