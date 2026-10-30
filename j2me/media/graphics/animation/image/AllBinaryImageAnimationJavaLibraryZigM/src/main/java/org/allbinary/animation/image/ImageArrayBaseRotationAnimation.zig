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
const RotationAnimation = @import("org/allbinary/animation/RotationAnimation.zig").RotationAnimation;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const ImageModifierUtil = @import("org/allbinary/media/image/ImageModifierUtil.zig").ImageModifierUtil;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;

pub const ImageArrayBaseRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.ImageArrayBaseRotationAnimation";
    base: RotationAnimation = undefined,
    imageModifierUtil: ?*ImageModifierUtil = null,
    originalImageArray: []?*Image = &.{},
    imageArray: []?*Image = &.{},
    currentImage: ?*Image = null,
    totalFrames: i32 = 0,
    anchor: i32 = 0,

    fn initFields(this: *Self) void {
        this.imageModifierUtil = Inheritance.upcast(?*ImageModifierUtil, ImageModifierUtil.getInstanceOrCreate());
        
        this.imageArray = NullImage.NULL_IMAGE_ARRAY;
        
        this.totalFrames = 0;
        this.anchor = Anchor.TOP_LEFT;
    }
    

    pub fn create3(originalImageArray: []?*Image, angleInfo: ?*AngleInfo, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RotationAnimation, "create3", .{ angleInfo, Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ @divTrunc(360, Inheritance.receiverOf(angleInfo.?.getAngleIncrementInfo().?, "getAngleIncrement").getAngleIncrement()) }), animationBehavior }).*;
        this.initFields();
        this.originalImageArray = originalImageArray;
        _ = Inheritance.call(this, "setImageArray", .{ Inheritance.call(this.imageModifierUtil.?, "getImageArray", .{ originalImageArray }) });
        this.currentImage = Inheritance.upcast(@TypeOf(this.currentImage), this.imageArray[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(this, "circularIndexUtil").*.?, "getIndex").getIndex())]);
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getAnimationSize(self: *Self) i32 {
        return Inheritance.receiver(self, "getSize").getSize();
    }
    

    pub fn setAlpha(self: *Self, alpha: i32) void {
        if (Inheritance.fieldPointer(self, "alphaP").* != alpha) {
            _ = Inheritance.call(&self.base, "setAlpha", .{ alpha });
            _ = self.imageModifierUtil.?.reset();
            const index: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex();
            _ = Inheritance.call(self.imageModifierUtil.?, "setAlpha", .{ self.originalImageArray[@intCast(index)], self.imageArray[@intCast(index)], index, Inheritance.fieldPointer(self, "alphaP").* });
        }
    }
    

    pub fn nextRotation(self: *Self) void {
        _ = self.base.nextRotation();
        const index: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex();
        _ = Inheritance.call(self.imageModifierUtil.?, "setAlpha", .{ self.originalImageArray[@intCast(index)], self.imageArray[@intCast(index)], index, Inheritance.fieldPointer(self, "alphaP").* });
        self.currentImage = Inheritance.upcast(@TypeOf(self.currentImage), self.imageArray[@intCast(index)]);
    }
    

    pub fn previousRotation(self: *Self) void {
        _ = self.base.previousRotation();
        const index: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex();
        _ = Inheritance.call(self.imageModifierUtil.?, "setAlpha", .{ self.originalImageArray[@intCast(index)], self.imageArray[@intCast(index)], index, Inheritance.fieldPointer(self, "alphaP").* });
        self.currentImage = Inheritance.upcast(@TypeOf(self.currentImage), self.imageArray[@intCast(index)]);
    }
    

    pub fn setFrame(self: *Self, index2: i32) void {
        _ = Inheritance.call(&self.base, "setFrame", .{ index2 });
        const index: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex();
        _ = Inheritance.call(self.imageModifierUtil.?, "setAlpha", .{ self.originalImageArray[@intCast(index)], self.imageArray[@intCast(index)], index, Inheritance.fieldPointer(self, "alphaP").* });
        self.currentImage = Inheritance.upcast(@TypeOf(self.currentImage), self.imageArray[@intCast(index)]);
    }
    

    pub fn setSequence(self: *Self, sequence: []i32) void {
        _ = sequence;
        _ = self;
    }
    

    pub fn getSequence(self: *Self) []i32 {
        _ = self;
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    pub fn setImageArray(self: *Self, imageArray: []?*Image) void {
        self.imageArray = imageArray;
        self.totalFrames = @as(i32, @intCast(imageArray.len));
        Inheritance.fieldPointer(self, "circularIndexUtil").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "circularIndexUtil").*), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ self.totalFrames }));
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(graphics.?, "drawImage", .{ self.currentImage, x, y, self.anchor });
    }
    

    // throws Exception
    pub fn close(self: *Self) void {
        const disposalUtil: ?*DisposalUtil = Inheritance.upcast(?*DisposalUtil, DisposalUtil.getInstance());
        const size2: i32 = @as(i32, @intCast(self.imageArray.len));
        {
            var index: i32 = 0;
            while (index < size2) : (index += 1) {
            _ = Inheritance.call(disposalUtil.?, "disposeImage", .{ self.imageArray[@intCast(index)] });
            }
        }
        const size: i32 = @as(i32, @intCast(self.originalImageArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(disposalUtil.?, "disposeImage", .{ self.originalImageArray[@intCast(index)] });
            }
        }
        _ = Inheritance.call(disposalUtil.?, "disposeImage", .{ self.currentImage });
    }
    

    // throws Throwable
    pub fn finalize(self: *Self) void {
        const disposalUtil: ?*DisposalUtil = Inheritance.upcast(?*DisposalUtil, DisposalUtil.getInstance());
        const size2: i32 = @as(i32, @intCast(self.imageArray.len));
        {
            var index: i32 = 0;
            while (index < size2) : (index += 1) {
            _ = Inheritance.call(disposalUtil.?, "disposeImage", .{ self.imageArray[@intCast(index)] });
            }
        }
        const size: i32 = @as(i32, @intCast(self.originalImageArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(disposalUtil.?, "disposeImage", .{ self.originalImageArray[@intCast(index)] });
            }
        }
        _ = Inheritance.call(disposalUtil.?, "disposeImage", .{ self.currentImage });
    }
};

