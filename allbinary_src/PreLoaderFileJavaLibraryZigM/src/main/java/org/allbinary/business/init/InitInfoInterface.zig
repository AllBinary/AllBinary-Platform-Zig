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
// package org.allbinary.business.init

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;

// Java interface: an implementation is a pointer and a table of functions
pub const InitInfoInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.init.InitInfoInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    isTestingFn: *const fn (pointer: *anyopaque) bool,
    getTestingFn: *const fn (pointer: *anyopaque) ?*String,
    getTestHtmlPathFn: *const fn (pointer: *anyopaque) ?*String,
    getMainPathFn: *const fn (pointer: *anyopaque) ?*String,
    setTestingFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTestHtmlPathFn: *const fn (pointer: *anyopaque, value: ?*AbPath) void,
    setMainPathFn: *const fn (pointer: *anyopaque, value: ?*AbPath) void,
    isTestingValidFn: *const fn (pointer: *anyopaque, testing: ?*String) bool,
    isTestHtmlPathValidFn: *const fn (pointer: *anyopaque, value: ?*AbPath) bool,
    isMainPathValidFn: *const fn (pointer: *anyopaque, value: ?*AbPath) bool,

    pub fn isTesting(self: *Self) bool {
        return self.isTestingFn(self.pointer);
    }

    pub fn getTesting(self: *Self) ?*String {
        return self.getTestingFn(self.pointer);
    }

    pub fn getTestHtmlPath(self: *Self) ?*String {
        return self.getTestHtmlPathFn(self.pointer);
    }

    pub fn getMainPath(self: *Self) ?*String {
        return self.getMainPathFn(self.pointer);
    }

    pub fn setTesting(self: *Self, value: ?*String) void {
        return self.setTestingFn(self.pointer, value);
    }

    pub fn setTestHtmlPath(self: *Self, value: ?*AbPath) void {
        return self.setTestHtmlPathFn(self.pointer, value);
    }

    pub fn setMainPath(self: *Self, value: ?*AbPath) void {
        return self.setMainPathFn(self.pointer, value);
    }

    pub fn isTestingValid(self: *Self, testing: ?*String) bool {
        return self.isTestingValidFn(self.pointer, testing);
    }

    pub fn isTestHtmlPathValid(self: *Self, value: ?*AbPath) bool {
        return self.isTestHtmlPathValidFn(self.pointer, value);
    }

    pub fn isMainPathValid(self: *Self, value: ?*AbPath) bool {
        return self.isMainPathValidFn(self.pointer, value);
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
            fn isTesting(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isTesting").isTesting();
            }
            fn getTesting(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTesting").getTesting());
            }
            fn getTestHtmlPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestHtmlPath").getTestHtmlPath());
            }
            fn getMainPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getMainPath").getMainPath());
            }
            fn setTesting(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTesting").setTesting(value);
            }
            fn setTestHtmlPath(pointer: *anyopaque, value: ?*AbPath) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTestHtmlPath").setTestHtmlPath(value);
            }
            fn setMainPath(pointer: *anyopaque, value: ?*AbPath) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMainPath").setMainPath(value);
            }
            fn isTestingValid(pointer: *anyopaque, testing: ?*String) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isTestingValid").isTestingValid(testing);
            }
            fn isTestHtmlPathValid(pointer: *anyopaque, value: ?*AbPath) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isTestHtmlPathValid").isTestHtmlPathValid(value);
            }
            fn isMainPathValid(pointer: *anyopaque, value: ?*AbPath) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isMainPathValid").isMainPathValid(value);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .isTestingFn = Methods.isTesting, .getTestingFn = Methods.getTesting, .getTestHtmlPathFn = Methods.getTestHtmlPath, .getMainPathFn = Methods.getMainPath, .setTestingFn = Methods.setTesting, .setTestHtmlPathFn = Methods.setTestHtmlPath, .setMainPathFn = Methods.setMainPath, .isTestingValidFn = Methods.isTestingValid, .isTestHtmlPathValidFn = Methods.isTestHtmlPathValid, .isMainPathValidFn = Methods.isMainPathValid };
        return this;
    }
};

