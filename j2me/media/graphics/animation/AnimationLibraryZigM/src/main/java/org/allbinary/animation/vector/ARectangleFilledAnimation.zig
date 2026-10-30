// Generated Code Do Not Modify
// package org.allbinary.animation.vector

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const RectangleFilledAnimation = @import("org/allbinary/animation/vector/RectangleFilledAnimation.zig").RectangleFilledAnimation;

pub const ARectangleFilledAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.vector.ARectangleFilledAnimation";
    base: RectangleFilledAnimation = undefined,
    x: i32 = 0,
    y: i32 = 0,

    fn initFields(this: *Self) void {
        this.x = 0;
        this.y = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RectangleFilledAnimation, "create3", .{ 0, 0, BasicColorFactory.getInstance().?.BLACK }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn nextFrame(self: *Self) void {
        _ = self;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, unusedX: i32, unusedY: i32) void {
        _ = unusedX;
        _ = unusedY;
        _ = Inheritance.call(&self.base, "paintXY", .{ graphics, self.x, self.y });
    }
};

