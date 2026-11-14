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
const IndexedAnimationInterface = @import("org/allbinary/animation/IndexedAnimationInterface.zig").IndexedAnimationInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const SpecialAnimationInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.special.SpecialAnimationInterface";
    pointer: *anyopaque,
    object: Object,
    base: IndexedAnimationInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setLastFrameFn: *const fn (interface_pointer: *anyopaque) void,
    isCompleteFn: *const fn (interface_pointer: *anyopaque) bool,

    pub fn setLastFrame(self: *Self) void {
        return self.setLastFrameFn(self.pointer);
    }

    pub fn isComplete(self: *Self) bool {
        return self.isCompleteFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const ImplementationType = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn setLastFrame(interface_pointer: *anyopaque) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "setLastFrame").setLastFrame();
            }
            fn isComplete(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "isComplete").isComplete();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = IndexedAnimationInterface.of(object).?.*, .toStringFn = Methods.toString, .setLastFrameFn = Methods.setLastFrame, .isCompleteFn = Methods.isComplete };
        return this;
    }
};

