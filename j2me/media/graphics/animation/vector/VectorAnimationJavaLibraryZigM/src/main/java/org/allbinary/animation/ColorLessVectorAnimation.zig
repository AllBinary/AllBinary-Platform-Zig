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
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const VectorAnimation = @import("org/allbinary/animation/VectorAnimation.zig").VectorAnimation;

pub const ColorLessVectorAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.ColorLessVectorAnimation";
    base: VectorAnimation = undefined,
    

    pub fn create2(currentPoints: [][][]i32, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(VectorAnimation, "create3", .{ currentPoints, BasicColorFactory.getInstance().?.WHITE, animationBehavior }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(self, "paintVectors", .{ graphics, x, y });
    }
};

