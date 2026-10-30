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
const ImageArrayRotationAnimation = @import("org/allbinary/animation/image/ImageArrayRotationAnimation.zig").ImageArrayRotationAnimation;
const ImageArrayRotationAnimationInfo = @import("org/allbinary/animation/image/ImageArrayRotationAnimationInfo.zig").ImageArrayRotationAnimationInfo;

//TWB - Adjustments should be done in the resource creation and not at the animation level
pub const AdjustedImageArrayRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.AdjustedImageArrayRotationAnimation";
    base: ImageArrayRotationAnimation = undefined,
    dx: i32 = 0,
    dy: i32 = 0,

    fn initFields(this: *Self) void {
        this.dx = 0;
        this.dy = 0;
    }
    

    // throws Exception
    pub fn createAdjustedImageArrayRotationAnimationInfo(anyType: ?Object, animationBehavior: ?*AnimationBehavior) ?*AdjustedImageArrayRotationAnimation {
        const imageRotationAnimationInfo: ?*ImageArrayRotationAnimationInfo = Inheritance.cast(?*ImageArrayRotationAnimationInfo, anyType);
        return Inheritance.callStatic(AdjustedImageArrayRotationAnimation, "create6", .{ imageRotationAnimationInfo.?.getImageArray(), imageRotationAnimationInfo.?.getAngleInfoP(), imageRotationAnimationInfo.?.getTotalAngle(), imageRotationAnimationInfo.?.getDx(), imageRotationAnimationInfo.?.getDy(), animationBehavior });
    }
    

    // throws Exception
    pub fn createAnimation(imageArray: []?*Image, angleInfo: ?*AngleInfo, totalAngle: i32, animationBehavior: ?*AnimationBehavior) ?*AdjustedImageArrayRotationAnimation {
        return Inheritance.callStatic(AdjustedImageArrayRotationAnimation, "create6", .{ imageArray, angleInfo, totalAngle, -(imageArray[@intCast(0)].?.getWidth() >> @intCast(2)), -(imageArray[@intCast(0)].?.getHeight() >> @intCast(2)), animationBehavior });
    }
    

    pub fn create6(imageArray: []?*Image, angleInfo: ?*AngleInfo, totalAngle: i32, dx: i32, dy: i32, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ImageArrayRotationAnimation, "create4", .{ imageArray, angleInfo, totalAngle, animationBehavior }).*;
        this.initFields();
        _ = Inheritance.call(this, "init", .{ dx, dy });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, dx: i32, dy: i32) void {
        _ = Inheritance.call(self, "setDx", .{ dx });
        _ = Inheritance.call(self, "setDy", .{ dy });
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(&self.base, "paintXY", .{ graphics, x + self.dx, y + self.dy });
    }
    

    pub fn setDx(self: *Self, dx: i32) void {
        self.dx = dx;
    }
    

    pub fn getDx(self: *Self) i32 {
        return self.dx;
    }
    

    pub fn setDy(self: *Self, dy: i32) void {
        self.dy = dy;
    }
    

    pub fn getDy(self: *Self) i32 {
        return self.dy;
    }
};

