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
// package org.allbinary.graphics.paint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;

// Java interface: an implementation is a pointer and a table of functions
pub const PaintableInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.paint.PaintableInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    paintFn: *const fn (pointer: *anyopaque, graphics: ?*Graphics) void,
    paintThreedFn: *const fn (pointer: *anyopaque, graphics: ?*Graphics) void,

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        return self.paintFn(self.pointer, graphics);
    }

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        return self.paintThreedFn(self.pointer, graphics);
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
            fn paint(pointer: *anyopaque, graphics: ?*Graphics) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "paint").paint(graphics);
            }
            fn paintThreed(pointer: *anyopaque, graphics: ?*Graphics) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "paintThreed").paintThreed(graphics);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .paintFn = Methods.paint, .paintThreedFn = Methods.paintThreed };
        return this;
    }
};

