// Generated Code Do Not Modify
// package org.apache.xmlrpc

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

// Java interface: an implementation is a pointer and a table of functions
pub const XmlRpcHandler = struct {
    const Self = @This();
    pub const java_name = "org.apache.xmlrpc.XmlRpcHandler";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    executeFn: *const fn (pointer: *anyopaque, method: ?*String, params: ?*BasicArrayList) ?Object,

    pub fn execute(self: *Self, method: ?*String, params: ?*BasicArrayList) ?Object {
        return self.executeFn(self.pointer, method, params);
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
            fn execute(pointer: *anyopaque, method: ?*String, params: ?*BasicArrayList) ?Object {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?Object, Inheritance.receiver(implementation, "execute").execute(method, params));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .executeFn = Methods.execute };
        return this;
    }
};

