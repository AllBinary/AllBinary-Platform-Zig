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
// package org.allbinary.logic.control.contraints.size

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const SizeConstraintInterface = @import("org/allbinary/logic/control/contraints/size/SizeConstraintInterface.zig").SizeConstraintInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const TwoDimensionalConstraintInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getHeightFn: *const fn (pointer: *anyopaque) ?*SizeConstraintInterface,
    getWidthFn: *const fn (pointer: *anyopaque) ?*SizeConstraintInterface,
    setHeightFn: *const fn (pointer: *anyopaque, heightSizeConstraintInterface: ?*SizeConstraintInterface) void,
    setWidthFn: *const fn (pointer: *anyopaque, widthSizeConstraintInterface: ?*SizeConstraintInterface) void,

    pub fn getHeight(self: *Self) ?*SizeConstraintInterface {
        return self.getHeightFn(self.pointer);
    }

    pub fn getWidth(self: *Self) ?*SizeConstraintInterface {
        return self.getWidthFn(self.pointer);
    }

    pub fn setHeight(self: *Self, heightSizeConstraintInterface: ?*SizeConstraintInterface) void {
        return self.setHeightFn(self.pointer, heightSizeConstraintInterface);
    }

    pub fn setWidth(self: *Self, widthSizeConstraintInterface: ?*SizeConstraintInterface) void {
        return self.setWidthFn(self.pointer, widthSizeConstraintInterface);
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
            fn getHeight(pointer: *anyopaque) ?*SizeConstraintInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*SizeConstraintInterface, Inheritance.receiver(implementation, "getHeight").getHeight());
            }
            fn getWidth(pointer: *anyopaque) ?*SizeConstraintInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*SizeConstraintInterface, Inheritance.receiver(implementation, "getWidth").getWidth());
            }
            fn setHeight(pointer: *anyopaque, heightSizeConstraintInterface: ?*SizeConstraintInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setHeight").setHeight(heightSizeConstraintInterface);
            }
            fn setWidth(pointer: *anyopaque, widthSizeConstraintInterface: ?*SizeConstraintInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setWidth").setWidth(widthSizeConstraintInterface);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getHeightFn = Methods.getHeight, .getWidthFn = Methods.getWidth, .setHeightFn = Methods.setHeight, .setWidthFn = Methods.setWidth };
        return this;
    }
};

