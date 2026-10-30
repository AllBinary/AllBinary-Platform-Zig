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

pub const BottomToTopImageAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.BottomToTopImageAnimation";
    base: ImageSegmentAnimation = undefined,
    startHeight: i32 = 0,
    currentHeight: i32 = 0,
    anchor: i32 = 0,

    fn initFields(this: *Self) void {
        this.startHeight = 0;
        this.currentHeight = 0;
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
        self.startHeight = (divide_N66223: { const left_N66223 = Inheritance.receiver(self, "getDrawHeight").getDrawHeight() * Inheritance.receiver(self, "getFrame").getFrame(); const right_N66223 = Inheritance.receiver(self, "getSize").getSize(); break :divide_N66223 if (comptime @typeInfo(@TypeOf(left_N66223)) == .int or @TypeOf(left_N66223) == comptime_int) @divTrunc(left_N66223, right_N66223) else left_N66223 / right_N66223; });
        self.currentHeight = Inheritance.receiver(self, "getDrawHeight").getDrawHeight() - self.startHeight;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(graphics.?, "drawRegion", .{ Inheritance.receiver(self, "getImage").getImage(), Inheritance.receiver(self, "getStartX").getStartX(), self.startHeight, Inheritance.receiver(self, "getDrawWidth").getDrawWidth(), self.currentHeight, Sprite.TRANS_NONE, x, y + self.startHeight, self.anchor });
    }
};

