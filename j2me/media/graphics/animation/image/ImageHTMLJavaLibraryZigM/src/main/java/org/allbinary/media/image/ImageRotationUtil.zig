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
    

    // throws Exception
    pub fn createRotatedImage(self: *Self, originalImage: ?*Image, rotationInDegrees: i32) ?*Image {
        _ = self;
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(ImageCreationUtil.getInstance().?, "getInstance", .{ originalImage.?.getWidth(), originalImage.?.getHeight() }));
        if (image.?.isMutable()) {
            var originalPlayNImage: ?*Image = null;
            if (originalImage.?.isMutable()) {
                const originalHTMLImage: ?*PlaynMutableImage = Inheritance.cast(?*PlaynMutableImage, originalImage);
                originalPlayNImage = Inheritance.cast(?*Image, originalHTMLImage.?.getImage());
            } else {
                const originalHTMLImage: ?*PlaynImmutableImage = Inheritance.cast(?*PlaynImmutableImage, originalImage);
                originalPlayNImage = Inheritance.cast(?*Image, originalHTMLImage.?.getImage());
            }
            const htmlImage: ?*PlaynMutableImage = Inheritance.cast(?*PlaynMutableImage, image);
            const canvasImage: ?*CanvasImage = Inheritance.cast(?*CanvasImage, htmlImage.?.getImage());
            const canvasSurface: ?*CanvasSurface = Inheritance.upcast(?*CanvasSurface, Inheritance.call(htmlImage.?, "getCanvasSurface", .{ canvasImage }));
            _ = Inheritance.call(canvasSurface.?, "translate", .{ (divide_N66508: { const left_N66508 = originalPlayNImage.?.width(); const right_N66508 = 2; break :divide_N66508 if (comptime @typeInfo(@TypeOf(left_N66508)) == .int or @TypeOf(left_N66508) == comptime_int) @divTrunc(left_N66508, right_N66508) else left_N66508 / right_N66508; }), (divide_N66533: { const left_N66533 = originalPlayNImage.?.height(); const right_N66533 = 2; break :divide_N66533 if (comptime @typeInfo(@TypeOf(left_N66533)) == .int or @TypeOf(left_N66533) == comptime_int) @divTrunc(left_N66533, right_N66533) else left_N66533 / right_N66533; }) });
            _ = Inheritance.call(canvasSurface.?, "rotate", .{ @as(f32, @floatCast(std.math.degreesToRadians(rotationInDegrees))) });
            _ = Inheritance.call(canvasSurface.?, "drawImage", .{ originalPlayNImage, (divide_N66647: { const left_N66647 = -originalPlayNImage.?.width(); const right_N66647 = 2; break :divide_N66647 if (comptime @typeInfo(@TypeOf(left_N66647)) == .int or @TypeOf(left_N66647) == comptime_int) @divTrunc(left_N66647, right_N66647) else left_N66647 / right_N66647; }), (divide_N66677: { const left_N66677 = -originalPlayNImage.?.height(); const right_N66677 = 2; break :divide_N66677 if (comptime @typeInfo(@TypeOf(left_N66677)) == .int or @TypeOf(left_N66677) == comptime_int) @divTrunc(left_N66677, right_N66677) else left_N66677 / right_N66677; }) });
            return image;
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not Mutable"); break :exception error.Exception; }});
        }
    }
};

