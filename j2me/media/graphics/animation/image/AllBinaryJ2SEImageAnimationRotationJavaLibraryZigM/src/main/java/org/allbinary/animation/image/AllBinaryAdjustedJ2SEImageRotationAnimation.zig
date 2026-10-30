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
const AllBinaryJ2SEImageRotationAnimation = @import("org/allbinary/animation/image/AllBinaryJ2SEImageRotationAnimation.zig").AllBinaryJ2SEImageRotationAnimation;

pub const AllBinaryAdjustedJ2SEImageRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation";
    base: AllBinaryJ2SEImageRotationAnimation = undefined,
    dx: i32 = 0,
    dy: i32 = 0,

    fn initFields(this: *Self) void {
        this.dx = 0;
        this.dy = 0;
    }
    

    pub fn create7(originalImage: ?*Image, image: ?*Image, angleInfo: ?*AngleInfo, totalAngle: i16, dx: i32, dy: i32, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryJ2SEImageRotationAnimation, "create5", .{ originalImage, image, angleInfo, totalAngle, animationBehavior }).*;
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
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(&self.base, "paintXY", .{ graphics, x + self.dx, y + self.dy });
    }
};

