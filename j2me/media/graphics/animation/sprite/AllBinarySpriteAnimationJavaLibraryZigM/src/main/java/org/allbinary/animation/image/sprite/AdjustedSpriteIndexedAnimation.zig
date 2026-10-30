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
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const Sprite = @import("javax/microedition/lcdui/game/Sprite.zig").Sprite;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorUtil = @import("org/allbinary/graphics/color/BasicColorUtil.zig").BasicColorUtil;
const SpriteIndexedAnimation = @import("org/allbinary/animation/image/sprite/SpriteIndexedAnimation.zig").SpriteIndexedAnimation;

pub const AdjustedSpriteIndexedAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.sprite.AdjustedSpriteIndexedAnimation";
    base: SpriteIndexedAnimation = undefined,
    dx: i32 = 0,
    dy: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create6(sprite: ?*Sprite, image: ?*Image, basicColorArray: []?*BasicColor, dx: i32, dy: i32, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(SpriteIndexedAnimation, "create4", .{ sprite, image, basicColorArray, animationBehavior }).*;
        this.initFields();
        this.dx = dx;
        this.dy = dy;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paintFrame(self: *Self, graphics: ?*Graphics, frame: i32, x: i32, y: i32) void {
        _ = Inheritance.call(self, "setFrame", .{ frame });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "sprite").*.?, "setPosition", .{ x + self.dx, y + self.dy });
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
    }
    

    pub fn paintXY(self: *Self, g: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "sprite").*.?, "setPosition", .{ x + self.dx, y + self.dy });
        _ = Inheritance.call(&self.base, "paint", .{ g });
    }
    

    pub fn paint(self: *Self, g: ?*Graphics) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "sprite").*.?, "setPosition", .{ self.dx, self.dy });
        _ = Inheritance.call(&self.base, "paint", .{ g });
    }
};

