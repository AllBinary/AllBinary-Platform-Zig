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
// package org.allbinary.debug

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const DebugInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.debug.DebugInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    startFn: *const fn (pointer: *anyopaque) void,
    stopFn: *const fn (pointer: *anyopaque) void,
    getStartTimeFn: *const fn (pointer: *anyopaque) i64,
    getMaxTimeFn: *const fn (pointer: *anyopaque) i64,
    isRunningFn: *const fn (pointer: *anyopaque) bool,

    pub fn start(self: *Self) void {
        return self.startFn(self.pointer);
    }

    pub fn stop(self: *Self) void {
        return self.stopFn(self.pointer);
    }

    pub fn getStartTime(self: *Self) i64 {
        return self.getStartTimeFn(self.pointer);
    }

    pub fn getMaxTime(self: *Self) i64 {
        return self.getMaxTimeFn(self.pointer);
    }

    pub fn isRunning(self: *Self) bool {
        return self.isRunningFn(self.pointer);
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
            fn start(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "start").start();
            }
            fn stop(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "stop").stop();
            }
            fn getStartTime(pointer: *anyopaque) i64 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getStartTime").getStartTime();
            }
            fn getMaxTime(pointer: *anyopaque) i64 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMaxTime").getMaxTime();
            }
            fn isRunning(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isRunning").isRunning();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .startFn = Methods.start, .stopFn = Methods.stop, .getStartTimeFn = Methods.getStartTime, .getMaxTimeFn = Methods.getMaxTime, .isRunningFn = Methods.isRunning };
        return this;
    }
};

