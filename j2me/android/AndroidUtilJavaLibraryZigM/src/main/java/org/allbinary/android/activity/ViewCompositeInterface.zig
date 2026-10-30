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
const View = @import("android/view/View.zig").View;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

// Java interface: an implementation is a pointer and a table of functions
pub const ViewCompositeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.activity.ViewCompositeInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getRootViewFn: *const fn (pointer: *anyopaque) ?*View,
    getViewFn: *const fn (pointer: *anyopaque) ?*View,
    runOnUiThreadFn: *const fn (pointer: *anyopaque, action: ?*Runnable) void,

    pub fn getRootView(self: *Self) ?*View {
        return self.getRootViewFn(self.pointer);
    }

    pub fn getView(self: *Self) ?*View {
        return self.getViewFn(self.pointer);
    }

    pub fn runOnUiThread(self: *Self, action: ?*Runnable) void {
        return self.runOnUiThreadFn(self.pointer, action);
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
            fn getRootView(pointer: *anyopaque) ?*View {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*View, Inheritance.receiver(implementation, "getRootView").getRootView());
            }
            fn getView(pointer: *anyopaque) ?*View {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*View, Inheritance.receiver(implementation, "getView").getView());
            }
            fn runOnUiThread(pointer: *anyopaque, action: ?*Runnable) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "runOnUiThread").runOnUiThread(action);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getRootViewFn = Methods.getRootView, .getViewFn = Methods.getView, .runOnUiThreadFn = Methods.runOnUiThread };
        return this;
    }
};

