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
// package org.allbinary.business.user.modules.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TimeCreated = @import("org/allbinary/business/time/created/TimeCreated.zig").TimeCreated;
const TimeLastModified = @import("org/allbinary/business/time/modified/TimeLastModified.zig").TimeLastModified;
const UserEmailConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface.zig").UserEmailConfigurationInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const UserConfigurationInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.modules.configuration.UserConfigurationInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getUserEmailConfigurationInterfaceFn: *const fn (pointer: *anyopaque) ?*UserEmailConfigurationInterface,
    setUserEmailConfigurationInterfaceFn: *const fn (pointer: *anyopaque, userEmailConfigurationInterface: ?*UserEmailConfigurationInterface) void,
    getTimeCreatedFn: *const fn (pointer: *anyopaque) ?*TimeCreated,
    getTimeLastModifiedFn: *const fn (pointer: *anyopaque) ?*TimeLastModified,
    setTimeCreatedFn: *const fn (pointer: *anyopaque, timeCreated: ?*TimeCreated) void,
    setTimeLastModifiedFn: *const fn (pointer: *anyopaque, timeLastModified: ?*TimeLastModified) void,

    pub fn getUserEmailConfigurationInterface(self: *Self) ?*UserEmailConfigurationInterface {
        return self.getUserEmailConfigurationInterfaceFn(self.pointer);
    }

    pub fn setUserEmailConfigurationInterface(self: *Self, userEmailConfigurationInterface: ?*UserEmailConfigurationInterface) void {
        return self.setUserEmailConfigurationInterfaceFn(self.pointer, userEmailConfigurationInterface);
    }

    pub fn getTimeCreated(self: *Self) ?*TimeCreated {
        return self.getTimeCreatedFn(self.pointer);
    }

    pub fn getTimeLastModified(self: *Self) ?*TimeLastModified {
        return self.getTimeLastModifiedFn(self.pointer);
    }

    pub fn setTimeCreated(self: *Self, timeCreated: ?*TimeCreated) void {
        return self.setTimeCreatedFn(self.pointer, timeCreated);
    }

    pub fn setTimeLastModified(self: *Self, timeLastModified: ?*TimeLastModified) void {
        return self.setTimeLastModifiedFn(self.pointer, timeLastModified);
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
            fn getUserEmailConfigurationInterface(pointer: *anyopaque) ?*UserEmailConfigurationInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*UserEmailConfigurationInterface, Inheritance.receiver(implementation, "getUserEmailConfigurationInterface").getUserEmailConfigurationInterface());
            }
            fn setUserEmailConfigurationInterface(pointer: *anyopaque, userEmailConfigurationInterface: ?*UserEmailConfigurationInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setUserEmailConfigurationInterface").setUserEmailConfigurationInterface(userEmailConfigurationInterface);
            }
            fn getTimeCreated(pointer: *anyopaque) ?*TimeCreated {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*TimeCreated, Inheritance.receiver(implementation, "getTimeCreated").getTimeCreated());
            }
            fn getTimeLastModified(pointer: *anyopaque) ?*TimeLastModified {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*TimeLastModified, Inheritance.receiver(implementation, "getTimeLastModified").getTimeLastModified());
            }
            fn setTimeCreated(pointer: *anyopaque, timeCreated: ?*TimeCreated) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTimeCreated").setTimeCreated(timeCreated);
            }
            fn setTimeLastModified(pointer: *anyopaque, timeLastModified: ?*TimeLastModified) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTimeLastModified").setTimeLastModified(timeLastModified);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getUserEmailConfigurationInterfaceFn = Methods.getUserEmailConfigurationInterface, .setUserEmailConfigurationInterfaceFn = Methods.setUserEmailConfigurationInterface, .getTimeCreatedFn = Methods.getTimeCreated, .getTimeLastModifiedFn = Methods.getTimeLastModified, .setTimeCreatedFn = Methods.setTimeCreated, .setTimeLastModifiedFn = Methods.setTimeLastModified };
        return this;
    }
};

