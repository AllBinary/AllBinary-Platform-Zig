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
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const ColorCompositeInterface = @import("org/allbinary/graphics/color/ColorCompositeInterface.zig").ColorCompositeInterface;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;

pub const SpriteIndexedAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.sprite.SpriteIndexedAnimation";
    base: IndexedAnimation = undefined,
    sprite: ?*Sprite = null,
    image: ?*Image = null,
    basicColorArray: []?*BasicColor = &.{},
    // Implements ColorCompositeInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create4(sprite: ?*Sprite, image: ?*Image, basicColorArray: []?*BasicColor, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(IndexedAnimation, "create1", .{ animationBehavior }).*;
        this.initFields();
        this.sprite = sprite;
        this.image = image;
        this.basicColorArray = basicColorArray;
        if (@as(i32, @intCast(this.basicColorArray.len)) != 0 and this.getSize() != @as(i32, @intCast(this.basicColorArray.len))) {
            std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.TOTAL_LABEL }).?, "appendint", .{ this.getSize() }).?, "append", .{ String.literal("!=") }).?, "appendint", .{ @as(i32, @intCast(this.basicColorArray.len)) }))); break :exception error.Exception; }});
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getAnimationSize(self: *Self) i32 {
        return self.getSize();
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(self.basicColorArray.len))) : (index += 1) {
            if (Object.same(basicColor, self.basicColorArray[@intCast(index)])) {
                _ = Inheritance.call(self, "setFrame", .{ index });
                break;
            }
            }
        }
    }
    

    pub fn getBasicColorP(self: *Self) ?*BasicColor {
        if (@as(i32, @intCast(self.basicColorArray.len)) < self.getFrame()) {
            return Inheritance.upcast(?*BasicColor, self.basicColorArray[@intCast(self.getFrame())]);
        } else {
            return Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.WHITE);
        }
    }
    

    pub fn paintFrame(self: *Self, graphics: ?*Graphics, frame: i32, x: i32, y: i32) void {
        _ = Inheritance.call(self, "setFrame", .{ frame });
        _ = Inheritance.call(self.sprite.?, "setPosition", .{ x, y });
        _ = Inheritance.call(self.sprite.?, "paint", .{ graphics });
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(self.sprite.?, "setPosition", .{ x, y });
        _ = Inheritance.call(self.sprite.?, "paint", .{ graphics });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.sprite.?, "paint", .{ graphics });
    }
    

    pub fn nextFrame(self: *Self) void {
        _ = self.sprite.?.nextFrame();
    }
    

    pub fn previousFrame(self: *Self) void {
        _ = self.sprite.?.prevFrame();
    }
    

    pub fn getSize(self: *Self) i32 {
        return self.sprite.?.getRawFrameCount();
    }
    

    pub fn setFrame(self: *Self, frame: i32) void {
        _ = Inheritance.call(self.sprite.?, "setFrame", .{ frame });
    }
    

    pub fn getFrame(self: *Self) i32 {
        return self.sprite.?.getFrame();
    }
    

    pub fn isLastFrame(self: *Self) bool {
        if (self.sprite.?.getFrame() == self.getSize() - 1) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn getLastFrame(self: *Self) i32 {
        return self.getSize();
    }
    

    pub fn setSequence(self: *Self, sequence: []i32) void {
        _ = sequence;
        _ = self;
    }
    

    pub fn getSequence(self: *Self) []i32 {
        _ = self;
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    // throws Exception
    pub fn close(self: *Self) void {
        _ = self;
    }
    

    // throws Throwable
    pub fn finalize(self: *Self) void {
        _ = self;
    }
};

