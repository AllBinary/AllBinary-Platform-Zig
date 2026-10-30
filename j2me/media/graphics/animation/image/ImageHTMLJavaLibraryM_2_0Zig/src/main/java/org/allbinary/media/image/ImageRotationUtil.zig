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
const Canvas = @import("playn/core/Canvas.zig").Canvas;
const CoreImage = @import("playn/core/CoreImage.zig").CoreImage;
const ImageImpl = @import("playn/core/ImageImpl.zig").ImageImpl;
const HTMLPlaynUtil = @import("playn/html/HTMLPlaynUtil.zig").HTMLPlaynUtil;
const ImageCreationUtil = @import("org/allbinary/media/image/ImageCreationUtil.zig").ImageCreationUtil;

pub const ImageRotationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageRotationUtil";
    playnUtil: ?*HTMLPlaynUtil = null,
    var instance: ?*ImageRotationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageRotationUtil.create();
    }

    fn initFields(this: *Self) void {
        this.playnUtil = Inheritance.upcast(?*HTMLPlaynUtil, HTMLPlaynUtil.getInstance());
    }
    

    pub fn getInstance() ?*ImageRotationUtil {
        return Inheritance.upcast(?*ImageRotationUtil, ImageRotationUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn rotateImage(self: *Self, originalImage: ?*Image, image: ?*Image, totalAngle: i32) ?*Image {
        if (image.?.isMutable()) {
            const htmlImage: ?*PlaynMutableImage = Inheritance.cast(?*PlaynMutableImage, image);
            const canvasImage: ?*ImageImpl = Inheritance.cast(?*ImageImpl, htmlImage.?.getImage());
            const canvas: ?*Canvas = Inheritance.upcast(?*Canvas, Inheritance.call(self.playnUtil.?, "getCanvas", .{ canvasImage }));
            _ = canvas.?.save();
            _ = canvas.?.clear();
            _ = Inheritance.call(canvas.?, "translate", .{ (divide_N66214: { const left_N66214 = originalImage.?.getWidth(); const right_N66214 = 2; break :divide_N66214 if (comptime @typeInfo(@TypeOf(left_N66214)) == .int or @TypeOf(left_N66214) == comptime_int) @divTrunc(left_N66214, right_N66214) else left_N66214 / right_N66214; }), (divide_N66239: { const left_N66239 = originalImage.?.getHeight(); const right_N66239 = 2; break :divide_N66239 if (comptime @typeInfo(@TypeOf(left_N66239)) == .int or @TypeOf(left_N66239) == comptime_int) @divTrunc(left_N66239, right_N66239) else left_N66239 / right_N66239; }) });
            const image2: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self, "rotateImageCanvasSurface", .{ originalImage, image, canvas, totalAngle }));
            _ = Inheritance.call(self, "drawImage", .{ originalImage, image, canvas });
            _ = canvas.?.restore();
            return image2;
        } else {
            return null;
        }
    }
    

    pub fn rotateImageCanvasSurfaceClear(self: *Self, originalImage: ?*Image, image: ?*Image, canvasSurface: ?*Canvas, totalAngle: i32) ?*Image {
        if (image.?.isMutable()) {
            _ = Inheritance.call(canvasSurface.?, "translate", .{ (divide_N66583: { const left_N66583 = -originalImage.?.getWidth(); const right_N66583 = 2; break :divide_N66583 if (comptime @typeInfo(@TypeOf(left_N66583)) == .int or @TypeOf(left_N66583) == comptime_int) @divTrunc(left_N66583, right_N66583) else left_N66583 / right_N66583; }), (divide_N66613: { const left_N66613 = -originalImage.?.getHeight(); const right_N66613 = 2; break :divide_N66613 if (comptime @typeInfo(@TypeOf(left_N66613)) == .int or @TypeOf(left_N66613) == comptime_int) @divTrunc(left_N66613, right_N66613) else left_N66613 / right_N66613; }) });
            _ = canvasSurface.?.clear();
            _ = Inheritance.call(canvasSurface.?, "translate", .{ (divide_N66686: { const left_N66686 = originalImage.?.getWidth(); const right_N66686 = 2; break :divide_N66686 if (comptime @typeInfo(@TypeOf(left_N66686)) == .int or @TypeOf(left_N66686) == comptime_int) @divTrunc(left_N66686, right_N66686) else left_N66686 / right_N66686; }), (divide_N66711: { const left_N66711 = originalImage.?.getHeight(); const right_N66711 = 2; break :divide_N66711 if (comptime @typeInfo(@TypeOf(left_N66711)) == .int or @TypeOf(left_N66711) == comptime_int) @divTrunc(left_N66711, right_N66711) else left_N66711 / right_N66711; }) });
            return Inheritance.upcast(?*Image, Inheritance.call(self, "rotateImageCanvasSurface", .{ originalImage, image, canvasSurface, totalAngle }));
        } else {
            return null;
        }
    }
    

    pub fn rotateImageCanvasSurface(self: *Self, originalImage: ?*Image, image: ?*Image, canvasSurface: ?*Canvas, totalAngle: i32) ?*Image {
        _ = originalImage;
        _ = self;
        if (image.?.isMutable()) {
            _ = Inheritance.call(canvasSurface.?, "rotate", .{ @as(f32, @floatCast(std.math.degreesToRadians(totalAngle))) });
            return image;
        } else {
            return null;
        }
    }
    

    pub fn drawImage(self: *Self, originalImage: ?*Image, image: ?*Image, canvasSurface: ?*Canvas) void {
        _ = image;
        _ = self;
        var originalPlayNImage: ?*CoreImage = null;
        if (originalImage.?.isMutable()) {
            const originalHTMLImage: ?*PlaynMutableImage = Inheritance.cast(?*PlaynMutableImage, originalImage);
            originalPlayNImage = Inheritance.cast(?*CoreImage, originalHTMLImage.?.getImage());
        } else {
            const originalHTMLImage: ?*PlaynImmutableImage = Inheritance.cast(?*PlaynImmutableImage, originalImage);
            originalPlayNImage = Inheritance.cast(?*CoreImage, originalHTMLImage.?.getImage());
        }
        _ = Inheritance.call(canvasSurface.?, "draw", .{ originalPlayNImage, (divide_N67451: { const left_N67451 = -originalImage.?.getWidth(); const right_N67451 = 2; break :divide_N67451 if (comptime @typeInfo(@TypeOf(left_N67451)) == .int or @TypeOf(left_N67451) == comptime_int) @divTrunc(left_N67451, right_N67451) else left_N67451 / right_N67451; }), (divide_N67481: { const left_N67481 = -originalImage.?.getHeight(); const right_N67481 = 2; break :divide_N67481 if (comptime @typeInfo(@TypeOf(left_N67481)) == .int or @TypeOf(left_N67481) == comptime_int) @divTrunc(left_N67481, right_N67481) else left_N67481 / right_N67481; }) });
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

