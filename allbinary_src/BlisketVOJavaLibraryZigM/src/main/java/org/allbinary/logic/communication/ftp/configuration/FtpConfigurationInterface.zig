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
// package org.allbinary.logic.communication.ftp.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const FtpConfigurationInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getServerFn: *const fn (pointer: *anyopaque) ?*String,
    getPathFn: *const fn (pointer: *anyopaque) ?*String,
    getUserNameFn: *const fn (pointer: *anyopaque) ?*String,
    getPasswordFn: *const fn (pointer: *anyopaque) ?*String,
    setServerFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setPathFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setUserNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setPasswordFn: *const fn (pointer: *anyopaque, value: ?*String) void,

    pub fn getServer(self: *Self) ?*String {
        return self.getServerFn(self.pointer);
    }

    pub fn getPath(self: *Self) ?*String {
        return self.getPathFn(self.pointer);
    }

    pub fn getUserName(self: *Self) ?*String {
        return self.getUserNameFn(self.pointer);
    }

    pub fn getPassword(self: *Self) ?*String {
        return self.getPasswordFn(self.pointer);
    }

    pub fn setServer(self: *Self, value: ?*String) void {
        return self.setServerFn(self.pointer, value);
    }

    pub fn setPath(self: *Self, value: ?*String) void {
        return self.setPathFn(self.pointer, value);
    }

    pub fn setUserName(self: *Self, value: ?*String) void {
        return self.setUserNameFn(self.pointer, value);
    }

    pub fn setPassword(self: *Self, value: ?*String) void {
        return self.setPasswordFn(self.pointer, value);
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
            fn getServer(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getServer").getServer());
            }
            fn getPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPath").getPath());
            }
            fn getUserName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getUserName").getUserName());
            }
            fn getPassword(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPassword").getPassword());
            }
            fn setServer(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setServer").setServer(value);
            }
            fn setPath(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPath").setPath(value);
            }
            fn setUserName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setUserName").setUserName(value);
            }
            fn setPassword(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPassword").setPassword(value);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getServerFn = Methods.getServer, .getPathFn = Methods.getPath, .getUserNameFn = Methods.getUserName, .getPasswordFn = Methods.getPassword, .setServerFn = Methods.setServer, .setPathFn = Methods.setPath, .setUserNameFn = Methods.setUserName, .setPasswordFn = Methods.setPassword };
        return this;
    }
};

