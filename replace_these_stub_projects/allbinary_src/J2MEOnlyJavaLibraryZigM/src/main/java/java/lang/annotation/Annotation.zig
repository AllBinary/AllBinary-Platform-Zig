// Generated Code Do Not Modify
// package java.lang.annotation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const Annotation = struct {
    const Self = @This();
    pub const java_name = "java.lang.annotation.Annotation";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    annotationTypeFn: *const fn (pointer: *anyopaque) ?*anyopaque,

    pub fn annotationType(self: *Self) ?*anyopaque {
        return self.annotationTypeFn(self.pointer);
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
            fn annotationType(pointer: *anyopaque) ?*anyopaque {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*anyopaque, Inheritance.receiver(implementation, "annotationType").annotationType());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .annotationTypeFn = Methods.annotationType };
        return this;
    }
};

