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
// package org.allbinary.business.init.db

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const DatabaseConnectionInfoInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.init.db.DatabaseConnectionInfoInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getUrlFn: *const fn (pointer: *anyopaque) ?*String,
    getJdbcDriverFn: *const fn (pointer: *anyopaque) ?*String,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,
    getUserNameFn: *const fn (pointer: *anyopaque) ?*String,
    getPasswordFn: *const fn (pointer: *anyopaque) ?*String,
    getHostFn: *const fn (pointer: *anyopaque) ?*String,
    getSchemaFn: *const fn (pointer: *anyopaque) ?*String,
    getServerFn: *const fn (pointer: *anyopaque) ?*String,
    getPortFn: *const fn (pointer: *anyopaque) ?*String,
    setJdbcDriverFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setUserNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setPasswordFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSchemaFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setServerFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setPortFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    getUserNameKeyFn: *const fn (pointer: *anyopaque) ?*String,
    getPasswordKeyFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn getUrl(self: *Self) ?*String {
        return self.getUrlFn(self.pointer);
    }

    pub fn getJdbcDriver(self: *Self) ?*String {
        return self.getJdbcDriverFn(self.pointer);
    }

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn getUserName(self: *Self) ?*String {
        return self.getUserNameFn(self.pointer);
    }

    pub fn getPassword(self: *Self) ?*String {
        return self.getPasswordFn(self.pointer);
    }

    pub fn getHost(self: *Self) ?*String {
        return self.getHostFn(self.pointer);
    }

    pub fn getSchema(self: *Self) ?*String {
        return self.getSchemaFn(self.pointer);
    }

    pub fn getServer(self: *Self) ?*String {
        return self.getServerFn(self.pointer);
    }

    pub fn getPort(self: *Self) ?*String {
        return self.getPortFn(self.pointer);
    }

    pub fn setJdbcDriver(self: *Self, value: ?*String) void {
        return self.setJdbcDriverFn(self.pointer, value);
    }

    pub fn setName(self: *Self, value: ?*String) void {
        return self.setNameFn(self.pointer, value);
    }

    pub fn setUserName(self: *Self, value: ?*String) void {
        return self.setUserNameFn(self.pointer, value);
    }

    pub fn setPassword(self: *Self, value: ?*String) void {
        return self.setPasswordFn(self.pointer, value);
    }

    pub fn setSchema(self: *Self, value: ?*String) void {
        return self.setSchemaFn(self.pointer, value);
    }

    pub fn setServer(self: *Self, value: ?*String) void {
        return self.setServerFn(self.pointer, value);
    }

    pub fn setPort(self: *Self, value: ?*String) void {
        return self.setPortFn(self.pointer, value);
    }

    pub fn getUserNameKey(self: *Self) ?*String {
        return self.getUserNameKeyFn(self.pointer);
    }

    pub fn getPasswordKey(self: *Self) ?*String {
        return self.getPasswordKeyFn(self.pointer);
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
            fn getUrl(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getUrl").getUrl());
            }
            fn getJdbcDriver(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getJdbcDriver").getJdbcDriver());
            }
            fn getName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn getUserName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getUserName").getUserName());
            }
            fn getPassword(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPassword").getPassword());
            }
            fn getHost(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getHost").getHost());
            }
            fn getSchema(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSchema").getSchema());
            }
            fn getServer(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getServer").getServer());
            }
            fn getPort(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPort").getPort());
            }
            fn setJdbcDriver(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setJdbcDriver").setJdbcDriver(value);
            }
            fn setName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setName").setName(value);
            }
            fn setUserName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setUserName").setUserName(value);
            }
            fn setPassword(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPassword").setPassword(value);
            }
            fn setSchema(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSchema").setSchema(value);
            }
            fn setServer(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setServer").setServer(value);
            }
            fn setPort(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPort").setPort(value);
            }
            fn getUserNameKey(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getUserNameKey").getUserNameKey());
            }
            fn getPasswordKey(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPasswordKey").getPasswordKey());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getUrlFn = Methods.getUrl, .getJdbcDriverFn = Methods.getJdbcDriver, .getNameFn = Methods.getName, .getUserNameFn = Methods.getUserName, .getPasswordFn = Methods.getPassword, .getHostFn = Methods.getHost, .getSchemaFn = Methods.getSchema, .getServerFn = Methods.getServer, .getPortFn = Methods.getPort, .setJdbcDriverFn = Methods.setJdbcDriver, .setNameFn = Methods.setName, .setUserNameFn = Methods.setUserName, .setPasswordFn = Methods.setPassword, .setSchemaFn = Methods.setSchema, .setServerFn = Methods.setServer, .setPortFn = Methods.setPort, .getUserNameKeyFn = Methods.getUserNameKey, .getPasswordKeyFn = Methods.getPasswordKey };
        return this;
    }
};

