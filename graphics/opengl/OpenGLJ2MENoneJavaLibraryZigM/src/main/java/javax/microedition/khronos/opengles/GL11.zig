// Generated Code Do Not Modify
// package javax.microedition.khronos.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;

// Java interface: an implementation is a pointer and a table of functions
pub const GL11 = struct {
    const Self = @This();
    pub const java_name = "javax.microedition.khronos.opengles.GL11";
    pointer: *anyopaque,
    object: Object,
    base: GL10,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,

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
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = GL10.of(object).?.*, .toStringFn = Methods.toString };
        return this;
    }
};

