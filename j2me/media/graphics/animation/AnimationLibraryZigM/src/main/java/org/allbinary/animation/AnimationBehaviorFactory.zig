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
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;

pub const AnimationBehaviorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.AnimationBehaviorFactory";
    var instance: ?*AnimationBehaviorFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AnimationBehaviorFactory.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*AnimationBehaviorFactory {
        return Inheritance.upcast(?*AnimationBehaviorFactory, AnimationBehaviorFactory.instance);
    }
    

    pub fn getOrCreateInstance(self: *Self) ?*AnimationBehavior {
        _ = self;
        return Inheritance.upcast(?*AnimationBehavior, AnimationBehavior.getInstance());
    }
};

