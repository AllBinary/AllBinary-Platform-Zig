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
pub const ProgressActivityInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.activity.ProgressActivityInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    runOnUiThreadFn: *const fn (pointer: *anyopaque, action: ?*Runnable) void,
    onDismissTitleProgressBarFn: *const fn (pointer: *anyopaque) void,
    onShowTitleProgressBarFn: *const fn (pointer: *anyopaque, value: i32, indeterminate: bool) void,
    onTitleProgressBarSetProgressFn: *const fn (pointer: *anyopaque, value: i32) void,

    pub fn runOnUiThread(self: *Self, action: ?*Runnable) void {
        return self.runOnUiThreadFn(self.pointer, action);
    }

    pub fn onDismissTitleProgressBar(self: *Self) void {
        return self.onDismissTitleProgressBarFn(self.pointer);
    }

    pub fn onShowTitleProgressBar(self: *Self, value: i32, indeterminate: bool) void {
        return self.onShowTitleProgressBarFn(self.pointer, value, indeterminate);
    }

    pub fn onTitleProgressBarSetProgress(self: *Self, value: i32) void {
        return self.onTitleProgressBarSetProgressFn(self.pointer, value);
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
            fn onDismissTitleProgressBar(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onDismissTitleProgressBar").onDismissTitleProgressBar();
            }
            fn onShowTitleProgressBar(pointer: *anyopaque, value: i32, indeterminate: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onShowTitleProgressBar").onShowTitleProgressBar(value, indeterminate);
            }
            fn onTitleProgressBarSetProgress(pointer: *anyopaque, value: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onTitleProgressBarSetProgress").onTitleProgressBarSetProgress(value);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .runOnUiThreadFn = Methods.runOnUiThread, .onDismissTitleProgressBarFn = Methods.onDismissTitleProgressBar, .onShowTitleProgressBarFn = Methods.onShowTitleProgressBar, .onTitleProgressBarSetProgressFn = Methods.onTitleProgressBarSetProgress };
        return this;
    }
};

