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
const ImageBaseRotationAnimation = @import("org/allbinary/animation/image/ImageBaseRotationAnimation.zig").ImageBaseRotationAnimation;

pub const AdjustedImageBaseRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.AdjustedImageBaseRotationAnimation";
    base: ImageBaseRotationAnimation = undefined,
    dx: i32 = 0,
    dy: i32 = 0,

    fn initFields(this: *Self) void {
        this.dx = 0;
        this.dy = 0;
    }
    

    pub fn create6(image: ?*Image, angleInfo: ?*AngleInfo, totalAngle: i16, dx: i32, dy: i32, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ImageBaseRotationAnimation, "create4", .{ image, angleInfo, totalAngle, animationBehavior }).*;
        this.initFields();
        _ = Inheritance.call(this, "init", .{ dx, dy });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, dx: i32, dy: i32) void {
        self.dx = dx;
        self.dy = dy;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(&self.base, "paintXY", .{ graphics, x + self.dx, y + self.dy });
    }
};

