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
// package org.allbinary.animation.transition.shake

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ShakeEvent = @import("org/allbinary/animation/transition/shake/ShakeEvent.zig").ShakeEvent;

pub const ShakeAnimationListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.transition.shake.ShakeAnimationListener";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn onSmallShakeEvent(self: *Self) void {
        _ = self;
    }
    

    pub fn onMediumShakeEvent(self: *Self) void {
        _ = self;
    }
    

    pub fn onLargeShakeEvent(self: *Self) void {
        _ = self;
    }
    

    pub fn onShakeEvent(self: *Self, shakeEvent: ?*ShakeEvent) void {
        _ = shakeEvent;
        _ = self;
    }
    

    pub fn getType(self: *Self) i32 {
        _ = self;
        return 0;
    }
};

