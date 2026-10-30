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
// const GL = @import("javax/microedition/khronos/opengles/GL.zig").GL;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const BasicColorSetUtil = @import("org/allbinary/graphics/color/BasicColorSetUtil.zig").BasicColorSetUtil;
const OpenGLSurfaceChangedInterface = @import("org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.zig").OpenGLSurfaceChangedInterface;
const AnimationInterface = @import("org/allbinary/animation/AnimationInterface.zig").AnimationInterface;

pub const Animation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.Animation";
    pub const java_interfaces = .{ AnimationInterface };
    basicSetColorUtil: ?*BasicColorSetUtil = null,
    basicColor: ?*BasicColor = null,
    colorP: i32 = 0,
    changeBasicColorP: ?*BasicColor = null,
    changeColorP: i32 = 0,
    alphaP: i32 = 0,
    // Implements AnimationInterface
    // Implements OpenGLSurfaceChangedInterface

    fn initFields(this: *Self) void {
        this.basicSetColorUtil = Inheritance.upcast(?*BasicColorSetUtil, BasicColorSetUtil.getInstance());
        this.basicColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.WHITE);
        this.colorP = 0;
        this.changeBasicColorP = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.NULL_COLOR);
        this.changeColorP = 0;
        this.alphaP = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn setAlpha(self: *Self, alpha: i32) void {
        self.alphaP = alpha;
    }
    

    // throws Exception
    pub fn nextFrame(self: *Self) void {
        _ = self;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = x;
        _ = y;
        _ = Inheritance.call(self.basicSetColorUtil.?, "setBasicColorP3", .{ graphics, self.getBasicColorP(), self.getColor() });
    }
    

    pub fn paintThreedXYZ(self: *Self, graphics: ?*Graphics, x: i32, y: i32, z: i32) void {
        _ = graphics;
        _ = x;
        _ = y;
        _ = z;
        _ = self;
    }
    

    pub fn isThreed(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getBasicColorP(self: *Self) ?*BasicColor {
        return self.basicColor;
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        self.basicColor = basicColor;
        self.colorP = self.basicColor.?.intValue();
    }
    

    pub fn setBackgroundBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        _ = basicColor;
        _ = self;
    }
    

    pub fn getChangeBasicColor(self: *Self) ?*BasicColor {
        return self.changeBasicColorP;
    }
    

    pub fn changeBasicColor(self: *Self, basicColor: ?*BasicColor) void {
        self.changeBasicColorP = basicColor;
        self.changeColorP = self.changeBasicColorP.?.intValue();
    }
    

    pub fn getChangeColor(self: *Self) i32 {
        return self.changeColorP;
    }
    

    pub fn getColor(self: *Self) i32 {
        return self.colorP;
    }
    

    pub fn setScale(self: *Self, scaleX: f32, scaleY: f32) void {
        _ = scaleX;
        _ = scaleY;
        _ = self;
    }
    

    pub fn setMaxScale(self: *Self, maxScaleX: f32, maxScaleY: f32) void {
        _ = maxScaleX;
        _ = maxScaleY;
        _ = self;
    }
    

    // throws Exception
    pub fn set(self: *Self, gl: ?*GL) void {
        _ = gl;
        _ = self;
    }
    

    pub fn setDx(self: *Self, dx: i32) void {
        _ = dx;
        _ = self;
    }
    

    pub fn getDx(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn setDy(self: *Self, dy: i32) void {
        _ = dy;
        _ = self;
    }
    

    pub fn getDy(self: *Self) i32 {
        _ = self;
        return 0;
    }
};

