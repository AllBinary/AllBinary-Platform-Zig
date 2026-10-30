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
// package org.allbinary.animation.vector

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const ColorCompositeInterface = @import("org/allbinary/graphics/color/ColorCompositeInterface.zig").ColorCompositeInterface;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;

pub const CircleAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.vector.CircleAnimation";
    base: Animation = undefined,
    TOTAL_ANGLE: i32 = 0,
    width: i32 = 0,
    height: i32 = 0,
    // Implements ColorCompositeInterface

    fn initFields(this: *Self) void {
        this.TOTAL_ANGLE = @as(i32, @intCast(AngleFactory.getInstance().?.TOTAL_ANGLE));
        
        
    }
    

    pub fn create3(width: i32, height: i32, basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Animation.create().*;
        this.initFields();
        this.width = width;
        this.height = height;
        _ = Inheritance.call(this, "setBasicColorP", .{ basicColor });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn nextFrame(self: *Self) void {
        _ = self;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "basicSetColorUtil").*.?, "setBasicColorP3", .{ graphics, Inheritance.receiver(self, "getBasicColorP").getBasicColorP(), Inheritance.receiver(self, "getColor").getColor() });
        _ = Inheritance.call(graphics.?, "drawArc", .{ x, y, self.width, self.height, 0, self.TOTAL_ANGLE });
    }
};

