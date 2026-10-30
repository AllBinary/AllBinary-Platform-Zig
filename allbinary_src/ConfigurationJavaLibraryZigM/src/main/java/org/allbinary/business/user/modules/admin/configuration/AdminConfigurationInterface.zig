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
// package org.allbinary.business.user.modules.admin.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ContextConfigurationInterface = @import("org/allbinary/business/context/configuration/ContextConfigurationInterface.zig").ContextConfigurationInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const AdminConfigurationInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    writeFn: *const fn (pointer: *anyopaque) void,
    getContextConfigurationInterfaceFn: *const fn (pointer: *anyopaque) ?*ContextConfigurationInterface,
    setContextConfigurationInterfaceFn: *const fn (pointer: *anyopaque, contextConfigurationInterface: ?*ContextConfigurationInterface) void,

    pub fn write(self: *Self) void {
        return self.writeFn(self.pointer);
    }

    pub fn getContextConfigurationInterface(self: *Self) ?*ContextConfigurationInterface {
        return self.getContextConfigurationInterfaceFn(self.pointer);
    }

    pub fn setContextConfigurationInterface(self: *Self, contextConfigurationInterface: ?*ContextConfigurationInterface) void {
        return self.setContextConfigurationInterfaceFn(self.pointer, contextConfigurationInterface);
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
            fn write(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "write").write();
            }
            fn getContextConfigurationInterface(pointer: *anyopaque) ?*ContextConfigurationInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*ContextConfigurationInterface, Inheritance.receiver(implementation, "getContextConfigurationInterface").getContextConfigurationInterface());
            }
            fn setContextConfigurationInterface(pointer: *anyopaque, contextConfigurationInterface: ?*ContextConfigurationInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setContextConfigurationInterface").setContextConfigurationInterface(contextConfigurationInterface);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .writeFn = Methods.write, .getContextConfigurationInterfaceFn = Methods.getContextConfigurationInterface, .setContextConfigurationInterfaceFn = Methods.setContextConfigurationInterface };
        return this;
    }
};

