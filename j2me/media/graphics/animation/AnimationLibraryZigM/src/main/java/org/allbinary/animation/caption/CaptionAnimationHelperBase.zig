// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.caption

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;

pub const CaptionAnimationHelperBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.caption.CaptionAnimationHelperBase";
    base: Animation = undefined,
    pub var INSTANCE: ?*CaptionAnimationHelperBase = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        INSTANCE = CaptionAnimationHelperBase.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Animation.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isShowing(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn tick(self: *Self) void {
        _ = self;
    }
    

    pub fn update(self: *Self, message: ?*String, basicColor: ?*BasicColor) void {
        _ = message;
        _ = basicColor;
        _ = self;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = graphics;
        _ = x;
        _ = y;
        _ = self;
    }
};

