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
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const AndroidImageUtil = @import("org/allbinary/media/image/AndroidImageUtil.zig").AndroidImageUtil;
const ImageModifierUtil = @import("org/allbinary/media/image/ImageModifierUtil.zig").ImageModifierUtil;
const ImageBaseRotationAnimation = @import("org/allbinary/animation/image/ImageBaseRotationAnimation.zig").ImageBaseRotationAnimation;

pub const AllBinaryFlickerAndroidImageRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimation";
    base: ImageBaseRotationAnimation = undefined,
    imageModifierUtil: ?*ImageModifierUtil = null,
    androidImageUtil: ?*AndroidImageUtil = null,
    matrix: ?*Matrix = null,
    halfWidth: i32 = 0,
    halfHeight: i32 = 0,
    increment: i16 = 0,
    originalImage: ?*Image = null,

    fn initFields(this: *Self) void {
        this.imageModifierUtil = Inheritance.upcast(?*ImageModifierUtil, ImageModifierUtil.getInstanceOrCreate());
        this.androidImageUtil = Inheritance.upcast(?*AndroidImageUtil, AndroidImageUtil.getInstance());
        this.matrix = Matrix.create();
        
        
        
        
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
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        var changed: bool = false;
        if (Inheritance.receiver(self, "getBasicColorP").getBasicColorP() == null or !Object.same(Inheritance.receiverOf(Inheritance.receiver(self, "getBasicColorP").getBasicColorP().?, "intValue").intValue(), basicColor.?.intValue())) {
            _ = Inheritance.call(self.imageModifierUtil.?, "setColor", .{ self.originalImage, Inheritance.receiver(self, "getImage").getImage(), 0, basicColor });
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
        _ = Inheritance.call(self.imageModifierUtil.?, "setAlpha", .{ self.originalImage, Inheritance.receiver(self, "getImage").getImage(), 0, Inheritance.fieldPointer(self, "alphaP").* });
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
        _ = Inheritance.call(self.androidImageUtil.?, "rotate", .{ Inheritance.receiver(self, "getImage").getImage(), self.originalImage, self.matrix, self.imageModifierUtil.?.paint });
    }
    

    pub fn setFrame(self: *Self, index: i32) void {
        const currentFrame: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex();
        _ = Inheritance.call(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "setIndex", .{ index });
        const newFrame: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex();
        _ = Inheritance.call(Inheritance.fieldPointer(self, "angleInfo").*.?, "adjustAngle", .{ newFrame });
        _ = Inheritance.call(self.matrix.?, "setRotate", .{ @as(f32, @floatFromInt((newFrame - currentFrame))) * @as(f32, @floatFromInt(self.increment)), @as(f32, @floatFromInt(self.halfWidth)), @as(f32, @floatFromInt(self.halfHeight)) });
        _ = self.updateImage();
    }
};

