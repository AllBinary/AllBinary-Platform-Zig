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
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const VectorAnimationInterface = @import("org/allbinary/animation/VectorAnimationInterface.zig").VectorAnimationInterface;

pub const VectorAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.VectorAnimation";
    pub const java_interfaces = .{ VectorAnimationInterface };
    base: IndexedAnimation = undefined,
    currentPoints: [][][]i32 = &.{},
    circularIndexUtil: ?*CircularIndexUtil = null,
    // Implements VectorAnimationInterface

    fn initFields(this: *Self) void {
        this.currentPoints = NullUtil.getInstance().?.NULL_INT_ARRAY_ARRAY_ARRAY;
        this.circularIndexUtil = Inheritance.upcast(?*CircularIndexUtil, Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ 0 }));
    }
    

    pub fn createVectorAnimation(currentPoints2: [][]i32, basicColor: ?*BasicColor, animationBehavior: ?*AnimationBehavior) ?*VectorAnimation {
        const currentPoints: [][][]i32 = undefined // Otherwise - newArray - 3
;
        const size: i32 = @as(i32, @intCast(currentPoints2.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            currentPoints[@intCast(0)][@intCast(index)][@intCast(0)] = Inheritance.upcast(@TypeOf(currentPoints[@intCast(0)][@intCast(index)][@intCast(0)]), currentPoints2[@intCast(index)][@intCast(0)]);
            currentPoints[@intCast(0)][@intCast(index)][@intCast(1)] = Inheritance.upcast(@TypeOf(currentPoints[@intCast(0)][@intCast(index)][@intCast(1)]), currentPoints2[@intCast(index)][@intCast(1)]);
            }
        }
        return Inheritance.callStatic(VectorAnimation, "create3", .{ currentPoints, basicColor, animationBehavior });
    }
    

    pub fn create3(currentPoints: [][][]i32, basicColor: ?*BasicColor, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(IndexedAnimation, "create1", .{ animationBehavior }).*;
        this.initFields();
        _ = Inheritance.call(this, "setPoints", .{ currentPoints });
        _ = Inheritance.call(this, "setBasicColorP", .{ basicColor });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        var changed: bool = false;
        if (Inheritance.receiver(self, "getBasicColorP").getBasicColorP() == null or !Object.same(Inheritance.receiverOf(Inheritance.receiver(self, "getBasicColorP").getBasicColorP().?, "intValue").intValue(), basicColor.?.intValue())) {
            changed = true;
        }
        _ = Inheritance.call(&self.base, "setBasicColorP", .{ basicColor });
        if (changed) {
            _ = self.updateModifiers();
        }
    }
    

    pub fn changeBasicColor(self: *Self, basicColor: ?*BasicColor) void {
        var changed: bool = false;
        if (Inheritance.receiver(self, "getChangeBasicColor").getChangeBasicColor() == null or !Object.same(Inheritance.receiverOf(Inheritance.receiver(self, "getChangeBasicColor").getChangeBasicColor().?, "intValue").intValue(), basicColor.?.intValue())) {
            changed = true;
        }
        _ = Inheritance.call(&self.base, "changeBasicColor", .{ basicColor });
        if (changed) {
            _ = self.updateModifiers();
        }
    }
    

    pub fn setAlpha(self: *Self, alpha: i32) void {
        var changed: bool = false;
        if (Inheritance.fieldPointer(self, "alphaP").* != alpha) {
            changed = true;
        }
        _ = Inheritance.call(&self.base, "setAlpha", .{ alpha });
        if (changed) {
            _ = self.updateModifiers();
        }
    }
    

    pub fn setScale(self: *Self, scaleX: f32, scaleY: f32) void {
        _ = scaleX;
        _ = scaleY;
        _ = self;
    }
    

    pub fn setMaxScale(self: *Self, maxScaleX: f32, maxScaleY: f32) void {
        _ = maxScaleX;
        _ = maxScaleY;
        _ = self;
    }
    

    pub fn updateModifiers(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn getAnimationSize(self: *Self) i32 {
        return self.getSize();
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
    

    pub fn nextFrame(self: *Self) void {
        _ = self.circularIndexUtil.?.next();
    }
    

    pub fn previousFrame(self: *Self) void {
        _ = self.circularIndexUtil.?.previous();
    }
    

    pub fn paintVectors(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        { // try
            var nextPointX: i32 = 0;
            var nextPointY: i32 = 0;
            var nextPoint: []i32 = &.{};
            var point: []i32 = &.{};
            const currentPointsFrame: [][]i32 = self.currentPoints[@intCast(self.circularIndexUtil.?.getIndex())];
            const size: i32 = @as(i32, @intCast(currentPointsFrame.len));
            var index: i32 = size - 2;
            while (value_N68439: { index -= 1; break :value_N68439 index; } >= 0) {
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
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "basicSetColorUtil").*.?, "setBasicColorP", .{ graphics, Inheritance.fieldPointer(self, "basicColor").* });
        _ = Inheritance.call(self, "paintVectors", .{ graphics, x, y });
    }
    

    pub fn getFrame(self: *Self) i32 {
        return self.circularIndexUtil.?.getIndex();
    }
    

    pub fn setFrame(self: *Self, index: i32) void {
        _ = Inheritance.call(self.circularIndexUtil.?, "setIndex", .{ index });
    }
    

    pub fn getPoints(self: *Self, frame: i32) [][]i32 {
        return self.currentPoints[@intCast(frame)];
    }
    

    pub fn setPoints(self: *Self, currentPoints: [][][]i32) void {
        self.currentPoints = currentPoints;
        self.circularIndexUtil = Inheritance.upcast(@TypeOf(self.circularIndexUtil), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ @as(i32, @intCast(currentPoints.len)) }));
    }
};

