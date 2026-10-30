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
// package org.allbinary.input.automation.module.game

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Double = @import("java/lang/Double.zig").Double;

// Java interface: an implementation is a pointer and a table of functions
pub const MeteredGameObjectInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.game.MeteredGameObjectInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getRatiosFn: *const fn (pointer: *anyopaque) []?*Double,
    isGoodFn: *const fn (pointer: *anyopaque) bool,
    isDroppingFn: *const fn (pointer: *anyopaque) bool,

    pub fn getRatios(self: *Self) []?*Double {
        return self.getRatiosFn(self.pointer);
    }

    pub fn isGood(self: *Self) bool {
        return self.isGoodFn(self.pointer);
    }

    pub fn isDropping(self: *Self) bool {
        return self.isDroppingFn(self.pointer);
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
            fn getRatios(pointer: *anyopaque) []?*Double {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getRatios").getRatios();
            }
            fn isGood(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isGood").isGood();
            }
            fn isDropping(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isDropping").isDropping();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getRatiosFn = Methods.getRatios, .isGoodFn = Methods.isGood, .isDroppingFn = Methods.isDropping };
        return this;
    }
};

