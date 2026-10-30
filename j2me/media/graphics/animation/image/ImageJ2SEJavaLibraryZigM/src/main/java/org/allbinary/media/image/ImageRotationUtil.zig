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
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const J2SEImmutableImage = @import("org/microemu/device/j2se/J2SEImmutableImage.zig").J2SEImmutableImage;
const J2SEMutableImage = @import("org/microemu/device/j2se/J2SEMutableImage.zig").J2SEMutableImage;
const ImageCreationUtil = @import("org/allbinary/media/image/ImageCreationUtil.zig").ImageCreationUtil;
const ImageJ2SERotationUtil = @import("org/allbinary/media/image/ImageJ2SERotationUtil.zig").ImageJ2SERotationUtil;

pub const ImageRotationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageRotationUtil";
    imageJ2SERotationUtil: ?*ImageJ2SERotationUtil = null,
    var instance: ?*ImageRotationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageRotationUtil.create();
    }

    fn initFields(this: *Self) void {
        this.imageJ2SERotationUtil = Inheritance.upcast(?*ImageJ2SERotationUtil, ImageJ2SERotationUtil.getInstance());
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
    

    pub fn rotateImage(self: *Self, originalImage: ?*Image, image: ?*Image, totalAngle: i32) void {
        if (image.?.isMutable()) {
            const j2seImage: ?*J2SEMutableImage = Inheritance.cast(?*J2SEMutableImage, image);
            const newBufferedImage: ?*BufferedImage = Inheritance.cast(?*BufferedImage, j2seImage.?.getImage());
            var originalAwtImage: ?*Image = null;
            if (originalImage.?.isMutable()) {
                const originalJ2SEImage: ?*J2SEMutableImage = Inheritance.cast(?*J2SEMutableImage, originalImage);
                originalAwtImage = Inheritance.cast(?*Image, originalJ2SEImage.?.getImage());
            } else {
                const originalJ2SEImage: ?*J2SEImmutableImage = Inheritance.cast(?*J2SEImmutableImage, originalImage);
                originalAwtImage = Inheritance.cast(?*Image, originalJ2SEImage.?.getImage());
            }
            _ = Inheritance.call(self.imageJ2SERotationUtil.?, "rotateImage", .{ originalAwtImage, newBufferedImage, totalAngle });
        } else {
            _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("Not Mutable"), self, String.literal("getRotatedImage"), error.Exception });
        }
    }
    

    // throws Exception
    pub fn createRotatedImage(self: *Self, originalImage: ?*Image, rotationInDegrees: i32) ?*Image {
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(ImageCreationUtil.getInstance().?, "createImageWH", .{ originalImage.?.getWidth(), originalImage.?.getHeight() }));
        if (image.?.isMutable()) {
            var originalAwtImage: ?*Image = null;
            if (originalImage.?.isMutable()) {
                const originalJ2SEImage: ?*J2SEMutableImage = Inheritance.cast(?*J2SEMutableImage, originalImage);
                originalAwtImage = Inheritance.cast(?*Image, originalJ2SEImage.?.getImage());
            } else {
                const originalJ2SEImage: ?*J2SEImmutableImage = Inheritance.cast(?*J2SEImmutableImage, originalImage);
                originalAwtImage = Inheritance.cast(?*Image, originalJ2SEImage.?.getImage());
            }
            const j2seImage: ?*J2SEMutableImage = Inheritance.cast(?*J2SEMutableImage, image);
            const newBufferedImage: ?*BufferedImage = Inheritance.cast(?*BufferedImage, j2seImage.?.getImage());
            const bufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(self.imageJ2SERotationUtil.?, "createRotatedImage", .{ originalAwtImage, newBufferedImage, rotationInDegrees })); _ = bufferedImage;
            return image;
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not Mutable"); break :exception error.Exception; }});
        }
    }
};

