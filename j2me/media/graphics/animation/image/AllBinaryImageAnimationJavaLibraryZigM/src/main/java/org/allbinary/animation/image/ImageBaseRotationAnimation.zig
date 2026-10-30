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
const DisposalUtil = @import("org/allbinary/DisposalUtil.zig").DisposalUtil;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const RotationAnimation = @import("org/allbinary/animation/RotationAnimation.zig").RotationAnimation;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;

pub const ImageBaseRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.ImageBaseRotationAnimation";
    base: RotationAnimation = undefined,
    image: ?*Image = null,
    anchor: i32 = 0,

    fn initFields(this: *Self) void {
        
        this.anchor = Anchor.TOP_LEFT;
    }
    

    pub fn create4(image: ?*Image, angleInfo: ?*AngleInfo, totalAngle: i16, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RotationAnimation, "create3", .{ angleInfo, Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ @divTrunc(totalAngle, Inheritance.receiverOf(angleInfo.?.getAngleIncrementInfo().?, "getAngleIncrement").getAngleIncrement()) }), animationBehavior }).*;
        this.initFields();
        this.image = image;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getAnimationSize(self: *Self) i32 {
        return Inheritance.receiver(self, "getSize").getSize();
    }
    

    pub fn setSequence(self: *Self, sequence: []i32) void {
        _ = sequence;
        _ = self;
    }
    

    pub fn getSequence(self: *Self) []i32 {
        _ = self;
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(graphics.?, "drawImage", .{ self.image, x, y, self.anchor });
    }
    

    pub fn getImage(self: *Self) ?*Image {
        return self.image;
    }
    

    pub fn getWidth(self: *Self) i32 {
        return self.image.?.getWidth();
    }
    

    pub fn getHeight(self: *Self) i32 {
        return self.image.?.getHeight();
    }
    

    // throws Exception
    pub fn close(self: *Self) void {
        _ = Inheritance.call(DisposalUtil.getInstance().?, "disposeImage", .{ self.image });
    }
    

    // throws Throwable
    pub fn finalize(self: *Self) void {
        _ = Inheritance.call(DisposalUtil.getInstance().?, "disposeImage", .{ self.image });
    }
};

