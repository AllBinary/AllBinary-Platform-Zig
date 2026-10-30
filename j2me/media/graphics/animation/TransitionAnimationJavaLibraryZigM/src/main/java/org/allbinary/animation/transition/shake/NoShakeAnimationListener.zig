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
const ShakeAnimationListener = @import("org/allbinary/animation/transition/shake/ShakeAnimationListener.zig").ShakeAnimationListener;

pub const NoShakeAnimationListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.transition.shake.NoShakeAnimationListener";
    base: ShakeAnimationListener = undefined,
    pub var NO_SHAKE_ANIMATION_LISTENER: ?*ShakeAnimationListener = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NO_SHAKE_ANIMATION_LISTENER = Inheritance.upcast(?*ShakeAnimationListener, NoShakeAnimationListener.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ShakeAnimationListener.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

