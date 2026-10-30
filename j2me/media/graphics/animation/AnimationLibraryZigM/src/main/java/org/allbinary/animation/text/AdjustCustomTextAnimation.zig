// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.text

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const CustomTextAnimation = @import("org/allbinary/animation/text/CustomTextAnimation.zig").CustomTextAnimation;

pub const AdjustCustomTextAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.text.AdjustCustomTextAnimation";
    base: CustomTextAnimation = undefined,
    dx: i32 = 0,
    dy: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create5(text: ?*String, fontSize: i32, dx: i32, dy: i32, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CustomTextAnimation, "create3", .{ text, fontSize, animationBehavior }).*;
        this.initFields();
        this.dx = dx;
        this.dy = dy;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getDx(self: *Self) i32 {
        return self.dx;
    }
    

    pub fn setDx(self: *Self, dx: i32) void {
        self.dx = dx;
    }
    

    pub fn getDy(self: *Self) i32 {
        return self.dy;
    }
    

    pub fn setDy(self: *Self, dy: i32) void {
        self.dy = dy;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(&self.base, "paintXY", .{ graphics, x + self.dx, y + self.dy });
    }
};

