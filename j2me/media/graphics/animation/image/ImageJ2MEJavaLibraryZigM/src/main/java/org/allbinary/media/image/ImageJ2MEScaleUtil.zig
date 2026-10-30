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

pub const ImageJ2MEScaleUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageJ2MEScaleUtil";
    var instance: ?*ImageJ2MEScaleUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageJ2MEScaleUtil.create();
    }
    

    pub fn getInstance() ?*ImageJ2MEScaleUtil {
        return Inheritance.upcast(?*ImageJ2MEScaleUtil, ImageJ2MEScaleUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn scaleArray(self: *Self, images: []?*Image, width: i32, height: i32) []?*Image {
        const scaledImages: []?*Image = array_N65764: { const array_N65764_array = allocator.alloc(?*Image, @intCast(@as(i32, @intCast(images.len)))) catch unreachable; @memset(array_N65764_array, null); break :array_N65764 array_N65764_array; };
        {
            var index: i32 = @as(i32, @intCast(images.len));
            while (value_N65913: { index -= 1; break :value_N65913 index; } >= 0) {
            scaledImages[@intCast(index)] = Inheritance.upcast(@TypeOf(scaledImages[@intCast(index)]), Inheritance.call(self, "scale", .{ images[@intCast(index)], width, height }));
            }
        }
        return scaledImages;
    }
    

    // throws Exception
    pub fn scale(self: *Self, image: ?*Image, width: i32, height: i32) ?*Image {
        _ = self;
        const sourceWidth: i32 = image.?.getWidth();
        const sourceHeight: i32 = image.?.getHeight();
        const originalData: []i32 = array_N66210: { const array_N66210_array = allocator.alloc(i32, @intCast(image.?.getWidth() * image.?.getHeight())) catch unreachable; @memset(array_N66210_array, 0); break :array_N66210 array_N66210_array; };
        _ = Inheritance.call(image.?, "getRGB", .{ originalData, 0, image.?.getWidth(), 0, 0, image.?.getWidth(), image.?.getHeight() });
        const scaledData: []i32 = array_N66388: { const array_N66388_array = allocator.alloc(i32, @intCast(width * height)) catch unreachable; @memset(array_N66388_array, 0); break :array_N66388 array_N66388_array; };
        const heightRatioFactor: i32 = @divTrunc((8 * sourceHeight), height);
        const widthRatioFactor: i32 = @divTrunc((8 * sourceWidth), width);
        var scaledIndex: i32 = @as(i32, @intCast(scaledData.len)) - 1;
        var dx: i32 = 0;
        var dy: i32 = 0;
        {
            var index: i32 = height;
            while (value_N66926: { index -= 1; break :value_N66926 index; } >= 0) {
            dy = (index * heightRatioFactor) >> @intCast(3);
            {
                var index2: i32 = width;
                while (value_N66871: { index2 -= 1; break :value_N66871 index2; } >= 0) {
                dx = (index2 * widthRatioFactor) >> @intCast(3);
                scaledData[@intCast(value_N66791: { const value_N66791_value = scaledIndex; scaledIndex -= 1; break :value_N66791 value_N66791_value; })] = originalData[@intCast((sourceWidth * dy) + dx)];
                }
            }
            }
        }
        const scaledImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createRGBImage", .{ scaledData, width, height, true }));
        return scaledImage;
    }
};

