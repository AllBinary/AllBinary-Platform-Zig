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
// package org.allbinary.logic.communication.smtp.configuration.user.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const UserEmailEventConfigurationInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,
    setNameFn: *const fn (pointer: *anyopaque, name: ?*String) void,
    getEventListenerClassPathFn: *const fn (pointer: *anyopaque) ?*String,
    setEventListenerClassPathFn: *const fn (pointer: *anyopaque, eventListenerClassPath: ?*String) void,
    logFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn setName(self: *Self, name: ?*String) void {
        return self.setNameFn(self.pointer, name);
    }

    pub fn getEventListenerClassPath(self: *Self) ?*String {
        return self.getEventListenerClassPathFn(self.pointer);
    }

    pub fn setEventListenerClassPath(self: *Self, eventListenerClassPath: ?*String) void {
        return self.setEventListenerClassPathFn(self.pointer, eventListenerClassPath);
    }

    pub fn log(self: *Self) ?*String {
        return self.logFn(self.pointer);
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
            fn getName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn setName(pointer: *anyopaque, name: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setName").setName(name);
            }
            fn getEventListenerClassPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getEventListenerClassPath").getEventListenerClassPath());
            }
            fn setEventListenerClassPath(pointer: *anyopaque, eventListenerClassPath: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setEventListenerClassPath").setEventListenerClassPath(eventListenerClassPath);
            }
            fn log(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "log").log());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getNameFn = Methods.getName, .setNameFn = Methods.setName, .getEventListenerClassPathFn = Methods.getEventListenerClassPath, .setEventListenerClassPathFn = Methods.setEventListenerClassPath, .logFn = Methods.log };
        return this;
    }
};

