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
// package org.allbinary.logic.system.hardware.components.interfaces

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const HardwareComponentInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface";
    pointer: *anyopaque,
    object: Object,
    compareToFn: *const fn (pointer: *anyopaque, componentInterface: ?*HardwareComponentInterface) bool,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn compareTo(self: *Self, componentInterface: ?*HardwareComponentInterface) bool {
        return self.compareToFn(self.pointer, componentInterface);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn compareTo(pointer: *anyopaque, componentInterface: ?*HardwareComponentInterface) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "compareTo").compareTo(componentInterface);
            }
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "toString").toString());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .compareToFn = Methods.compareTo, .toStringFn = Methods.toString };
        return this;
    }
};

