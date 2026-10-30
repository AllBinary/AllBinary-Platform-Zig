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
// package org.allbinary.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const FullScreenInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.canvas.FullScreenInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    isFullScreenModeFn: *const fn (pointer: *anyopaque) bool,
    setFullScreenModeFn: *const fn (pointer: *anyopaque, mode: bool) void,
    stopWaitingFn: *const fn (pointer: *anyopaque) void,
    waitOnNotifyFn: *const fn (pointer: *anyopaque, wait: i32) void,

    pub fn isFullScreenMode(self: *Self) bool {
        return self.isFullScreenModeFn(self.pointer);
    }

    pub fn setFullScreenMode(self: *Self, mode: bool) void {
        return self.setFullScreenModeFn(self.pointer, mode);
    }

    pub fn stopWaiting(self: *Self) void {
        return self.stopWaitingFn(self.pointer);
    }

    pub fn waitOnNotify(self: *Self, wait: i32) void {
        return self.waitOnNotifyFn(self.pointer, wait);
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
            fn isFullScreenMode(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isFullScreenMode").isFullScreenMode();
            }
            fn setFullScreenMode(pointer: *anyopaque, mode: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setFullScreenMode").setFullScreenMode(mode);
            }
            fn stopWaiting(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "stopWaiting").stopWaiting();
            }
            fn waitOnNotify(pointer: *anyopaque, wait: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "waitOnNotify").waitOnNotify(wait);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .isFullScreenModeFn = Methods.isFullScreenMode, .setFullScreenModeFn = Methods.setFullScreenMode, .stopWaitingFn = Methods.stopWaiting, .waitOnNotifyFn = Methods.waitOnNotify };
        return this;
    }
};

