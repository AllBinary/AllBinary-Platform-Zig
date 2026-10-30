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
// package org.allbinary.media.image.analysis

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const ColorRangeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.analysis.ColorRangeInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getMinRedFn: *const fn (pointer: *anyopaque) i32,
    setMinRedFn: *const fn (pointer: *anyopaque, minRed: i32) void,
    getMaxRedFn: *const fn (pointer: *anyopaque) i32,
    setMaxRedFn: *const fn (pointer: *anyopaque, maxRed: i32) void,
    getMinGreenFn: *const fn (pointer: *anyopaque) i32,
    setMinGreenFn: *const fn (pointer: *anyopaque, minGreen: i32) void,
    getMaxGreenFn: *const fn (pointer: *anyopaque) i32,
    setMaxGreenFn: *const fn (pointer: *anyopaque, maxGreen: i32) void,
    getMinBlueFn: *const fn (pointer: *anyopaque) i32,
    setMinBlueFn: *const fn (pointer: *anyopaque, minBlue: i32) void,
    getMaxBlueFn: *const fn (pointer: *anyopaque) i32,
    setMaxBlueFn: *const fn (pointer: *anyopaque, maxBlue: i32) void,
    isInRangeFn: *const fn (pointer: *anyopaque, color: ?*Color) bool,

    pub fn getMinRed(self: *Self) i32 {
        return self.getMinRedFn(self.pointer);
    }

    pub fn setMinRed(self: *Self, minRed: i32) void {
        return self.setMinRedFn(self.pointer, minRed);
    }

    pub fn getMaxRed(self: *Self) i32 {
        return self.getMaxRedFn(self.pointer);
    }

    pub fn setMaxRed(self: *Self, maxRed: i32) void {
        return self.setMaxRedFn(self.pointer, maxRed);
    }

    pub fn getMinGreen(self: *Self) i32 {
        return self.getMinGreenFn(self.pointer);
    }

    pub fn setMinGreen(self: *Self, minGreen: i32) void {
        return self.setMinGreenFn(self.pointer, minGreen);
    }

    pub fn getMaxGreen(self: *Self) i32 {
        return self.getMaxGreenFn(self.pointer);
    }

    pub fn setMaxGreen(self: *Self, maxGreen: i32) void {
        return self.setMaxGreenFn(self.pointer, maxGreen);
    }

    pub fn getMinBlue(self: *Self) i32 {
        return self.getMinBlueFn(self.pointer);
    }

    pub fn setMinBlue(self: *Self, minBlue: i32) void {
        return self.setMinBlueFn(self.pointer, minBlue);
    }

    pub fn getMaxBlue(self: *Self) i32 {
        return self.getMaxBlueFn(self.pointer);
    }

    pub fn setMaxBlue(self: *Self, maxBlue: i32) void {
        return self.setMaxBlueFn(self.pointer, maxBlue);
    }

    pub fn isInRange(self: *Self, color: ?*Color) bool {
        return self.isInRangeFn(self.pointer, color);
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
            fn getMinRed(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMinRed").getMinRed();
            }
            fn setMinRed(pointer: *anyopaque, minRed: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMinRed").setMinRed(minRed);
            }
            fn getMaxRed(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMaxRed").getMaxRed();
            }
            fn setMaxRed(pointer: *anyopaque, maxRed: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMaxRed").setMaxRed(maxRed);
            }
            fn getMinGreen(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMinGreen").getMinGreen();
            }
            fn setMinGreen(pointer: *anyopaque, minGreen: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMinGreen").setMinGreen(minGreen);
            }
            fn getMaxGreen(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMaxGreen").getMaxGreen();
            }
            fn setMaxGreen(pointer: *anyopaque, maxGreen: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMaxGreen").setMaxGreen(maxGreen);
            }
            fn getMinBlue(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMinBlue").getMinBlue();
            }
            fn setMinBlue(pointer: *anyopaque, minBlue: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMinBlue").setMinBlue(minBlue);
            }
            fn getMaxBlue(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMaxBlue").getMaxBlue();
            }
            fn setMaxBlue(pointer: *anyopaque, maxBlue: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMaxBlue").setMaxBlue(maxBlue);
            }
            fn isInRange(pointer: *anyopaque, color: ?*Color) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isInRange").isInRange(color);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getMinRedFn = Methods.getMinRed, .setMinRedFn = Methods.setMinRed, .getMaxRedFn = Methods.getMaxRed, .setMaxRedFn = Methods.setMaxRed, .getMinGreenFn = Methods.getMinGreen, .setMinGreenFn = Methods.setMinGreen, .getMaxGreenFn = Methods.getMaxGreen, .setMaxGreenFn = Methods.setMaxGreen, .getMinBlueFn = Methods.getMinBlue, .setMinBlueFn = Methods.setMinBlue, .getMaxBlueFn = Methods.getMaxBlue, .setMaxBlueFn = Methods.setMaxBlue, .isInRangeFn = Methods.isInRange };
        return this;
    }
};

