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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const TestInputInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.TestInputInterface";
    pointer: *anyopaque,
    object: Object,
    base: PaintableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    upFn: *const fn (pointer: *anyopaque) void,
    downFn: *const fn (pointer: *anyopaque) void,
    leftFn: *const fn (pointer: *anyopaque) void,
    rightFn: *const fn (pointer: *anyopaque) void,
    strafeLeftFn: *const fn (pointer: *anyopaque) void,
    strafeRightFn: *const fn (pointer: *anyopaque) void,

    pub fn up(self: *Self) void {
        return self.upFn(self.pointer);
    }

    pub fn down(self: *Self) void {
        return self.downFn(self.pointer);
    }

    pub fn left(self: *Self) void {
        return self.leftFn(self.pointer);
    }

    pub fn right(self: *Self) void {
        return self.rightFn(self.pointer);
    }

    pub fn strafeLeft(self: *Self) void {
        return self.strafeLeftFn(self.pointer);
    }

    pub fn strafeRight(self: *Self) void {
        return self.strafeRightFn(self.pointer);
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
            fn up(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "up").up();
            }
            fn down(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "down").down();
            }
            fn left(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "left").left();
            }
            fn right(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "right").right();
            }
            fn strafeLeft(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "strafeLeft").strafeLeft();
            }
            fn strafeRight(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "strafeRight").strafeRight();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = PaintableInterface.of(object).?.*, .toStringFn = Methods.toString, .upFn = Methods.up, .downFn = Methods.down, .leftFn = Methods.left, .rightFn = Methods.right, .strafeLeftFn = Methods.strafeLeft, .strafeRightFn = Methods.strafeRight };
        return this;
    }
};

