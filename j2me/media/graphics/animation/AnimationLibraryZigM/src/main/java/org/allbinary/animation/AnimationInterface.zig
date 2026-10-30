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
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const LocationPaintableInterface = @import("org/allbinary/graphics/paint/LocationPaintableInterface.zig").LocationPaintableInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const AnimationInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.AnimationInterface";
    pointer: *anyopaque,
    object: Object,
    base: LocationPaintableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    nextFrameFn: *const fn (pointer: *anyopaque) void,
    paintThreedXYZFn: *const fn (pointer: *anyopaque, graphics: ?*Graphics, x: i32, y: i32, z: i32) void,

    pub fn nextFrame(self: *Self) void {
        return self.nextFrameFn(self.pointer);
    }

    pub fn paintThreedXYZ(self: *Self, graphics: ?*Graphics, x: i32, y: i32, z: i32) void {
        return self.paintThreedXYZFn(self.pointer, graphics, x, y, z);
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
            fn nextFrame(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "nextFrame").nextFrame();
            }
            fn paintThreedXYZ(pointer: *anyopaque, graphics: ?*Graphics, x: i32, y: i32, z: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "paintThreedXYZ").paintThreedXYZ(graphics, x, y, z);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = LocationPaintableInterface.of(object).?.*, .toStringFn = Methods.toString, .nextFrameFn = Methods.nextFrame, .paintThreedXYZFn = Methods.paintThreedXYZ };
        return this;
    }
};

