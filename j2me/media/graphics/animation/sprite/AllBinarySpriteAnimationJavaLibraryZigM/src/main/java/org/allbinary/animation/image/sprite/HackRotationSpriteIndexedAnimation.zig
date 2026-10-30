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
// package org.allbinary.animation.image.sprite

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const Sprite = @import("javax/microedition/lcdui/game/Sprite.zig").Sprite;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const RotationAnimation = @import("org/allbinary/animation/RotationAnimation.zig").RotationAnimation;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;

pub const HackRotationSpriteIndexedAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation";
    base: RotationAnimation = undefined,
    sprite: ?*Sprite = null,
    image: ?*Image = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create4(sprite: ?*Sprite, image: ?*Image, angleInfo: ?*AngleInfo, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RotationAnimation, "create3", .{ angleInfo, Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ @divTrunc(360, Inheritance.receiverOf(angleInfo.?.getAngleIncrementInfo().?, "getAngleIncrement").getAngleIncrement()) }), animationBehavior }).*;
        this.initFields();
        this.sprite = sprite;
        this.image = image;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getAnimationSize(self: *Self) i32 {
        return self.getSize();
    }
    

    pub fn paintFrame(self: *Self, g: ?*Graphics, frame: i32, x: i32, y: i32) void {
        _ = Inheritance.call(self, "setFrame", .{ frame });
        _ = Inheritance.call(self, "paintXY", .{ g, x, y });
    }
    

    pub fn paintXY(self: *Self, g: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(self.sprite.?, "setPosition", .{ x, y });
        _ = Inheritance.call(self, "paint", .{ g });
    }
    

    pub fn paint(self: *Self, g: ?*Graphics) void {
        _ = Inheritance.call(self.sprite.?, "paint", .{ g });
    }
    

    pub fn nextRotation(self: *Self) void {
        _ = self.sprite.?.nextFrame();
    }
    

    pub fn previousRotation(self: *Self) void {
        _ = self.sprite.?.prevFrame();
    }
    

    pub fn getSize(self: *Self) i32 {
        return self.sprite.?.getRawFrameCount();
    }
    

    pub fn setFrame(self: *Self, frame: i32) void {
        _ = Inheritance.call(self.sprite.?, "setFrame", .{ frame });
    }
    

    pub fn getFrame(self: *Self) i32 {
        return self.sprite.?.getFrame();
    }
    

    pub fn setSequence(self: *Self, sequence: []i32) void {
        _ = sequence;
        _ = self;
    }
    

    pub fn getSequence(self: *Self) []i32 {
        _ = self;
        return PrimitiveIntUtil.getArrayInstance();
    }
};

