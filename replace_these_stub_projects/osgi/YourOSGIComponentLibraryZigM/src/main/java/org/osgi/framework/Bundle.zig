// Generated Code Do Not Modify
// package org.osgi.framework

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BundleException = @import("org/osgi/framework/BundleException.zig").BundleException;

// Java interface: an implementation is a pointer and a table of functions
pub const Bundle = struct {
    const Self = @This();
    pub const java_name = "org.osgi.framework.Bundle";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getSymbolicNameFn: *const fn (pointer: *anyopaque) ?*String,
    startFn: *const fn (pointer: *anyopaque) void,
    startFn: *const fn (pointer: *anyopaque, options: i32) void,

    pub fn getSymbolicName(self: *Self) ?*String {
        return self.getSymbolicNameFn(self.pointer);
    }

    pub fn start(self: *Self) void {
        return self.startFn(self.pointer);
    }

    pub fn start(self: *Self, options: i32) void {
        return self.startFn(self.pointer, options);
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
            fn getSymbolicName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSymbolicName").getSymbolicName());
            }
            fn start(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "start").start();
            }
            fn start(pointer: *anyopaque, options: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "start").start(options);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getSymbolicNameFn = Methods.getSymbolicName, .startFn = Methods.start, .startFn = Methods.start };
        return this;
    }
};

