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
// package org.allbinary.animation.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Matrix = @import("android/graphics/Matrix.zig").Matrix;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const AndroidImageUtil = @import("org/allbinary/media/image/AndroidImageUtil.zig").AndroidImageUtil;
const ImageCopyUtil = @import("org/allbinary/media/image/ImageCopyUtil.zig").ImageCopyUtil;
const ImageModifierUtil = @import("org/allbinary/media/image/ImageModifierUtil.zig").ImageModifierUtil;
const ImageBaseRotationAnimation = @import("org/allbinary/animation/image/ImageBaseRotationAnimation.zig").ImageBaseRotationAnimation;

pub const AllBinaryNoFlickerAndroidImageRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation";
    base: ImageBaseRotationAnimation = undefined,
    imageModifierUtil: ?*ImageModifierUtil = null,
    androidImageUtil: ?*AndroidImageUtil = null,
    matrix: ?*Matrix = null,
    halfWidth: i32 = 0,
    halfHeight: i32 = 0,
    increment: i16 = 0,
    originalImage: ?*Image = null,
    twoImages: []?*Image = &.{},
    imageToShow: ?*Image = null,
    bufferedImageIndex: i32 = 0,

    fn initFields(this: *Self) void {
        this.imageModifierUtil = Inheritance.upcast(?*ImageModifierUtil, ImageModifierUtil.getInstanceOrCreate());
        this.androidImageUtil = Inheritance.upcast(?*AndroidImageUtil, AndroidImageUtil.getInstance());
        this.matrix = Matrix.create();
        
        
        
        
        this.twoImages = array_N66131: { const array_N66131_array = allocator.alloc(?*Image, @intCast(2)) catch unreachable; @memset(array_N66131_array, null); break :array_N66131 array_N66131_array; };
        
        this.bufferedImageIndex = 0;
    }
    

    pub fn create5(originalImage: ?*Image, image: ?*Image, angleInfo: ?*AngleInfo, totalAngle: i16, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ImageBaseRotationAnimation, "create4", .{ image, angleInfo, totalAngle, animationBehavior }).*;
        this.initFields();
        this.originalImage = originalImage;
        this.halfWidth = (image.?.getWidth() >> @intCast(1));
        this.halfHeight = (image.?.getHeight() >> @intCast(1));
        this.increment = @as(i16, @intCast((Inheritance.receiverOf(Inheritance.fieldPointer(this, "angleInfo").*.?.getAngleIncrementInfo().?, "getAngleIncrement").getAngleIncrement())));
        this.imageToShow = image;
        this.twoImages[@intCast(0)] = Inheritance.upcast(@TypeOf(this.twoImages[@intCast(0)]), image);
        this.twoImages[@intCast(1)] = Inheritance.upcast(@TypeOf(this.twoImages[@intCast(1)]), Inheritance.call(ImageCopyUtil.getInstance().?, "createImage", .{ image }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        var changed: bool = false;
        if (Inheritance.receiver(self, "getBasicColorP").getBasicColorP() == null or !Object.same(Inheritance.receiverOf(Inheritance.receiver(self, "getBasicColorP").getBasicColorP().?, "intValue").intValue(), basicColor.?.intValue())) {
            _ = Inheritance.call(self.imageModifierUtil.?, "setColor", .{ self.originalImage, self.imageToShow, 0, basicColor });
            changed = true;
        }
        _ = Inheritance.call(&self.base, "setBasicColorP", .{ basicColor });
        if (changed) {
            _ = Inheritance.call(self.matrix.?, "setRotate", .{ 0.0, @as(f32, @floatFromInt(self.halfWidth)), @as(f32, @floatFromInt(self.halfHeight)) });
            _ = self.updateImage();
        }
    }
    

    pub fn changeBasicColor(self: *Self, basicColor: ?*BasicColor) void {
        _ = Inheritance.call(self, "setBasicColorP", .{ basicColor });
    }
    

    pub fn setAlpha(self: *Self, alpha: i32) void {
        var changed: bool = false;
        if (Inheritance.fieldPointer(self, "alphaP").* != alpha) {
            changed = true;
        }
        _ = Inheritance.call(&self.base, "setAlpha", .{ alpha });
        _ = Inheritance.call(self.imageModifierUtil.?, "setAlpha", .{ self.originalImage, self.imageToShow, 0, Inheritance.fieldPointer(self, "alphaP").* });
        if (changed) {
            _ = Inheritance.call(self.matrix.?, "setRotate", .{ 0.0, @as(f32, @floatFromInt(self.halfWidth)), @as(f32, @floatFromInt(self.halfHeight)) });
            _ = self.updateImage();
        }
    }
    

    pub fn nextRotation(self: *Self) void {
        _ = self.base.nextRotation();
        _ = Inheritance.call(self.matrix.?, "setRotate", .{ @as(f32, @floatFromInt(self.increment)), @as(f32, @floatFromInt(self.halfWidth)), @as(f32, @floatFromInt(self.halfHeight)) });
        _ = self.updateImage();
    }
    

    pub fn previousRotation(self: *Self) void {
        _ = self.base.previousRotation();
        _ = Inheritance.call(self.matrix.?, "setRotate", .{ @as(f32, @floatFromInt(-self.increment)), @as(f32, @floatFromInt(self.halfWidth)), @as(f32, @floatFromInt(self.halfHeight)) });
        _ = self.updateImage();
    }
    

    pub fn updateImage(self: *Self) void {
        _ = Inheritance.call(self.androidImageUtil.?, "rotate", .{ self.twoImages[@intCast(self.bufferedImageIndex)], self.originalImage, self.matrix, self.imageModifierUtil.?.paint });
        _ = self.swap();
    }
    

    pub fn setFrame(self: *Self, index: i32) void {
        const currentFrame: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex();
        _ = Inheritance.call(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "setIndex", .{ index });
        const newFrame: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex();
        _ = Inheritance.call(Inheritance.fieldPointer(self, "angleInfo").*.?, "adjustAngle", .{ newFrame });
        _ = Inheritance.call(self.matrix.?, "setRotate", .{ @as(f32, @floatFromInt((newFrame - currentFrame))) * @as(f32, @floatFromInt(self.increment)), @as(f32, @floatFromInt(self.halfWidth)), @as(f32, @floatFromInt(self.halfHeight)) });
        _ = self.updateImage();
    }
    

    pub fn swap(self: *Self) void {
        self.imageToShow = Inheritance.upcast(@TypeOf(self.imageToShow), self.twoImages[@intCast(self.bufferedImageIndex)]);
        if (self.bufferedImageIndex == 0) {
            self.bufferedImageIndex = 1;
        } else {
            self.bufferedImageIndex = 0;
        }
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(graphics.?, "drawImage", .{ self.imageToShow, x, y, Inheritance.fieldPointer(self, "anchor").* });
    }
};

