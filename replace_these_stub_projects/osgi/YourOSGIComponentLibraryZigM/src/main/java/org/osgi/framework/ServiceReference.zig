// Generated Code Do Not Modify
// package org.osgi.framework

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const ServiceReference = struct {
    const Self = @This();
    pub const java_name = "org.osgi.framework.ServiceReference";
    pointer: *anyopaque,
    object: Object,
    base: Comparable,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getPropertyFn: *const fn (pointer: *anyopaque, key: ?*String) ?Object,
    getPropertyKeysFn: *const fn (pointer: *anyopaque) []?*String,

    pub fn getProperty(self: *Self, key: ?*String) ?Object {
        return self.getPropertyFn(self.pointer, key);
    }

    pub fn getPropertyKeys(self: *Self) []?*String {
        return self.getPropertyKeysFn(self.pointer);
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
            fn getProperty(pointer: *anyopaque, key: ?*String) ?Object {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?Object, Inheritance.receiver(implementation, "getProperty").getProperty(key));
            }
            fn getPropertyKeys(pointer: *anyopaque) []?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getPropertyKeys").getPropertyKeys();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = Comparable.of(object).?.*, .toStringFn = Methods.toString, .getPropertyFn = Methods.getProperty, .getPropertyKeysFn = Methods.getPropertyKeys };
        return this;
    }
};

