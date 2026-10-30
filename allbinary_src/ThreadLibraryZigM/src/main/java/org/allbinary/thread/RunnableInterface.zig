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
// package org.allbinary.thread

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Thread = @import("java/lang/Thread.zig").Thread;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

// Java interface: an implementation is a pointer and a table of functions
pub const RunnableInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thread.RunnableInterface";
    pointer: *anyopaque,
    object: Object,
    base: Runnable,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    isRunningFn: *const fn (pointer: *anyopaque) bool,
    setRunningFn: *const fn (pointer: *anyopaque, isRunning_: bool) void,
    setThreadFn: *const fn (pointer: *anyopaque, thread: ?*Thread) void,

    pub fn isRunning(self: *Self) bool {
        return self.isRunningFn(self.pointer);
    }

    pub fn setRunning(self: *Self, isRunning_: bool) void {
        return self.setRunningFn(self.pointer, isRunning_);
    }

    pub fn setThread(self: *Self, thread: ?*Thread) void {
        return self.setThreadFn(self.pointer, thread);
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
            fn isRunning(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isRunning").isRunning();
            }
            fn setRunning(pointer: *anyopaque, isRunning_: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setRunning").setRunning(isRunning_);
            }
            fn setThread(pointer: *anyopaque, thread: ?*Thread) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setThread").setThread(thread);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = Runnable.of(object).?.*, .toStringFn = Methods.toString, .isRunningFn = Methods.isRunning, .setRunningFn = Methods.setRunning, .setThreadFn = Methods.setThread };
        return this;
    }
};

