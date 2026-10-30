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
// package org.allbinary.thread

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Runnable = @import("java/lang/Runnable.zig").Runnable;

// Java interface: an implementation is a pointer and a table of functions
pub const PriorityRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thread.PriorityRunnable";
    pointer: *anyopaque,
    object: Object,
    base: Runnable,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getPriorityFn: *const fn (pointer: *anyopaque) i32,
    isDoneFn: *const fn (pointer: *anyopaque) bool,
    resetFn: *const fn (pointer: *anyopaque) void,

    pub fn getPriority(self: *Self) i32 {
        return self.getPriorityFn(self.pointer);
    }

    pub fn isDone(self: *Self) bool {
        return self.isDoneFn(self.pointer);
    }

    pub fn reset(self: *Self) void {
        return self.resetFn(self.pointer);
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
            fn getPriority(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getPriority").getPriority();
            }
            fn isDone(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isDone").isDone();
            }
            fn reset(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "reset").reset();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = Runnable.of(object).?.*, .toStringFn = Methods.toString, .getPriorityFn = Methods.getPriority, .isDoneFn = Methods.isDone, .resetFn = Methods.reset };
        return this;
    }
};

