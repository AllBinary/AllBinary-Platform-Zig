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
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;

pub const FillAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.FillAnimation";
    base: IndexedAnimation = undefined,
    pixelBuffer: []i32 = &.{},
    width: i32 = 0,
    height: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create4(pixelBuffer: []i32, width: i32, height: i32, animationBehavior: ?*AnimationBehavior) *Self {
        _ = width;
        _ = height;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(IndexedAnimation, "create1", .{ animationBehavior }).*;
        this.initFields();
        this.width = 100;
        this.height = 100;
        this.pixelBuffer = pixelBuffer;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        var changed: bool = false;
        if (Inheritance.receiver(self, "getBasicColorP").getBasicColorP() == null or !Object.same(Inheritance.receiverOf(Inheritance.receiver(self, "getBasicColorP").getBasicColorP().?, "intValue").intValue(), basicColor.?.intValue())) {
            changed = true;
        }
        _ = Inheritance.call(&self.base, "setBasicColorP", .{ basicColor });
        if (changed) {
            _ = self.updateModifiers();
        }
    }
    

    pub fn changeBasicColor(self: *Self, basicColor: ?*BasicColor) void {
        var changed: bool = false;
        if (Inheritance.receiver(self, "getChangeBasicColor").getChangeBasicColor() == null or !Object.same(Inheritance.receiverOf(Inheritance.receiver(self, "getChangeBasicColor").getChangeBasicColor().?, "intValue").intValue(), basicColor.?.intValue())) {
            changed = true;
        }
        _ = Inheritance.call(&self.base, "changeBasicColor", .{ basicColor });
        if (changed) {
            _ = self.updateModifiers();
        }
    }
    

    pub fn setAlpha(self: *Self, alpha: i32) void {
        var changed: bool = false;
        if (Inheritance.fieldPointer(self, "alphaP").* != alpha) {
            changed = true;
        }
        _ = Inheritance.call(&self.base, "setAlpha", .{ alpha });
        if (changed) {
            _ = self.updateModifiers();
        }
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
    

    pub fn updateModifiers(self: *Self) void {
        _ = self;
    }
    

    pub fn paint(self: *Self, g: ?*Graphics) void {
        _ = Inheritance.call(g.?, "drawRGB", .{ self.pixelBuffer, 0, self.width, 0, 0, self.width, self.height, true });
    }
};

