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
const ImageRotationUtil = @import("org/allbinary/media/image/ImageRotationUtil.zig").ImageRotationUtil;

pub const ImageToRotationImageArrayUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageToRotationImageArrayUtil";
    var instance: ?*ImageToRotationImageArrayUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageToRotationImageArrayUtil.create();
    }
    

    pub fn getInstance() ?*ImageToRotationImageArrayUtil {
        return Inheritance.upcast(?*ImageToRotationImageArrayUtil, ImageToRotationImageArrayUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn generate(self: *Self, image: ?*Image, angleIncrement: i32, totalAngle: i32) []?*Image {
        _ = self;
        const imageRotationUtil: ?*ImageRotationUtil = Inheritance.upcast(?*ImageRotationUtil, ImageRotationUtil.getInstance());
        const totalFrames: i32 = @divTrunc(totalAngle, angleIncrement);
        const imageArray: []?*Image = array_N65861: { const array_N65861_array = allocator.alloc(?*Image, @intCast(totalFrames)) catch unreachable; @memset(array_N65861_array, null); break :array_N65861 array_N65861_array; };
        imageArray[@intCast(0)] = Inheritance.upcast(@TypeOf(imageArray[@intCast(0)]), image);
        {
            var index: i32 = 1;
            while (index < totalFrames) : (index += 1) {
            imageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(imageArray[@intCast(index)]), Inheritance.call(imageRotationUtil.?, "createRotatedImage", .{ image, index * angleIncrement }));
            }
        }
        return imageArray;
    }
};

