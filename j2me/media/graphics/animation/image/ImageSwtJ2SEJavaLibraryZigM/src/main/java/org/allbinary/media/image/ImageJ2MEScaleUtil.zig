// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
const ImageCopyUtil = @import("org/allbinary/media/image/ImageCopyUtil.zig").ImageCopyUtil;

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
        const scaledImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(ImageCopyUtil.getInstance().?, "createImageWH", .{ image, width, height, true }));
        return scaledImage;
    }
};

