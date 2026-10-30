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
// package org.allbinary.logic.math.vector

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;

// Java interface: an implementation is a pointer and a table of functions
pub const MathVectorInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.vector.MathVectorInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getDirectionFn: *const fn (pointer: *anyopaque) i32,
    getMagnitudeFn: *const fn (pointer: *anyopaque) ?*BasicDecimal,
    getResultFn: *const fn (pointer: *anyopaque) ?*BasicDecimal,

    pub fn getDirection(self: *Self) i32 {
        return self.getDirectionFn(self.pointer);
    }

    pub fn getMagnitude(self: *Self) ?*BasicDecimal {
        return self.getMagnitudeFn(self.pointer);
    }

    pub fn getResult(self: *Self) ?*BasicDecimal {
        return self.getResultFn(self.pointer);
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
            fn getDirection(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getDirection").getDirection();
            }
            fn getMagnitude(pointer: *anyopaque) ?*BasicDecimal {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicDecimal, Inheritance.receiver(implementation, "getMagnitude").getMagnitude());
            }
            fn getResult(pointer: *anyopaque) ?*BasicDecimal {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicDecimal, Inheritance.receiver(implementation, "getResult").getResult());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getDirectionFn = Methods.getDirection, .getMagnitudeFn = Methods.getMagnitude, .getResultFn = Methods.getResult };
        return this;
    }
};

