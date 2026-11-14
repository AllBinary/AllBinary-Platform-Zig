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
const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const IndexedAnimationBehavior = @import("org/allbinary/animation/IndexedAnimationBehavior.zig").IndexedAnimationBehavior;
const NullRotationAnimation = @import("org/allbinary/animation/NullRotationAnimation.zig").NullRotationAnimation;

pub const NullRotationAnimation2 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.NullRotationAnimation2";
    base: NullRotationAnimation = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(NullRotationAnimation, "create3", .{ Inheritance.callStatic(AngleInfo, "getInstance", .{ Inheritance.fieldPointer(AngleFactory.getInstance().?, "QUARTER_TOTAL_ANGLE").* }), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ 4 }), Inheritance.callStatic(IndexedAnimationBehavior, "create2", .{ 1, 250 }) }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = graphics;
        _ = x;
        _ = y;
        _ = self;
    }
};

