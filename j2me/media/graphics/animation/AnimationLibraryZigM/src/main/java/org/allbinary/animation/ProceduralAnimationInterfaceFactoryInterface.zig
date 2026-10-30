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
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const BasicAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/BasicAnimationInterfaceFactoryInterface.zig").BasicAnimationInterfaceFactoryInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const ProceduralAnimationInterfaceFactoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface";
    pointer: *anyopaque,
    object: Object,
    base: BasicAnimationInterfaceFactoryInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getInstanceAnimationFn: *const fn (pointer: *anyopaque, animationInterface: ?*Animation) ?*Animation,

    pub fn getInstanceAnimation(self: *Self, animationInterface: ?*Animation) ?*Animation {
        return self.getInstanceAnimationFn(self.pointer, animationInterface);
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
            fn getInstanceAnimation(pointer: *anyopaque, animationInterface: ?*Animation) ?*Animation {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Animation, Inheritance.receiver(implementation, "getInstanceAnimation").getInstanceAnimation(animationInterface));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicAnimationInterfaceFactoryInterface.of(object).?.*, .toStringFn = Methods.toString, .getInstanceAnimationFn = Methods.getInstanceAnimation };
        return this;
    }
};

