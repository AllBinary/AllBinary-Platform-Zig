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
// package org.allbinary.animation.compound

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AnimationInterface = @import("org/allbinary/animation/AnimationInterface.zig").AnimationInterface;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;

// Java interface: an implementation is a pointer and a table of functions
pub const CompoundAnimationInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.compound.CompoundAnimationInterface";
    pointer: *anyopaque,
    object: Object,
    base: AnimationInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    nextAnimationFn: *const fn (pointer: *anyopaque) void,
    previousAnimationFn: *const fn (pointer: *anyopaque) void,
    setAnimationFn: *const fn (pointer: *anyopaque, index: i32) void,
    getCurrentAnimationFn: *const fn (pointer: *anyopaque) ?*IndexedAnimation,

    pub fn nextAnimation(self: *Self) void {
        return self.nextAnimationFn(self.pointer);
    }

    pub fn previousAnimation(self: *Self) void {
        return self.previousAnimationFn(self.pointer);
    }

    pub fn setAnimation(self: *Self, index: i32) void {
        return self.setAnimationFn(self.pointer, index);
    }

    pub fn getCurrentAnimation(self: *Self) ?*IndexedAnimation {
        return self.getCurrentAnimationFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn nextAnimation(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "nextAnimation").nextAnimation();
            }
            fn previousAnimation(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "previousAnimation").previousAnimation();
            }
            fn setAnimation(pointer: *anyopaque, index: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setAnimation").setAnimation(index);
            }
            fn getCurrentAnimation(pointer: *anyopaque) ?*IndexedAnimation {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*IndexedAnimation, Inheritance.receiver(implementation, "getCurrentAnimation").getCurrentAnimation());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = AnimationInterface.of(object).?.*, .toStringFn = Methods.toString, .nextAnimationFn = Methods.nextAnimation, .previousAnimationFn = Methods.previousAnimation, .setAnimationFn = Methods.setAnimation, .getCurrentAnimationFn = Methods.getCurrentAnimation };
        return this;
    }
};

