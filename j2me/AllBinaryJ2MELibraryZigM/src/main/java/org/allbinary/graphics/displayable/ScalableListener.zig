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
// package org.allbinary.graphics.displayable

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const ScalableListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.ScalableListener";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getRatioFn: *const fn (interface_pointer: *anyopaque, ratio: f32) f32,
    getLeftFn: *const fn (interface_pointer: *anyopaque, xOffset: i32) i32,
    getTopFn: *const fn (interface_pointer: *anyopaque, yOffset: i32) i32,
    scaleFn: *const fn (interface_pointer: *anyopaque, ratio: f32) void,

    pub fn getRatio(self: *Self, ratio: f32) f32 {
        return self.getRatioFn(self.pointer, ratio);
    }

    pub fn getLeft(self: *Self, xOffset: i32) i32 {
        return self.getLeftFn(self.pointer, xOffset);
    }

    pub fn getTop(self: *Self, yOffset: i32) i32 {
        return self.getTopFn(self.pointer, yOffset);
    }

    pub fn scale(self: *Self, ratio: f32) void {
        return self.scaleFn(self.pointer, ratio);
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
            fn getRatio(interface_pointer: *anyopaque, ratio: f32) f32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "getRatio", .{ ratio });
            }
            fn getLeft(interface_pointer: *anyopaque, xOffset: i32) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "getLeft", .{ xOffset });
            }
            fn getTop(interface_pointer: *anyopaque, yOffset: i32) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "getTop", .{ yOffset });
            }
            fn scale(interface_pointer: *anyopaque, ratio: f32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "scale", .{ ratio });
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getRatioFn = Methods.getRatio, .getLeftFn = Methods.getLeft, .getTopFn = Methods.getTop, .scaleFn = Methods.scale };
        return this;
    }
};

