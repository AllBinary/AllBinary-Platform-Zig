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
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const ImageArrayBaseRotationAnimation = @import("org/allbinary/animation/image/ImageArrayBaseRotationAnimation.zig").ImageArrayBaseRotationAnimation;
const ImageArrayRotationAnimationInfo = @import("org/allbinary/animation/image/ImageArrayRotationAnimationInfo.zig").ImageArrayRotationAnimationInfo;

pub const ImageArrayRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.ImageArrayRotationAnimation";
    base: ImageArrayBaseRotationAnimation = undefined,
    expectedTotalFrames: i32 = 0,

    fn initFields(this: *Self) void {
        this.expectedTotalFrames = 0;
    }
    

    // throws Exception
    pub fn createAnimation(anyType: ?Object, animationBehavior: ?*AnimationBehavior) ?*ImageArrayRotationAnimation {
        const imageRotationAnimationInfo: ?*ImageArrayRotationAnimationInfo = Inheritance.cast(?*ImageArrayRotationAnimationInfo, anyType);
        return Inheritance.callStatic(ImageArrayRotationAnimation, "create4", .{ imageRotationAnimationInfo.?.getImageArray(), imageRotationAnimationInfo.?.getAngleInfoP(), imageRotationAnimationInfo.?.getTotalAngle(), animationBehavior });
    }
    

    pub fn create4(imageArray: []?*Image, angleInfo: ?*AngleInfo, totalAngle: i32, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ImageArrayBaseRotationAnimation, "create3", .{ imageArray, angleInfo, animationBehavior }).*;
        this.initFields();
        _ = Inheritance.call(this, "init", .{ imageArray, angleInfo, totalAngle });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, imageArray: []?*Image, angleInfo: ?*AngleInfo, totalAngle: i32) void {
        _ = imageArray;
        _ = angleInfo;
        self.expectedTotalFrames = @divTrunc(totalAngle, Inheritance.receiverOf(Inheritance.fieldPointer(self, "angleInfo").*.?.getAngleIncrementInfo().?, "getAngleIncrement").getAngleIncrement());
        _ = Inheritance.call(Inheritance.fieldPointer(self, "angleInfo").*.?, "adjustAngle", .{ 0 });
        if (self.expectedTotalFrames != Inheritance.receiver(self, "getSize").getSize()) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Wrong Number of Frames"); break :exception error.Exception; }});
        }
    }
    

    pub fn setImageArray(self: *Self, imageArray: []?*Image) void {
        _ = Inheritance.call(&self.base, "setImageArray", .{ imageArray });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "angleInfo").*.?, "adjustAngle", .{ 0 });
    }
};

