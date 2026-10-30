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
// package org.allbinary.animation.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const Sprite = @import("javax/microedition/lcdui/game/Sprite.zig").Sprite;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const PrimitiveIntUtil = @import("org/allbinary/logic/math/PrimitiveIntUtil.zig").PrimitiveIntUtil;
const ImageSegmentAnimation = @import("org/allbinary/animation/image/ImageSegmentAnimation.zig").ImageSegmentAnimation;

pub const RightToLeftImageAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.RightToLeftImageAnimation";
    base: ImageSegmentAnimation = undefined,
    startWidth: i32 = 0,
    currentWidth: i32 = 0,
    anchor: i32 = 0,

    fn initFields(this: *Self) void {
        this.startWidth = 0;
        this.currentWidth = 0;
        this.anchor = Anchor.TOP_LEFT;
    }
    

    pub fn create2(image: ?*Image, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ImageSegmentAnimation, "create3", .{ image, PrimitiveIntUtil.getArrayInstance(), animationBehavior }).*;
        this.initFields();
        _ = Inheritance.call(this, "setFrame", .{ Inheritance.receiver(this, "getSize").getSize() - 1 });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn nextFrame(self: *Self) void {
        _ = self.base.previousFrame();
        _ = self.update();
    }
    

    pub fn previousFrame(self: *Self) void {
        _ = self.base.nextFrame();
        _ = self.update();
    }
    

    pub fn setFrame(self: *Self, index: i32) void {
        _ = Inheritance.call(&self.base, "setFrame", .{ index });
        _ = self.update();
    }
    

    pub fn update(self: *Self) void {
        self.startWidth = (divide_N66230: { const left_N66230 = Inheritance.receiver(self, "getDrawWidth").getDrawWidth() * Inheritance.receiver(self, "getFrame").getFrame(); const right_N66230 = Inheritance.receiver(self, "getSize").getSize(); break :divide_N66230 if (comptime @typeInfo(@TypeOf(left_N66230)) == .int or @TypeOf(left_N66230) == comptime_int) @divTrunc(left_N66230, right_N66230) else left_N66230 / right_N66230; });
        self.currentWidth = Inheritance.receiver(self, "getDrawWidth").getDrawWidth() - self.startWidth;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(graphics.?, "drawRegion", .{ Inheritance.receiver(self, "getImage").getImage(), self.startWidth, Inheritance.receiver(self, "getStartY").getStartY(), self.currentWidth, Inheritance.receiver(self, "getDrawHeight").getDrawHeight(), Sprite.TRANS_NONE, x + self.startWidth, y, self.anchor });
    }
};

