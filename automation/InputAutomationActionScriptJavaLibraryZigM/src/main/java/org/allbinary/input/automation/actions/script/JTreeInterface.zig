// Generated Code Do Not Modify
// package org.allbinary.input.automation.actions.script

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const JTreeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.JTreeInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    updateJTreeFn: *const fn (pointer: *anyopaque) void,
    getActionScriptJTreeFn: *const fn (pointer: *anyopaque) ?*JTree,

    pub fn updateJTree(self: *Self) void {
        return self.updateJTreeFn(self.pointer);
    }

    pub fn getActionScriptJTree(self: *Self) ?*JTree {
        return self.getActionScriptJTreeFn(self.pointer);
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
            fn updateJTree(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "updateJTree").updateJTree();
            }
            fn getActionScriptJTree(pointer: *anyopaque) ?*JTree {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*JTree, Inheritance.receiver(implementation, "getActionScriptJTree").getActionScriptJTree());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .updateJTreeFn = Methods.updateJTree, .getActionScriptJTreeFn = Methods.getActionScriptJTree };
        return this;
    }
};

