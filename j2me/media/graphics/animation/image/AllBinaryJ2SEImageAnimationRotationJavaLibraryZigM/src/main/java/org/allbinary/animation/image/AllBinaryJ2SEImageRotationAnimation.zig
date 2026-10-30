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
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const DisposalUtil = @import("org/allbinary/DisposalUtil.zig").DisposalUtil;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const ImageCopyUtil = @import("org/allbinary/media/image/ImageCopyUtil.zig").ImageCopyUtil;
const ImageModifierUtil = @import("org/allbinary/media/image/ImageModifierUtil.zig").ImageModifierUtil;
const ImageRotationUtil = @import("org/allbinary/media/image/ImageRotationUtil.zig").ImageRotationUtil;
const AlphaProcessor = @import("org/allbinary/animation/image/AlphaProcessor.zig").AlphaProcessor;
const ChangeColorProcessor = @import("org/allbinary/animation/image/ChangeColorProcessor.zig").ChangeColorProcessor;
const ImageBaseRotationAnimation = @import("org/allbinary/animation/image/ImageBaseRotationAnimation.zig").ImageBaseRotationAnimation;
const ModifierBaseProcessor = @import("org/allbinary/animation/image/ModifierBaseProcessor.zig").ModifierBaseProcessor;
const ScaleBaseProcessor = @import("org/allbinary/animation/image/ScaleBaseProcessor.zig").ScaleBaseProcessor;
const ScaleProcessor = @import("org/allbinary/animation/image/ScaleProcessor.zig").ScaleProcessor;
const SetColorProcessor = @import("org/allbinary/animation/image/SetColorProcessor.zig").SetColorProcessor;

