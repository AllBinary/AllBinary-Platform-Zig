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
// package org.allbinary.logic.control.contraints.display.browser

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const DisplayInBrowserContraintsInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    isMountableFn: *const fn (pointer: *anyopaque) bool,
    isFrameableFn: *const fn (pointer: *anyopaque) bool,
    isQuickFrameableFn: *const fn (pointer: *anyopaque) bool,
    setMountableFn: *const fn (pointer: *anyopaque, canBeMounted: bool) void,
    setFrameableFn: *const fn (pointer: *anyopaque, canBeFramed: bool) void,
    setQuickFrameableFn: *const fn (pointer: *anyopaque, canBeQuickFramed: bool) void,
    setMountedLinkFn: *const fn (pointer: *anyopaque, mountedLink: ?*String) void,
    getMountedLinkFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn isMountable(self: *Self) bool {
        return self.isMountableFn(self.pointer);
    }

    pub fn isFrameable(self: *Self) bool {
        return self.isFrameableFn(self.pointer);
    }

    pub fn isQuickFrameable(self: *Self) bool {
        return self.isQuickFrameableFn(self.pointer);
    }

    pub fn setMountable(self: *Self, canBeMounted: bool) void {
        return self.setMountableFn(self.pointer, canBeMounted);
    }

    pub fn setFrameable(self: *Self, canBeFramed: bool) void {
        return self.setFrameableFn(self.pointer, canBeFramed);
    }

    pub fn setQuickFrameable(self: *Self, canBeQuickFramed: bool) void {
        return self.setQuickFrameableFn(self.pointer, canBeQuickFramed);
    }

    pub fn setMountedLink(self: *Self, mountedLink: ?*String) void {
        return self.setMountedLinkFn(self.pointer, mountedLink);
    }

    pub fn getMountedLink(self: *Self) ?*String {
        return self.getMountedLinkFn(self.pointer);
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
            fn isMountable(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isMountable").isMountable();
            }
            fn isFrameable(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isFrameable").isFrameable();
            }
            fn isQuickFrameable(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isQuickFrameable").isQuickFrameable();
            }
            fn setMountable(pointer: *anyopaque, canBeMounted: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMountable").setMountable(canBeMounted);
            }
            fn setFrameable(pointer: *anyopaque, canBeFramed: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setFrameable").setFrameable(canBeFramed);
            }
            fn setQuickFrameable(pointer: *anyopaque, canBeQuickFramed: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setQuickFrameable").setQuickFrameable(canBeQuickFramed);
            }
            fn setMountedLink(pointer: *anyopaque, mountedLink: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMountedLink").setMountedLink(mountedLink);
            }
            fn getMountedLink(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getMountedLink").getMountedLink());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .isMountableFn = Methods.isMountable, .isFrameableFn = Methods.isFrameable, .isQuickFrameableFn = Methods.isQuickFrameable, .setMountableFn = Methods.setMountable, .setFrameableFn = Methods.setFrameable, .setQuickFrameableFn = Methods.setQuickFrameable, .setMountedLinkFn = Methods.setMountedLink, .getMountedLinkFn = Methods.getMountedLink };
        return this;
    }
};

