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
// package org.allbinary.animation.compound

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL = @import("javax/microedition/khronos/opengles/GL.zig").GL;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const RotationAnimation = @import("org/allbinary/animation/RotationAnimation.zig").RotationAnimation;
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const Angle = @import("org/allbinary/math/Angle.zig").Angle;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const CompoundAnimationInterface = @import("org/allbinary/animation/compound/CompoundAnimationInterface.zig").CompoundAnimationInterface;

pub const AutoCompoundRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.compound.AutoCompoundRotationAnimation";
    pub const java_interfaces = .{ CompoundAnimationInterface };
    base: RotationAnimation = undefined,
    animationInterfaceArray: []?*RotationAnimation = &.{},
    // Implements CompoundAnimationInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create2(animationInterfaceArray: []?*RotationAnimation, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RotationAnimation, "create3", .{ Inheritance.callStatic(AngleInfo, "getInstance", .{ AngleFactory.getInstance().?.QUARTER_TOTAL_ANGLE }), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ 4 }), animationBehavior }).*;
        this.initFields();
        this.animationInterfaceArray = animationInterfaceArray;
        Inheritance.fieldPointer(this, "circularIndexUtil").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "circularIndexUtil").*), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ @as(i32, @intCast(this.animationInterfaceArray.len)) }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setFrame(self: *Self, index: i32) void {
        _ = Inheritance.call(self.animationInterfaceArray[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex())].?, "setFrame", .{ index });
    }
    

    pub fn getFrame(self: *Self) i32 {
        return Inheritance.receiver(self.animationInterfaceArray[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex())].?, "getFrame").getFrame();
    }
    

    // throws Exception
    pub fn getAnimationSize(self: *Self) i32 {
        return Inheritance.receiver(self.animationInterfaceArray[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex())].?, "getAnimationSize").getAnimationSize();
    }
    

    pub fn getSize(self: *Self) i32 {
        return Inheritance.receiver(self.animationInterfaceArray[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex())].?, "getSize").getSize();
    }
    

    pub fn previousFrame(self: *Self) void {
        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "previous").previous();
        _ = Inheritance.receiver(self.animationInterfaceArray[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex())].?, "previousFrame").previousFrame();
    }
    

    // throws Exception
    pub fn nextFrame(self: *Self) void {
        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "next").next();
        _ = Inheritance.receiver(self.animationInterfaceArray[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex())].?, "nextFrame").nextFrame();
    }
    

    pub fn previousRotation(self: *Self) void {
        _ = Inheritance.receiver(self.animationInterfaceArray[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex())].?, "previousRotation").previousRotation();
    }
    

    pub fn nextRotation(self: *Self) void {
        _ = Inheritance.receiver(self.animationInterfaceArray[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex())].?, "nextRotation").nextRotation();
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
        _ = Inheritance.call(self.animationInterfaceArray[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex())].?, "paintXY", .{ graphics, x, y });
    }
    

    pub fn paintThreedXYZ(self: *Self, graphics: ?*Graphics, x: i32, y: i32, z: i32) void {
        _ = Inheritance.call(self.animationInterfaceArray[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex())].?, "paintThreedXYZ", .{ graphics, x, y, z });
    }
    

    pub fn getCurrentAnimation(self: *Self) ?*IndexedAnimation {
        return Inheritance.upcast(?*IndexedAnimation, self.animationInterfaceArray[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex())]);
    }
    

    pub fn nextAnimation(self: *Self) void {
        const frame: i32 = self.getFrame();
        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "next").next();
        _ = Inheritance.call(self, "setFrame", .{ frame });
    }
    

    pub fn previousAnimation(self: *Self) void {
        const frame: i32 = self.getFrame();
        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "previous").previous();
        _ = Inheritance.call(self, "setFrame", .{ frame });
    }
    

    pub fn setAnimation(self: *Self, index: i32) void {
        const frame: i32 = self.getFrame();
        _ = Inheritance.call(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "setIndex", .{ index });
        _ = Inheritance.call(self, "setFrame", .{ frame });
    }
    

    pub fn setFrameByDirection(self: *Self, direction: ?*Direction) void {
        _ = Inheritance.call(self.animationInterfaceArray[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex())].?, "setFrameByDirection", .{ direction });
    }
    

    pub fn setFrameToAngle(self: *Self, angle: ?*Angle) void {
        _ = Inheritance.call(self.animationInterfaceArray[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex())].?, "setFrameToAngle", .{ angle });
    }
    

    pub fn adjustFrameToAngle(self: *Self, newAngle: ?*Angle) void {
        _ = Inheritance.call(self, "adjustFrame", .{ newAngle.?.getValue() });
    }
    

    pub fn adjustFrame(self: *Self, angle: i16) void {
        _ = Inheritance.call(self.animationInterfaceArray[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex())].?, "adjustFrame", .{ angle });
    }
    

    pub fn getAngleInfoP(self: *Self) ?*AngleInfo {
        return Inheritance.upcast(?*AngleInfo, Inheritance.receiver(self.animationInterfaceArray[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex())].?, "getAngleInfoP").getAngleInfoP());
    }
    

    pub fn getAnimationInterfaceArray(self: *Self) []?*RotationAnimation {
        return self.animationInterfaceArray;
    }
    

    pub fn setAnimationInterfaceArray(self: *Self, animationInterfaceArray: []?*RotationAnimation) void {
        self.animationInterfaceArray = animationInterfaceArray;
    }
    

    // throws Exception
    pub fn set(self: *Self, gl: ?*GL) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N68659: { index -= 1; break :value_N68659 index; } >= 0) {
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "set", .{ gl });
            }
        }
    }
};

