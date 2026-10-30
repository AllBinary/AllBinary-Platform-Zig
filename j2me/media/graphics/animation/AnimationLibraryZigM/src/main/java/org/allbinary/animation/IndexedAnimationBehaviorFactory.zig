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
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const IndexedAnimationBehavior = @import("org/allbinary/animation/IndexedAnimationBehavior.zig").IndexedAnimationBehavior;

pub const IndexedAnimationBehaviorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.IndexedAnimationBehaviorFactory";
    base: AnimationBehaviorFactory = undefined,
    frameDelayTime: i64 = 0,
    loopTotal: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(loopTotal: i32, frameDelayTime: i64) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = AnimationBehaviorFactory.create().*;
        this.initFields();
        this.loopTotal = loopTotal;
        this.frameDelayTime = frameDelayTime;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getOrCreateInstance(self: *Self) ?*AnimationBehavior {
        return Inheritance.upcast(?*AnimationBehavior, Inheritance.callStatic(IndexedAnimationBehavior, "create2", .{ self.loopTotal, self.frameDelayTime }));
    }
};

