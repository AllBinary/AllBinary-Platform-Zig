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
const RotationAnimation = @import("org/allbinary/animation/RotationAnimation.zig").RotationAnimation;
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const Angle = @import("org/allbinary/math/Angle.zig").Angle;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;

pub const SimultaneousCompoundRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation";
    base: RotationAnimation = undefined,
    animationInterfaceArray: []?*RotationAnimation = &.{},

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create2(animationInterfaceArray: []?*RotationAnimation, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RotationAnimation, "create3", .{ Inheritance.callStatic(AngleInfo, "getInstance", .{ AngleFactory.getInstance().?.QUARTER_TOTAL_ANGLE }), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ 4 }), animationBehavior }).*;
        this.initFields();
        this.animationInterfaceArray = animationInterfaceArray;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setFrame(self: *Self, frameIndex: i32) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N66149: { index -= 1; break :value_N66149 index; } >= 0) {
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "setFrame", .{ frameIndex });
            }
        }
    }
    

    pub fn getFrame(self: *Self) i32 {
        return Inheritance.receiver(self.animationInterfaceArray[@intCast(0)].?, "getFrame").getFrame();
    }
    

    // throws Exception
    pub fn getAnimationSize(self: *Self) i32 {
        return Inheritance.receiver(self.animationInterfaceArray[@intCast(0)].?, "getAnimationSize").getAnimationSize();
    }
    

    pub fn getSize(self: *Self) i32 {
        return Inheritance.receiver(self.animationInterfaceArray[@intCast(0)].?, "getSize").getSize();
    }
    

    pub fn previousFrame(self: *Self) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N66532: { index -= 1; break :value_N66532 index; } >= 0) {
            _ = Inheritance.receiver(self.animationInterfaceArray[@intCast(index)].?, "previousFrame").previousFrame();
            }
        }
    }
    

    // throws Exception
    pub fn nextFrame(self: *Self) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N66677: { index -= 1; break :value_N66677 index; } >= 0) {
            _ = Inheritance.receiver(self.animationInterfaceArray[@intCast(index)].?, "nextFrame").nextFrame();
            }
        }
    }
    

    pub fn previousRotation(self: *Self) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N66833: { index -= 1; break :value_N66833 index; } >= 0) {
            _ = Inheritance.receiver(self.animationInterfaceArray[@intCast(index)].?, "previousRotation").previousRotation();
            }
        }
    }
    

    pub fn nextRotation(self: *Self) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N66978: { index -= 1; break :value_N66978 index; } >= 0) {
            _ = Inheritance.receiver(self.animationInterfaceArray[@intCast(index)].?, "nextRotation").nextRotation();
            }
        }
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
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N67272: { index -= 1; break :value_N67272 index; } >= 0) {
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "paintXY", .{ graphics, x, y });
            }
        }
    }
    

    pub fn paintThreedXYZ(self: *Self, graphics: ?*Graphics, x: i32, y: i32, z: i32) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N67519: { index -= 1; break :value_N67519 index; } >= 0) {
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "paintThreedXYZ", .{ graphics, x, y, z });
            }
        }
    }
    

    pub fn setFrameByDirection(self: *Self, direction: ?*Direction) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N67762: { index -= 1; break :value_N67762 index; } >= 0) {
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "setFrameByDirection", .{ direction });
            }
        }
    }
    

    pub fn setFrameToAngle(self: *Self, angle: ?*Angle) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N67945: { index -= 1; break :value_N67945 index; } >= 0) {
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "setFrameToAngle", .{ angle });
            }
        }
    }
    

    pub fn adjustFrameToAngle(self: *Self, newAngle: ?*Angle) void {
        _ = Inheritance.call(self, "adjustFrame", .{ newAngle.?.getValue() });
    }
    

    pub fn adjustFrame(self: *Self, angle: i16) void {
        {
            var index: i32 = @as(i32, @intCast(self.animationInterfaceArray.len));
            while (value_N68225: { index -= 1; break :value_N68225 index; } >= 0) {
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "adjustFrame", .{ angle });
            }
        }
    }
    

    pub fn getAngleInfoP(self: *Self) ?*AngleInfo {
        return Inheritance.upcast(?*AngleInfo, Inheritance.receiver(self.animationInterfaceArray[@intCast(0)].?, "getAngleInfoP").getAngleInfoP());
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
            while (value_N68619: { index -= 1; break :value_N68619 index; } >= 0) {
            _ = Inheritance.call(self.animationInterfaceArray[@intCast(index)].?, "set", .{ gl });
            }
        }
    }
};

