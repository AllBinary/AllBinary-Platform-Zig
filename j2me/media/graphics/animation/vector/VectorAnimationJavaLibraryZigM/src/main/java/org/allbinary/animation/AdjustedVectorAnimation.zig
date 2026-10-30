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
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const VectorAnimation = @import("org/allbinary/animation/VectorAnimation.zig").VectorAnimation;

pub const AdjustedVectorAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.AdjustedVectorAnimation";
    base: VectorAnimation = undefined,
    dx: i32 = 0,
    dy: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create5(currentPoints: [][][]i32, basicColor: ?*BasicColor, dx: i32, dy: i32, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(VectorAnimation, "create3", .{ currentPoints, basicColor, animationBehavior }).*;
        this.initFields();
        this.dx = dx;
        this.dy = dy;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(&self.base, "paintXY", .{ graphics, x + self.dx, y + self.dy });
    }
};

