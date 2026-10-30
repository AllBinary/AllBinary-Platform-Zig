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
// package org.allbinary.animation.transition

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AnimationListenerInterface = @import("org/allbinary/animation/transition/AnimationListenerInterface.zig").AnimationListenerInterface;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const RunAtEndAnimationListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.transition.RunAtEndAnimationListener";
    pub const java_interfaces = .{ AnimationListenerInterface };
    runnable: ?*Runnable = null,
    // Implements AnimationListenerInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(runnable: ?*Runnable) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.runnable = runnable;
        return this;
    }
    

    pub fn onPlatformAnimationStart(self: *Self) void {
        _ = self;
    }
    

    pub fn onPlatformAnimationEnd(self: *Self) void {
        _ = self;
    }
    

    pub fn onPlatformAnimationRepeat(self: *Self) void {
        _ = self;
    }
};

