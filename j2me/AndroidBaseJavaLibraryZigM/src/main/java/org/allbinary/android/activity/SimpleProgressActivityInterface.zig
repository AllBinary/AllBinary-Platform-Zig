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
// package org.allbinary.android.activity

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Runnable = @import("java/lang/Runnable.zig").Runnable;

// Java interface: an implementation is a pointer and a table of functions
pub const SimpleProgressActivityInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.activity.SimpleProgressActivityInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    runOnUiThreadFn: *const fn (pointer: *anyopaque, action: ?*Runnable) void,
    onSetProgressFn: *const fn (pointer: *anyopaque, value: i32, text: ?*String) void,
    onDismissProgressFn: *const fn (pointer: *anyopaque, animationSequence: []i32) void,
    onShowProgressFn: *const fn (pointer: *anyopaque, indeterminate: bool, animationSequence: []i32) void,

    pub fn runOnUiThread(self: *Self, action: ?*Runnable) void {
        return self.runOnUiThreadFn(self.pointer, action);
    }

    pub fn onSetProgress(self: *Self, value: i32, text: ?*String) void {
        return self.onSetProgressFn(self.pointer, value, text);
    }

    pub fn onDismissProgress(self: *Self, animationSequence: []i32) void {
        return self.onDismissProgressFn(self.pointer, animationSequence);
    }

    pub fn onShowProgress(self: *Self, indeterminate: bool, animationSequence: []i32) void {
        return self.onShowProgressFn(self.pointer, indeterminate, animationSequence);
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
            fn runOnUiThread(pointer: *anyopaque, action: ?*Runnable) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "runOnUiThread").runOnUiThread(action);
            }
            fn onSetProgress(pointer: *anyopaque, value: i32, text: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onSetProgress").onSetProgress(value, text);
            }
            fn onDismissProgress(pointer: *anyopaque, animationSequence: []i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onDismissProgress").onDismissProgress(animationSequence);
            }
            fn onShowProgress(pointer: *anyopaque, indeterminate: bool, animationSequence: []i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onShowProgress").onShowProgress(indeterminate, animationSequence);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .runOnUiThreadFn = Methods.runOnUiThread, .onSetProgressFn = Methods.onSetProgress, .onDismissProgressFn = Methods.onDismissProgress, .onShowProgressFn = Methods.onShowProgress };
        return this;
    }
};

