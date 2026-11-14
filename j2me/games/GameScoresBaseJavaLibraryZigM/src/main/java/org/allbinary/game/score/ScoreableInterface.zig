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
// package org.allbinary.game.score

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const ScoreableInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.ScoreableInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getPointsFn: *const fn (interface_pointer: *anyopaque) i32,
    addPointsFn: *const fn (interface_pointer: *anyopaque, points: i32) void,
    removePointsFn: *const fn (interface_pointer: *anyopaque, points: i32) void,

    pub fn getPoints(self: *Self) i32 {
        return self.getPointsFn(self.pointer);
    }

    pub fn addPoints(self: *Self, points: i32) void {
        return self.addPointsFn(self.pointer, points);
    }

    pub fn removePoints(self: *Self, points: i32) void {
        return self.removePointsFn(self.pointer, points);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const ImplementationType = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn getPoints(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getPoints").getPoints();
            }
            fn addPoints(interface_pointer: *anyopaque, points: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "addPoints", .{ points });
            }
            fn removePoints(interface_pointer: *anyopaque, points: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "removePoints", .{ points });
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getPointsFn = Methods.getPoints, .addPointsFn = Methods.addPoints, .removePointsFn = Methods.removePoints };
        return this;
    }
};

