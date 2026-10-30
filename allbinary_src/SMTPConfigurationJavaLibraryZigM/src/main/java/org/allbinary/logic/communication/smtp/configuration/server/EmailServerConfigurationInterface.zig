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
// package org.allbinary.logic.communication.smtp.configuration.server

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const EmailServerConfigurationInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface";
    pointer: *anyopaque,
    object: Object,
    setSmtpServerFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    getSmtpServerFn: *const fn (pointer: *anyopaque) ?*String,
    getAccountNameFn: *const fn (pointer: *anyopaque) ?*String,
    setAccountNameFn: *const fn (pointer: *anyopaque, accountName: ?*String) void,
    getPasswordFn: *const fn (pointer: *anyopaque) ?*String,
    setPasswordFn: *const fn (pointer: *anyopaque, password: ?*String) void,
    logFn: *const fn (pointer: *anyopaque) void,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn setSmtpServer(self: *Self, value: ?*String) void {
        return self.setSmtpServerFn(self.pointer, value);
    }

    pub fn getSmtpServer(self: *Self) ?*String {
        return self.getSmtpServerFn(self.pointer);
    }

    pub fn getAccountName(self: *Self) ?*String {
        return self.getAccountNameFn(self.pointer);
    }

    pub fn setAccountName(self: *Self, accountName: ?*String) void {
        return self.setAccountNameFn(self.pointer, accountName);
    }

    pub fn getPassword(self: *Self) ?*String {
        return self.getPasswordFn(self.pointer);
    }

    pub fn setPassword(self: *Self, password: ?*String) void {
        return self.setPasswordFn(self.pointer, password);
    }

    pub fn log(self: *Self) void {
        return self.logFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn setSmtpServer(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSmtpServer").setSmtpServer(value);
            }
            fn getSmtpServer(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSmtpServer").getSmtpServer());
            }
            fn getAccountName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getAccountName").getAccountName());
            }
            fn setAccountName(pointer: *anyopaque, accountName: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setAccountName").setAccountName(accountName);
            }
            fn getPassword(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPassword").getPassword());
            }
            fn setPassword(pointer: *anyopaque, password: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPassword").setPassword(password);
            }
            fn log(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "log").log();
            }
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "toString").toString());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .setSmtpServerFn = Methods.setSmtpServer, .getSmtpServerFn = Methods.getSmtpServer, .getAccountNameFn = Methods.getAccountName, .setAccountNameFn = Methods.setAccountName, .getPasswordFn = Methods.getPassword, .setPasswordFn = Methods.setPassword, .logFn = Methods.log, .toStringFn = Methods.toString };
        return this;
    }
};

