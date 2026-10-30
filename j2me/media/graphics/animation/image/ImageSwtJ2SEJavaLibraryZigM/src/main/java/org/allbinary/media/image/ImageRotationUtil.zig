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
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const OpenGLESImage = @import("org/allbinary/image/opengles/OpenGLESImage.zig").OpenGLESImage;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const GC = @import("org/eclipse/swt/graphics/GC.zig").GC;
const SwtImmutableImage = @import("org/microemu/device/swt/SwtImmutableImage.zig").SwtImmutableImage;
const SwtMutableImage = @import("org/microemu/device/swt/SwtMutableImage.zig").SwtMutableImage;
const ImageSwtRotationUtil = @import("org/allbinary/media/image/ImageSwtRotationUtil.zig").ImageSwtRotationUtil;

pub const ImageRotationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageRotationUtil";
    imageSwtRotationUtil: ?*ImageSwtRotationUtil = null,
    features: ?*Features = null,
    var instance: ?*ImageRotationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageRotationUtil.create();
    }

    fn initFields(this: *Self) void {
        this.imageSwtRotationUtil = Inheritance.upcast(?*ImageSwtRotationUtil, ImageSwtRotationUtil.getInstance());
        this.features = Inheritance.upcast(?*Features, Features.getInstance());
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
        const originalImage2: ?*Image = originalImage;
        if (Inheritance.call(self.features.?, "isFeature", .{ OpenGLFeatureFactory.getInstance().?.OPENGL })) {
            if (image.?.getType() >= OpenGLESImage.TYPE) {
                const openGLESImage: ?*OpenGLESImage = Inheritance.upcast(?*OpenGLESImage, (Inheritance.cast(?*OpenGLESImage, image)));
                openGLESImage.?.openGLESImageProperties.?.angle = Inheritance.upcast(@TypeOf(openGLESImage.?.openGLESImageProperties.?.angle), totalAngle);
                return;
            } else {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.plus(String.plus(String.literal("OpenGL but image is: "), image), String.literal(" type: ")), image.?.getType()), self, String.literal("rotateImage") });
            }
        }
        const originalSwtImage: ?*Image = Inheritance.upcast(?*Image, (Inheritance.cast(?*Image, originalImage2.?.getImage())));
        var gc: ?*GC = null;
        var copySwtImage: ?*Image = null;
        if (image.?.isMutable()) {
            const swtImage: ?*SwtMutableImage = Inheritance.cast(?*SwtMutableImage, image);
            copySwtImage = Inheritance.cast(?*Image, swtImage.?.getImage());
            gc = Inheritance.upcast(@TypeOf(gc), swtImage.?.getGc());
            _ = Inheritance.call(self.imageSwtRotationUtil.?, "rotateImage", .{ originalSwtImage, copySwtImage, gc, totalAngle });
        } else {
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("No rotation for: "), Object.toString(Object.of(image))), self, String.literal("rotateImage") });
        }
    }
    

    // throws Exception
    pub fn createRotatedImage(self: *Self, originalImage: ?*Image, rotationInDegrees: i32) ?*Image {
        _ = rotationInDegrees;
        _ = self;
        return originalImage;
    }
};

