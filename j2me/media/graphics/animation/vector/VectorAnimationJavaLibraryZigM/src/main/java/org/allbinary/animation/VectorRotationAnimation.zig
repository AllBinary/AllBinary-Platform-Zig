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
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const Angle = @import("org/allbinary/math/Angle.zig").Angle;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const VectorBaseRotationAnimation = @import("org/allbinary/animation/VectorBaseRotationAnimation.zig").VectorBaseRotationAnimation;

pub const VectorRotationAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.VectorRotationAnimation";
    base: VectorBaseRotationAnimation = undefined,
    

    pub fn create3(currentPoints: [][][]i32, basicColor: ?*BasicColor, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(VectorBaseRotationAnimation, "create4", .{ Inheritance.callStatic(AngleInfo, "getInstance", .{ @as(i16, @intCast(((divide_N65760: { const left_N65760 = AngleFactory.getInstance().?.TOTAL_ANGLE; const right_N65760 = @as(i32, @intCast(currentPoints.len)); break :divide_N65760 if (comptime @typeInfo(@TypeOf(left_N65760)) == .int or @TypeOf(left_N65760) == comptime_int) @divTrunc(left_N65760, right_N65760) else left_N65760 / right_N65760; })))) }), currentPoints, basicColor, animationBehavior }).*;
        _ = Inheritance.call(Inheritance.fieldPointer(this, "angleInfo").*.?, "adjustAngle", .{ Inheritance.receiver(this, "getFrame").getFrame() });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setFrameByDirection(self: *Self, direction: ?*Direction) void {
        const angle: ?*Angle = Inheritance.upcast(?*Angle, Inheritance.call(Inheritance.fieldPointer(self, "directionUtil").*.?, "getFrameAngle", .{ direction }));
        _ = Inheritance.call(self, "adjustFrameToAngle", .{ angle });
    }
    

    pub fn setFrameToAngle(self: *Self, angle: ?*Angle) void {
        _ = Inheritance.call(self, "adjustFrameToAngle", .{ angle });
    }
    

    pub fn setFrame(self: *Self, index: i32) void {
        _ = Inheritance.call(&self.base, "setFrame", .{ index });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "angleInfo").*.?, "adjustAngle", .{ Inheritance.receiver(self, "getFrame").getFrame() });
    }
    

    pub fn adjustFrame(self: *Self, newAngle: i16) void {
        _ = Inheritance.call(self, "setFrame", .{ Inheritance.call(Inheritance.fieldPointer(self, "frameUtil").*.?, "getFrameForAngle", .{ newAngle, @as(i32, @intCast(Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.fieldPointer(self, "angleInfo").*.?, "getAngleIncrementInfo").getAngleIncrementInfo().?, "getAngleIncrement").getAngleIncrement())) }) });
    }
    

    pub fn adjustFrameToAngle(self: *Self, newAngle: ?*Angle) void {
        _ = Inheritance.call(self, "adjustFrame", .{ newAngle.?.getValue() });
    }
};

