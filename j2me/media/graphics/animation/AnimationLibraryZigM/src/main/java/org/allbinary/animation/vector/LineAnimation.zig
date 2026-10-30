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
const PositionInterface = @import("org/allbinary/layer/PositionInterface.zig").PositionInterface;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;

pub const LineAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.vector.LineAnimation";
    base: Animation = undefined,
    newLine: [][]i32 = &.{},
    tempLine: [][]i32 = &.{},
    line: [][]i32 = &.{},
    // Implements ColorCompositeInterface
    // Implements PositionInterface

    fn initFields(this: *Self) void {
        this.newLine = array_N65788: { const array_N65788_array = allocator.alloc([]i32, @intCast(2)) catch unreachable; for (array_N65788_array) |*array_N65788_row| { array_N65788_row.* = allocator.alloc(i32, @intCast(2)) catch unreachable; @memset(array_N65788_row.*, 0); } break :array_N65788 array_N65788_array; };
        this.tempLine = NullUtil.getInstance().?.NULL_INT_ARRAY_ARRAY;
        this.line = array_N65911: { const array_N65911_array = allocator.alloc([]i32, @intCast(2)) catch unreachable; for (array_N65911_array) |*array_N65911_row| { array_N65911_row.* = allocator.alloc(i32, @intCast(2)) catch unreachable; @memset(array_N65911_row.*, 0); } break :array_N65911 array_N65911_array; };
    }
    

    pub fn create1(basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Animation.create().*;
        this.initFields();
        _ = Inheritance.call(this, "setBasicColorP", .{ basicColor });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self, x: i32, y: i32) void {
        self.newLine[@intCast(0)][@intCast(0)] = Inheritance.upcast(@TypeOf(self.newLine[@intCast(0)][@intCast(0)]), x);
        self.newLine[@intCast(0)][@intCast(1)] = Inheritance.upcast(@TypeOf(self.newLine[@intCast(0)][@intCast(1)]), y);
        self.newLine[@intCast(1)][@intCast(0)] = Inheritance.upcast(@TypeOf(self.newLine[@intCast(1)][@intCast(0)]), x);
        self.newLine[@intCast(1)][@intCast(1)] = Inheritance.upcast(@TypeOf(self.newLine[@intCast(1)][@intCast(1)]), y);
        self.tempLine = self.line;
        self.line = self.newLine;
        self.newLine = self.tempLine;
    }
    

    pub fn setPosition(self: *Self, x: i32, y: i32, z: i32) void {
        _ = z;
        self.newLine[@intCast(0)][@intCast(0)] = Inheritance.upcast(@TypeOf(self.newLine[@intCast(0)][@intCast(0)]), self.line[@intCast(1)][@intCast(0)]);
        self.newLine[@intCast(0)][@intCast(1)] = Inheritance.upcast(@TypeOf(self.newLine[@intCast(0)][@intCast(1)]), self.line[@intCast(1)][@intCast(1)]);
        self.newLine[@intCast(1)][@intCast(0)] = Inheritance.upcast(@TypeOf(self.newLine[@intCast(1)][@intCast(0)]), x);
        self.newLine[@intCast(1)][@intCast(1)] = Inheritance.upcast(@TypeOf(self.newLine[@intCast(1)][@intCast(1)]), y);
        self.tempLine = self.line;
        self.line = self.newLine;
        self.newLine = self.tempLine;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = x;
        _ = y;
        const currentLine: [][]i32 = self.line;
        _ = Inheritance.call(Inheritance.fieldPointer(self, "basicSetColorUtil").*.?, "setBasicColorP3", .{ graphics, Inheritance.receiver(self, "getBasicColorP").getBasicColorP(), Inheritance.receiver(self, "getColor").getColor() });
        _ = Inheritance.call(graphics.?, "drawLine", .{ currentLine[@intCast(0)][@intCast(0)], currentLine[@intCast(0)][@intCast(1)], currentLine[@intCast(1)][@intCast(0)], currentLine[@intCast(1)][@intCast(1)] });
    }
    

    pub fn nextFrame(self: *Self) void {
        _ = self;
    }
};

