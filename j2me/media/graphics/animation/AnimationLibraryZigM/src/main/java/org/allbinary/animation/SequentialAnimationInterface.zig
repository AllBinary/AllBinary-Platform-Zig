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
const AnimationInterface = @import("org/allbinary/animation/AnimationInterface.zig").AnimationInterface;
const SequenceInterface = @import("org/allbinary/animation/SequenceInterface.zig").SequenceInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const SequentialAnimationInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.SequentialAnimationInterface";
    pointer: *anyopaque,
    object: Object,
    base: AnimationInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getSizeFn: *const fn (pointer: *anyopaque) i32,
    previousFrameFn: *const fn (pointer: *anyopaque) void,

    pub fn getSize(self: *Self) i32 {
        return self.getSizeFn(self.pointer);
    }

    pub fn previousFrame(self: *Self) void {
        return self.previousFrameFn(self.pointer);
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
            fn getSize(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getSize").getSize();
            }
            fn previousFrame(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "previousFrame").previousFrame();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = AnimationInterface.of(object).?.*, .toStringFn = Methods.toString, .getSizeFn = Methods.getSize, .previousFrameFn = Methods.previousFrame };
        return this;
    }
};

