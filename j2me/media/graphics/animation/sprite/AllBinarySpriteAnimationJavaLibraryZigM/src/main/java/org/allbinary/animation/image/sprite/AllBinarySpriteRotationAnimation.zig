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
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const Sprite = @import("javax/microedition/lcdui/game/Sprite.zig").Sprite;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const Angle = @import("org/allbinary/math/Angle.zig").Angle;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const HackRotationSpriteIndexedAnimation = @import("org/allbinary/animation/image/sprite/HackRotationSpriteIndexedAnimation.zig").HackRotationSpriteIndexedAnimation;

pub const AllBinarySpriteRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation";
    base: HackRotationSpriteIndexedAnimation = undefined,
    

    pub fn create3(sprite: ?*Sprite, image: ?*Image, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HackRotationSpriteIndexedAnimation, "create4", .{ sprite, image, Inheritance.callStatic(AngleInfo, "getInstance", .{ @as(i16, @intCast(((divide_N65832: { const left_N65832 = AngleFactory.getInstance().?.TOTAL_ANGLE; const right_N65832 = sprite.?.getRawFrameCount(); break :divide_N65832 if (comptime @typeInfo(@TypeOf(left_N65832)) == .int or @TypeOf(left_N65832) == comptime_int) @divTrunc(left_N65832, right_N65832) else left_N65832 / right_N65832; })))) }), animationBehavior }).*;
        _ = Inheritance.call(Inheritance.fieldPointer(this, "angleInfo").*.?, "adjustAngle", .{ Inheritance.fieldPointer(this, "sprite").*.?.getFrame() });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn nextRotation(self: *Self) void {
        _ = Inheritance.fieldPointer(self, "sprite").*.?.nextFrame();
        _ = Inheritance.call(Inheritance.fieldPointer(self, "angleInfo").*.?, "adjustAngle", .{ Inheritance.fieldPointer(self, "sprite").*.?.getFrame() });
    }
    

    pub fn previousRotation(self: *Self) void {
        _ = Inheritance.fieldPointer(self, "sprite").*.?.prevFrame();
        _ = Inheritance.call(Inheritance.fieldPointer(self, "angleInfo").*.?, "adjustAngle", .{ Inheritance.fieldPointer(self, "sprite").*.?.getFrame() });
    }
    

    pub fn setFrameByDirection(self: *Self, direction: ?*Direction) void {
        const angle: ?*Angle = Inheritance.upcast(?*Angle, Inheritance.call(Inheritance.fieldPointer(self, "directionUtil").*.?, "getFrameAngle", .{ direction }));
        _ = Inheritance.call(self, "adjustFrameToAngle", .{ angle });
    }
    

    pub fn setFrameToAngle(self: *Self, angle: ?*Angle) void {
        _ = Inheritance.call(self, "adjustFrameToAngle", .{ angle });
    }
    

    pub fn setFrame(self: *Self, index: i32) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "sprite").*.?, "setFrame", .{ index });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "angleInfo").*.?, "adjustAngle", .{ Inheritance.receiver(self, "getFrame").getFrame() });
    }
    

    pub fn adjustFrameToAngle(self: *Self, angle: ?*Angle) void {
        _ = Inheritance.call(self, "adjustFrame", .{ angle.?.getValue() });
    }
    

    pub fn adjustFrame(self: *Self, angle: i16) void {
        _ = Inheritance.call(self, "setFrame", .{ Inheritance.call(Inheritance.fieldPointer(self, "frameUtil").*.?, "getFrameForAngle", .{ angle, @as(i32, @intCast(Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.fieldPointer(self, "angleInfo").*.?, "getAngleIncrementInfo").getAngleIncrementInfo().?, "getAngleIncrement").getAngleIncrement())) }) });
    }
};

