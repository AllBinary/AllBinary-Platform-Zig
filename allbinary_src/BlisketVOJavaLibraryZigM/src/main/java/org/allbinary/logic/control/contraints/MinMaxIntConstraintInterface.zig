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
// package org.allbinary.logic.control.contraints

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const MinMaxIntConstraintInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getMaxFn: *const fn (pointer: *anyopaque) i32,
    getMinFn: *const fn (pointer: *anyopaque) i32,
    setMaxFn: *const fn (pointer: *anyopaque, max: i32) void,
    setMinFn: *const fn (pointer: *anyopaque, min: i32) void,

    pub fn getMax(self: *Self) i32 {
        return self.getMaxFn(self.pointer);
    }

    pub fn getMin(self: *Self) i32 {
        return self.getMinFn(self.pointer);
    }

    pub fn setMax(self: *Self, max: i32) void {
        return self.setMaxFn(self.pointer, max);
    }

    pub fn setMin(self: *Self, min: i32) void {
        return self.setMinFn(self.pointer, min);
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
            fn getMax(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMax").getMax();
            }
            fn getMin(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMin").getMin();
            }
            fn setMax(pointer: *anyopaque, max: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMax").setMax(max);
            }
            fn setMin(pointer: *anyopaque, min: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMin").setMin(min);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getMaxFn = Methods.getMax, .getMinFn = Methods.getMin, .setMaxFn = Methods.setMax, .setMinFn = Methods.setMin };
        return this;
    }
};

