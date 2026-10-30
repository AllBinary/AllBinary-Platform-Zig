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
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const ImageCopyUtil = @import("org/allbinary/media/image/ImageCopyUtil.zig").ImageCopyUtil;
const ImageModifierUtil = @import("org/allbinary/media/image/ImageModifierUtil.zig").ImageModifierUtil;
const ImageRotationUtil = @import("org/allbinary/media/image/ImageRotationUtil.zig").ImageRotationUtil;
const PlaynMutableImage = @import("org/microemu/device/playn/PlaynMutableImage.zig").PlaynMutableImage;
const Canvas = @import("playn/core/Canvas.zig").Canvas;
const ImageImpl = @import("playn/core/ImageImpl.zig").ImageImpl;
const PlayN = @import("playn/core/PlayN.zig").PlayN;
const HtmlGraphics = @import("playn/html/HtmlGraphics.zig").HtmlGraphics;
const HtmlImage = @import("playn/html/HtmlImage.zig").HtmlImage;
const AlphaBaseProcessor = @import("org/allbinary/animation/image/AlphaBaseProcessor.zig").AlphaBaseProcessor;
const AlphaProcessor = @import("org/allbinary/animation/image/AlphaProcessor.zig").AlphaProcessor;
const ImageBaseRotationAnimation = @import("org/allbinary/animation/image/ImageBaseRotationAnimation.zig").ImageBaseRotationAnimation;

pub const AllBinaryHTMLImageRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation";
    base: ImageBaseRotationAnimation = undefined,
    imageRotationUtil: ?*ImageRotationUtil = null,
    imageModifierUtil: ?*ImageModifierUtil = null,
    originalImage: ?*Image = null,
    twoImages: []?*Image = &.{},
    canvasSurfaceArray: []?*Canvas = &.{},
    imageToShow: ?*Image = null,
    bufferedImageIndex: i32 = 0,
    alphaProcessor: ?*AlphaBaseProcessor = null,

    fn initFields(this: *Self) void {
        this.imageRotationUtil = Inheritance.upcast(?*ImageRotationUtil, ImageRotationUtil.getInstance());
        this.imageModifierUtil = Inheritance.upcast(?*ImageModifierUtil, ImageModifierUtil.getInstanceOrCreate());
        
        this.twoImages = array_N66105: { const array_N66105_array = allocator.alloc(?*Image, @intCast(2)) catch unreachable; @memset(array_N66105_array, null); break :array_N66105 array_N66105_array; };
        this.canvasSurfaceArray = array_N66167: { const array_N66167_array = allocator.alloc(?*Canvas, @intCast(2)) catch unreachable; @memset(array_N66167_array, null); break :array_N66167 array_N66167_array; };
        
        this.bufferedImageIndex = 0;
        this.alphaProcessor = Inheritance.upcast(?*AlphaBaseProcessor, AlphaBaseProcessor.getInstance());
    }
    

    pub fn create5(originalImage: ?*Image, image: ?*Image, angleInfo: ?*AngleInfo, totalAngle: i16, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ImageBaseRotationAnimation, "create4", .{ image, angleInfo, totalAngle, animationBehavior }).*;
        this.initFields();
        this.originalImage = originalImage;
        this.imageToShow = image;
        this.twoImages[@intCast(0)] = Inheritance.upcast(@TypeOf(this.twoImages[@intCast(0)]), image);
        this.twoImages[@intCast(1)] = Inheritance.upcast(@TypeOf(this.twoImages[@intCast(1)]), Inheritance.call(ImageCopyUtil.getInstance().?, "createImage", .{ image }));
        this.canvasSurfaceArray[@intCast(0)] = Inheritance.upcast(@TypeOf(this.canvasSurfaceArray[@intCast(0)]), Inheritance.call(this, "getCanvasSurface", .{ this.twoImages[@intCast(0)] }));
        this.canvasSurfaceArray[@intCast(1)] = Inheritance.upcast(@TypeOf(this.canvasSurfaceArray[@intCast(1)]), Inheritance.call(this, "getCanvasSurface", .{ this.twoImages[@intCast(1)] }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getCanvasSurface(self: *Self, image: ?*Image) ?*Canvas {
        const htmlImage: ?*PlaynMutableImage = Inheritance.cast(?*PlaynMutableImage, image);
        const canvasImage: ?*ImageImpl = Inheritance.cast(?*ImageImpl, htmlImage.?.getImage());
        const playN: ?*PlayN = Inheritance.upcast(?*PlayN, PlayN.getInstance());
        const canvas: ?*Canvas = Inheritance.upcast(?*Canvas, Inheritance.call((Inheritance.cast(?*HtmlGraphics, playN.?.graphics())).?, "get", .{ Inheritance.cast(?*HtmlImage, canvasImage) }));
        _ = Inheritance.call(canvas.?, "translate", .{ (divide_N67080: { const left_N67080 = self.originalImage.?.getWidth(); const right_N67080 = 2; break :divide_N67080 if (comptime @typeInfo(@TypeOf(left_N67080)) == .int or @TypeOf(left_N67080) == comptime_int) @divTrunc(left_N67080, right_N67080) else left_N67080 / right_N67080; }), (divide_N67108: { const left_N67108 = self.originalImage.?.getHeight(); const right_N67108 = 2; break :divide_N67108 if (comptime @typeInfo(@TypeOf(left_N67108)) == .int or @TypeOf(left_N67108) == comptime_int) @divTrunc(left_N67108, right_N67108) else left_N67108 / right_N67108; }) });
        return canvas;
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        var changed: bool = false;
        if (Inheritance.receiver(self, "getBasicColorP").getBasicColorP() == null or !Object.same(Inheritance.receiverOf(Inheritance.receiver(self, "getBasicColorP").getBasicColorP().?, "intValue").intValue(), basicColor.?.intValue())) {
            changed = true;
        }
        _ = Inheritance.call(&self.base, "setBasicColorP", .{ basicColor });
        if (changed) {
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
    

    pub fn nextRotation(self: *Self) void {
        _ = self.base.nextRotation();
        _ = self.updateImage();
    }
    

    pub fn previousRotation(self: *Self) void {
        _ = self.base.previousRotation();
        _ = self.updateImage();
    }
    

    pub fn updateImage(self: *Self) void {
        const canvasSurface: ?*Canvas = Inheritance.upcast(?*Canvas, self.canvasSurfaceArray[@intCast(self.bufferedImageIndex)]);
        _ = canvasSurface.?.save();
        _ = Inheritance.call(self.imageRotationUtil.?, "rotateImageCanvasSurfaceClear", .{ self.originalImage, self.twoImages[@intCast(self.bufferedImageIndex)], canvasSurface, Inheritance.fieldPointer(self, "angleInfo").*.?.getAngle() + 90 });
        _ = Inheritance.call(self.alphaProcessor.?, "setAlpha", .{ self.imageModifierUtil, self.originalImage, self.twoImages[@intCast(self.bufferedImageIndex)], Inheritance.fieldPointer(self, "alphaP").* });
        _ = Inheritance.call(self.imageRotationUtil.?, "drawImage", .{ self.originalImage, self.imageToShow, canvasSurface });
        _ = canvasSurface.?.restore();
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
};

