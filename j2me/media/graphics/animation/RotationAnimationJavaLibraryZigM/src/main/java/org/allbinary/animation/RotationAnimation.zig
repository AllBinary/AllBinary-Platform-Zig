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
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const DirectionUtil = @import("org/allbinary/direction/DirectionUtil.zig").DirectionUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const Angle = @import("org/allbinary/math/Angle.zig").Angle;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const FrameUtil = @import("org/allbinary/math/FrameUtil.zig").FrameUtil;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const RotationAnimationInterface = @import("org/allbinary/animation/RotationAnimationInterface.zig").RotationAnimationInterface;

pub const RotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.RotationAnimation";
    pub const java_interfaces = .{ RotationAnimationInterface };
    base: IndexedAnimation = undefined,
    frameUtil: ?*FrameUtil = null,
    directionUtil: ?*DirectionUtil = null,
    angleInfo: ?*AngleInfo = null,
    circularIndexUtil: ?*CircularIndexUtil = null,
    // Implements RotationAnimationInterface

    fn initFields(this: *Self) void {
        this.frameUtil = Inheritance.upcast(?*FrameUtil, FrameUtil.getInstance());
        this.directionUtil = Inheritance.upcast(?*DirectionUtil, DirectionUtil.getInstance());
        
        
    }
    

    pub fn create3(angleInfo: ?*AngleInfo, circularIndexUtil: ?*CircularIndexUtil, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(IndexedAnimation, "create1", .{ animationBehavior }).*;
        this.initFields();
        this.angleInfo = angleInfo;
        this.circularIndexUtil = circularIndexUtil;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn nextRotationX(self: *Self) void {
        _ = self;
    }
    

    pub fn previousRotationX(self: *Self) void {
        _ = self;
    }
    

    pub fn nextRotation(self: *Self) void {
        _ = Inheritance.call(self.angleInfo.?, "adjustAngle", .{ self.circularIndexUtil.?.next() });
    }
    

    pub fn previousRotation(self: *Self) void {
        _ = Inheritance.call(self.angleInfo.?, "adjustAngle", .{ self.circularIndexUtil.?.previous() });
    }
    

    pub fn nextRotationZ(self: *Self) void {
        _ = self;
    }
    

    pub fn previousRotationZ(self: *Self) void {
        _ = self;
    }
    

    pub fn setFrame(self: *Self, index: i32) void {
        _ = Inheritance.call(self.circularIndexUtil.?, "setIndex", .{ index });
        const newFrame: i32 = self.circularIndexUtil.?.getIndex();
        _ = Inheritance.call(self.angleInfo.?, "adjustAngle", .{ newFrame });
    }
    

    pub fn setFrameByDirection(self: *Self, direction: ?*Direction) void {
        const angle: ?*Angle = Inheritance.upcast(?*Angle, Inheritance.call(self.directionUtil.?, "getFrameAngle", .{ direction }));
        _ = Inheritance.call(self, "adjustFrameToAngle", .{ angle });
    }
    

    pub fn setFrameToAngle(self: *Self, angle: ?*Angle) void {
        _ = Inheritance.call(self, "adjustFrameToAngle", .{ angle });
    }
    

    pub fn adjustFrameToAngle(self: *Self, angle: ?*Angle) void {
        _ = Inheritance.call(self, "adjustFrame", .{ angle.?.getValue() });
    }
    

    pub fn adjustFrame(self: *Self, angle: i16) void {
        _ = Inheritance.call(self, "setFrame", .{ Inheritance.call(self.frameUtil.?, "getFrameForAngle", .{ angle, @as(i32, @intCast(Inheritance.receiverOf(self.angleInfo.?.getAngleIncrementInfo().?, "getAngleIncrement").getAngleIncrement())) }) });
    }
    

    pub fn getFrame(self: *Self) i32 {
        return self.circularIndexUtil.?.getIndex();
    }
    

    pub fn getSize(self: *Self) i32 {
        return self.circularIndexUtil.?.getSize();
    }
    

    pub fn getAngleInfoP(self: *Self) ?*AngleInfo {
        return self.angleInfo;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.base.toString() }).?, "append", .{ String.literal("circularIndexUtil: ") }).?, "append", .{ Object.toString(Object.of(self.circularIndexUtil)) }).?, "append", .{ String.literal("angleInfo: ") }).?, "append", .{ Object.toString(Object.of(self.angleInfo)) }))));
    }
};

