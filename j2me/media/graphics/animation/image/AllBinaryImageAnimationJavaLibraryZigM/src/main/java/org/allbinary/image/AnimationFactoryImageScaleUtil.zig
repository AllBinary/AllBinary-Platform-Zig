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
// package org.allbinary.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const AnimationFactoryInitializationVisitor = @import("org/allbinary/animation/image/AnimationFactoryInitializationVisitor.zig").AnimationFactoryInitializationVisitor;
const BaseImageAnimationFactory = @import("org/allbinary/animation/image/BaseImageAnimationFactory.zig").BaseImageAnimationFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const ImageJ2MEScaleUtil = @import("org/allbinary/media/image/ImageJ2MEScaleUtil.zig").ImageJ2MEScaleUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const AnimationFactoryImageScaleUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.AnimationFactoryImageScaleUtil";
    imageScaleUtil: ?*ImageJ2MEScaleUtil = null,
    var instance: ?*AnimationFactoryImageScaleUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AnimationFactoryImageScaleUtil.create();
    }

    fn initFields(this: *Self) void {
        this.imageScaleUtil = Inheritance.upcast(?*ImageJ2MEScaleUtil, ImageJ2MEScaleUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*AnimationFactoryImageScaleUtil {
        return Inheritance.upcast(?*AnimationFactoryImageScaleUtil, AnimationFactoryImageScaleUtil.instance);
    }
    

    // throws Exception
    pub fn createImage(self: *Self, image: ?*Image, width: i32, height: i32, scaleWidth: i32, scaleHeight: i32) ?*Image {
        var scaledImage: ?*Image = null;
        if (scaleWidth != 0 and scaleHeight != 0) {
            const scaleX: f32 = (@as(f32, @floatFromInt(scaleWidth))) / (@as(f32, @floatFromInt(width)));
            const scaleY: f32 = (@as(f32, @floatFromInt(scaleHeight))) / (@as(f32, @floatFromInt(height)));
            if ((scaleX == 1.0 and scaleY == 1.0) or (scaleX == 0.0 or scaleY == 0.0)) {
                scaledImage = image;
            } else {
                const scaledWidth: i32 = @as(i32, @intFromFloat((scaleX * @as(f32, @floatFromInt(width)))));
                const scaledHeight: i32 = @as(i32, @intFromFloat((scaleY * @as(f32, @floatFromInt(height)))));
                scaledImage = Inheritance.upcast(@TypeOf(scaledImage), Inheritance.call(self.imageScaleUtil.?, "scale", .{ image, scaledWidth, scaledHeight }));
            }
        } else {
            scaledImage = image;
        }
        return scaledImage;
    }
    

    // throws Exception
    pub fn processAdjust(self: *Self, baseImageAnimationFactory: ?*BaseImageAnimationFactory) void {
        _ = self;
        const scaleProperties: ?*ScaleProperties = Inheritance.upcast(?*ScaleProperties, baseImageAnimationFactory.?.getScalePropertiesP());
        if (scaleProperties.?.scaleWidth != 0 and scaleProperties.?.scaleHeight != 0) {
            const animationFactoryInitializationVisitor: ?*AnimationFactoryInitializationVisitor = Inheritance.upcast(?*AnimationFactoryInitializationVisitor, baseImageAnimationFactory.?.getAnimationFactoryInitializationVisitorP());
            const scaleX: f32 = (@as(f32, @floatCast(scaleProperties.?.scaleWidth))) / (@as(f32, @floatCast(animationFactoryInitializationVisitor.?.width)));
            const scaleY: f32 = (@as(f32, @floatCast(scaleProperties.?.scaleHeight))) / (@as(f32, @floatCast(animationFactoryInitializationVisitor.?.height)));
            if ((scaleX == 1.0 and scaleY == 1.0) or (scaleX == 0.0 or scaleY == 0.0)) {
            } else {
                animationFactoryInitializationVisitor.?.dx = @as(i32, @intCast((animationFactoryInitializationVisitor.?.originalDx * scaleX)));
                animationFactoryInitializationVisitor.?.dy = @as(i32, @intCast((animationFactoryInitializationVisitor.?.originalDy * scaleY)));
            }
        } else {
        }
    }
};

