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
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const RotationAnimation = @import("org/allbinary/animation/RotationAnimation.zig").RotationAnimation;
const VectorAnimationInterface = @import("org/allbinary/animation/VectorAnimationInterface.zig").VectorAnimationInterface;

pub const VectorBaseRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.VectorBaseRotationAnimation";
    pub const java_interfaces = .{ VectorAnimationInterface };
    base: RotationAnimation = undefined,
    currentPoints: [][][]i32 = &.{},
    // Implements VectorAnimationInterface

    fn initFields(this: *Self) void {
        this.currentPoints = NullUtil.getInstance().?.NULL_INT_ARRAY_ARRAY_ARRAY;
    }
    

    pub fn create4(angleInfo: ?*AngleInfo, currentPoints: [][][]i32, basicColor: ?*BasicColor, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RotationAnimation, "create3", .{ angleInfo, Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ @divTrunc(360, Inheritance.receiverOf(angleInfo.?.getAngleIncrementInfo().?, "getAngleIncrement").getAngleIncrement()) }), animationBehavior }).*;
        this.initFields();
        _ = Inheritance.call(this, "setPoints", .{ currentPoints });
        _ = Inheritance.call(this, "setBasicColorP", .{ basicColor });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getAnimationSize(self: *Self) i32 {
        return self.getSize();
    }
    

    pub fn getFrame(self: *Self) i32 {
        return Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex();
    }
    

    pub fn setFrame(self: *Self, index: i32) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "setIndex", .{ index });
    }
    

    pub fn nextFrame(self: *Self) void {
        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "next").next();
    }
    

    pub fn previousFrame(self: *Self) void {
        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "previous").previous();
    }
    

    pub fn getSize(self: *Self) i32 {
        return @as(i32, @intCast(self.currentPoints.len));
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
        _ = Inheritance.call(Inheritance.fieldPointer(self, "basicSetColorUtil").*.?, "setBasicColorP", .{ graphics, Inheritance.fieldPointer(self, "basicColor").* });
        { // try
            var nextPointX: i32 = 0;
            var nextPointY: i32 = 0;
            var nextPoint: []i32 = &.{};
            var point: []i32 = &.{};
            const currentPointsFrame: [][]i32 = self.currentPoints[@intCast(Inheritance.receiverOf(Inheritance.fieldPointer(self, "circularIndexUtil").*.?, "getIndex").getIndex())];
            const size: i32 = @as(i32, @intCast(currentPointsFrame.len));
            var index: i32 = size - 2;
            while (value_N67279: { index -= 1; break :value_N67279 index; } >= 0) {
                nextPoint = Inheritance.upcast(@TypeOf(nextPoint), currentPointsFrame[@intCast(index)]);
                point = Inheritance.upcast(@TypeOf(point), currentPointsFrame[@intCast(index + 1)]);
                nextPointX = nextPoint[@intCast(0)];
                nextPointY = nextPoint[@intCast(1)];
                if (nextPointX != 1000) {
                    _ = Inheritance.call(graphics.?, "drawLine", .{ point[@intCast(0)] + x, point[@intCast(1)] + y, nextPointX + x, nextPointY + y });
                } else {
                    index -= 1;
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("paintVectors"), e });
    }
    

    pub fn getPoints(self: *Self, frame: i32) [][]i32 {
        return self.currentPoints[@intCast(frame)];
    }
    

    pub fn setPoints(self: *Self, currentPoints: [][][]i32) void {
        self.currentPoints = currentPoints;
        Inheritance.fieldPointer(self, "circularIndexUtil").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "circularIndexUtil").*), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ @as(i32, @intCast(self.currentPoints.len)) }));
    }
};

