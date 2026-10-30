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
// package org.allbinary.bounds

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const BoundsVisitorInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.bounds.BoundsVisitorInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getXFn: *const fn (pointer: *anyopaque) i32,
    getYFn: *const fn (pointer: *anyopaque) i32,
    maxXFn: *const fn (pointer: *anyopaque) void,
    maxYFn: *const fn (pointer: *anyopaque) void,
    minXFn: *const fn (pointer: *anyopaque) void,
    minYFn: *const fn (pointer: *anyopaque) void,

    pub fn getX(self: *Self) i32 {
        return self.getXFn(self.pointer);
    }

    pub fn getY(self: *Self) i32 {
        return self.getYFn(self.pointer);
    }

    pub fn maxX(self: *Self) void {
        return self.maxXFn(self.pointer);
    }

    pub fn maxY(self: *Self) void {
        return self.maxYFn(self.pointer);
    }

    pub fn minX(self: *Self) void {
        return self.minXFn(self.pointer);
    }

    pub fn minY(self: *Self) void {
        return self.minYFn(self.pointer);
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
            fn getX(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getX").getX();
            }
            fn getY(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getY").getY();
            }
            fn maxX(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "maxX").maxX();
            }
            fn maxY(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "maxY").maxY();
            }
            fn minX(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "minX").minX();
            }
            fn minY(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "minY").minY();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getXFn = Methods.getX, .getYFn = Methods.getY, .maxXFn = Methods.maxX, .maxYFn = Methods.maxY, .minXFn = Methods.minX, .minYFn = Methods.minY };
        return this;
    }
};

