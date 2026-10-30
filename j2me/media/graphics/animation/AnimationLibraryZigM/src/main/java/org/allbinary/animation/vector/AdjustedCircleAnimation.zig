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
const AndroidUtil = @import("org/allbinary/AndroidUtil.zig").AndroidUtil;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const CircleAnimation = @import("org/allbinary/animation/vector/CircleAnimation.zig").CircleAnimation;

pub const AdjustedCircleAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.vector.AdjustedCircleAnimation";
    base: CircleAnimation = undefined,
    xAdjustment: i32 = 0,
    yAdjustment: i32 = 0,

    fn initFields(this: *Self) void {
        this.xAdjustment = 0;
        this.yAdjustment = 0;
    }
    

    pub fn createAnimation(width: i32, height: i32, xAdjustment: i32, yAdjustment: i32, basicColor: ?*BasicColor) ?*AdjustedCircleAnimation {
        const adjustedCircleAnimation: ?*AdjustedCircleAnimation = Inheritance.callStatic(AdjustedCircleAnimation, "create3", .{ width, height, basicColor });
        _ = Inheritance.call(adjustedCircleAnimation.?, "initXY", .{ xAdjustment, yAdjustment });
        return adjustedCircleAnimation;
    }
    

    pub fn createW(width: i32, height: i32, innerWidth: i32, basicColor: ?*BasicColor) ?*AdjustedCircleAnimation {
        const adjustedCircleAnimation: ?*AdjustedCircleAnimation = Inheritance.callStatic(AdjustedCircleAnimation, "create3", .{ width, height, basicColor });
        _ = Inheritance.call(adjustedCircleAnimation.?, "init", .{ innerWidth });
        return adjustedCircleAnimation;
    }
    

    pub fn create3(width: i32, height: i32, basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CircleAnimation, "create3", .{ width, height, basicColor }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initXY(self: *Self, xAdjustment: i32, yAdjustment: i32) void {
        self.xAdjustment = xAdjustment;
        self.yAdjustment = yAdjustment;
    }
    

    pub fn init(self: *Self, innerWidth: i32) void {
        if (AndroidUtil.isAndroid()) {
            const widthPortion: i32 = (@divTrunc(((@divTrunc(innerWidth, 3)) * 10), 7));
            self.xAdjustment = -((Inheritance.fieldPointer(self, "width").* >> @intCast(1)) - widthPortion);
            self.yAdjustment = self.xAdjustment;
        } else {
            self.xAdjustment = -((Inheritance.fieldPointer(self, "width").* >> @intCast(1)) - innerWidth);
            self.yAdjustment = self.xAdjustment;
        }
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "basicSetColorUtil").*.?, "setBasicColorP3", .{ graphics, Inheritance.receiver(self, "getBasicColorP").getBasicColorP(), Inheritance.receiver(self, "getColor").getColor() });
        _ = Inheritance.call(graphics.?, "drawArc", .{ x + self.xAdjustment, y + self.yAdjustment, Inheritance.fieldPointer(self, "width").*, Inheritance.fieldPointer(self, "height").*, 0, Inheritance.fieldPointer(self, "TOTAL_ANGLE").* });
    }
};

