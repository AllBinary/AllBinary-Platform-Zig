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
// package org.allbinary.animation.special

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const IndexedAnimationBehavior = @import("org/allbinary/animation/IndexedAnimationBehavior.zig").IndexedAnimationBehavior;
const SpecialAnimationInterface = @import("org/allbinary/animation/special/SpecialAnimationInterface.zig").SpecialAnimationInterface;

pub const SpecialAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.special.SpecialAnimation";
    pub const java_interfaces = .{ SpecialAnimationInterface };
    base: IndexedAnimation = undefined,
    // Implements SpecialAnimationInterface
    var NULL_SPECIAL_ANIMATION: ?*SpecialAnimation = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_SPECIAL_ANIMATION = Inheritance.callStatic(SpecialAnimation, "create1", .{ Inheritance.callStatic(IndexedAnimationBehavior, "create2", .{ 1, 250 }) });
    }
    

    pub fn getInstance() ?*SpecialAnimation {
        return Inheritance.upcast(?*SpecialAnimation, SpecialAnimation.NULL_SPECIAL_ANIMATION);
    }
    

    pub fn create1(animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(IndexedAnimation, "create1", .{ animationBehavior }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn nextFrame(self: *Self) void {
        const indexedAnimationBehavior: ?*IndexedAnimationBehavior = Inheritance.upcast(?*IndexedAnimationBehavior, (Inheritance.cast(?*IndexedAnimationBehavior, Inheritance.fieldPointer(self, "animationBehaviorP").*)));
        indexedAnimationBehavior.?.loopIndex += 1;
    }
    

    pub fn setLastFrame(self: *Self) void {
        _ = self;
    }
    

    pub fn isComplete(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn open(self: *Self) void {
        _ = self;
    }
    

    pub fn close(self: *Self) void {
        _ = self;
    }
    

    pub fn process(self: *Self) void {
        _ = self;
    }
};