pub const AllBinaryJ2SEImageRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation";
    base: ImageBaseRotationAnimation = undefined,
    imageRotationUtil: ?*ImageRotationUtil = null,
    imageModifierUtil: ?*ImageModifierUtil = null,
    realOriginalImage: ?*Image = null,
    originalImageArray: []?*Image = &.{},
    twoImages: []?*Image = &.{},
    imageToShow: ?*Image = null,
    bufferedImageIndex: i32 = 0,
    lastScaleX: f32 = 0.0,
    lastScaleY: f32 = 0.0,
    scaleX: f32 = 0.0,
    scaleY: f32 = 0.0,
    maxScaleX: f32 = 0.0,
    maxScaleY: f32 = 0.0,
    alphaProcessor: ?*ModifierBaseProcessor = null,
    setColorProcessor: ?*ModifierBaseProcessor = null,
    changeColorProcessor: ?*ModifierBaseProcessor = null,
    scaleProcessor: ?*ScaleBaseProcessor = null,

    fn initFields(this: *Self) void {
        this.imageRotationUtil = Inheritance.upcast(?*ImageRotationUtil, ImageRotationUtil.getInstance());
        this.imageModifierUtil = Inheritance.upcast(?*ImageModifierUtil, ImageModifierUtil.getInstanceOrCreate());
        
        this.originalImageArray = array_N66020: { const array_N66020_array = allocator.alloc(?*Image, @intCast(1)) catch unreachable; @memset(array_N66020_array, null); break :array_N66020 array_N66020_array; };
        this.twoImages = array_N66082: { const array_N66082_array = allocator.alloc(?*Image, @intCast(2)) catch unreachable; @memset(array_N66082_array, null); break :array_N66082 array_N66082_array; };
        
        this.bufferedImageIndex = 0;
        this.lastScaleX = 1.0;
        this.lastScaleY = 1.0;
        this.scaleX = 1.0;
        this.scaleY = 1.0;
        this.maxScaleX = 0.0;
        this.maxScaleY = 0.0;
        this.alphaProcessor = Inheritance.upcast(?*ModifierBaseProcessor, ModifierBaseProcessor.getInstance());
        this.setColorProcessor = Inheritance.upcast(?*ModifierBaseProcessor, ModifierBaseProcessor.getInstance());
        this.changeColorProcessor = Inheritance.upcast(?*ModifierBaseProcessor, ModifierBaseProcessor.getInstance());
        this.scaleProcessor = Inheritance.upcast(?*ScaleBaseProcessor, ScaleProcessor.getInstance());
    }
    

    pub fn create5(originalImage: ?*Image, image: ?*Image, angleInfo: ?*AngleInfo, totalAngle: i16, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ImageBaseRotationAnimation, "create4", .{ image, angleInfo, totalAngle, animationBehavior }).*;
        this.initFields();
        this.realOriginalImage = originalImage;
        this.originalImageArray[@intCast(0)] = Inheritance.upcast(@TypeOf(this.originalImageArray[@intCast(0)]), originalImage);
        this.imageToShow = image;
        this.twoImages[@intCast(0)] = Inheritance.upcast(@TypeOf(this.twoImages[@intCast(0)]), image);
        this.twoImages[@intCast(1)] = Inheritance.upcast(@TypeOf(this.twoImages[@intCast(1)]), Inheritance.call(ImageCopyUtil.getInstance().?, "createImageForRotation", .{ image }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        var changed: bool = false;
        if (Inheritance.receiver(self, "getBasicColorP").getBasicColorP() == null or !Object.same(Inheritance.receiverOf(Inheritance.receiver(self, "getBasicColorP").getBasicColorP().?, "intValue").intValue(), basicColor.?.intValue())) {
            changed = true;
        }
        _ = Inheritance.call(&self.base, "setBasicColorP", .{ basicColor });
        if (changed) {
            self.setColorProcessor = Inheritance.upcast(@TypeOf(self.setColorProcessor), SetColorProcessor.getInstance());
            _ = self.updateImage();
        }
    }
    

    pub fn changeBasicColor(self: *Self, basicColor: ?*BasicColor) void {
        var changed: bool = false;
        if (Inheritance.receiver(self, "getChangeBasicColor").getChangeBasicColor() == null or !Object.same(Inheritance.receiverOf(Inheritance.receiver(self, "getChangeBasicColor").getChangeBasicColor().?, "intValue").intValue(), basicColor.?.intValue())) {
            changed = true;
        }
        _ = Inheritance.call(&self.base, "changeBasicColor", .{ basicColor });
        if (changed) {
            self.changeColorProcessor = Inheritance.upcast(@TypeOf(self.changeColorProcessor), ChangeColorProcessor.getInstance());
            _ = self.updateImage();
        }
    }
    

    pub fn setAlpha(self: *Self, alpha: i32) void {
        var changed: bool = false;
        if (Inheritance.fieldPointer(self, "alphaP").* != alpha) {
            changed = true;
        }
        _ = Inheritance.call(&self.base, "setAlpha", .{ alpha });
        if (changed) {
            self.alphaProcessor = Inheritance.upcast(@TypeOf(self.alphaProcessor), AlphaProcessor.getInstance());
            _ = self.updateImage();
        }
    }
    

    pub fn setScale(self: *Self, scaleX: f32, scaleY: f32) void {
        self.scaleX = scaleX;
        self.scaleY = scaleY;
        if (self.scaleX != self.lastScaleX or self.scaleY != self.lastScaleY) {
            _ = Inheritance.call(self.scaleProcessor.?, "update", .{ self.realOriginalImage, self.originalImageArray, self.twoImages, self.bufferedImageIndex, self.scaleX, self.scaleY, self.maxScaleX, self.maxScaleY });
            _ = self.updateImage();
        }
        self.lastScaleX = self.scaleX;
        self.lastScaleY = self.scaleY;
    }
    

    pub fn setMaxScale(self: *Self, maxScaleX: f32, maxScaleY: f32) void {
        self.maxScaleX = maxScaleX;
        self.maxScaleY = maxScaleY;
        _ = Inheritance.call(self.scaleProcessor.?, "update", .{ self.realOriginalImage, self.originalImageArray, self.twoImages, self.bufferedImageIndex, self.scaleX, self.scaleY, self.maxScaleX, self.maxScaleY });
        _ = self.updateImage();
    }
    

    pub fn nextRotation(self: *Self) void {
        _ = self.base.nextRotation();
        _ = self.updateImage();
    }
    

    pub fn previousRotation(self: *Self) void {
        _ = self.base.previousRotation();
        _ = self.updateImage();
    }
    

    pub fn updateImage(self: *Self) void {
        _ = Inheritance.call(self.imageRotationUtil.?, "rotateImage", .{ self.originalImageArray[@intCast(0)], self.twoImages[@intCast(self.bufferedImageIndex)], Inheritance.fieldPointer(self, "angleInfo").*.?.getAngle() + 90 });
        _ = Inheritance.call(self.alphaProcessor.?, "updateAlpha", .{ self.imageModifierUtil, NullImage.NULL_IMAGE, self.twoImages[@intCast(self.bufferedImageIndex)], 0, Inheritance.fieldPointer(self, "alphaP").* });
        _ = Inheritance.call(self.setColorProcessor.?, "updateColor", .{ self.imageModifierUtil, NullImage.NULL_IMAGE, self.twoImages[@intCast(self.bufferedImageIndex)], 0, Inheritance.fieldPointer(self, "basicColor").* });
        _ = Inheritance.call(self.changeColorProcessor.?, "updateColor", .{ self.imageModifierUtil, NullImage.NULL_IMAGE, self.twoImages[@intCast(self.bufferedImageIndex)], 0, Inheritance.fieldPointer(self, "changeBasicColorP").* });
        _ = self.swap();
    }
    

    pub fn setFrame(self: *Self, index: i32) void {
        _ = Inheritance.call(&self.base, "setFrame", .{ index });
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
    

    // throws Exception
    pub fn close(self: *Self) void {
        _ = self.base.close();
        const disposalUtil: ?*DisposalUtil = Inheritance.upcast(?*DisposalUtil, DisposalUtil.getInstance());
        const size2: i32 = @as(i32, @intCast(self.twoImages.len));
        {
            var index: i32 = 0;
            while (index < size2) : (index += 1) {
            _ = Inheritance.call(disposalUtil.?, "disposeImage", .{ self.twoImages[@intCast(index)] });
            }
        }
        const size: i32 = @as(i32, @intCast(self.originalImageArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(disposalUtil.?, "disposeImage", .{ self.originalImageArray[@intCast(index)] });
            }
        }
        _ = Inheritance.call(disposalUtil.?, "disposeImage", .{ self.realOriginalImage });
        _ = Inheritance.call(disposalUtil.?, "disposeImage", .{ self.imageToShow });
    }
    

    // throws Throwable
    pub fn finalize(self: *Self) void {
        _ = self.base.finalize();
        const disposalUtil: ?*DisposalUtil = Inheritance.upcast(?*DisposalUtil, DisposalUtil.getInstance());
        const size2: i32 = @as(i32, @intCast(self.twoImages.len));
        {
            var index: i32 = 0;
            while (index < size2) : (index += 1) {
            _ = Inheritance.call(disposalUtil.?, "disposeImage", .{ self.twoImages[@intCast(index)] });
            }
        }
        const size: i32 = @as(i32, @intCast(self.originalImageArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(disposalUtil.?, "disposeImage", .{ self.originalImageArray[@intCast(index)] });
            }
        }
        _ = Inheritance.call(disposalUtil.?, "disposeImage", .{ self.realOriginalImage });
        _ = Inheritance.call(disposalUtil.?, "disposeImage", .{ self.imageToShow });
    }
};

