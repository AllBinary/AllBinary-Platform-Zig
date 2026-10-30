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
// package org.allbinary.game.configuration.feature

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const GameFeatureControlledInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.feature.GameFeatureControlledInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    initFn: *const fn (pointer: *anyopaque, level: i32) void,
    isFeatureFn: *const fn (pointer: *anyopaque) bool,
    isLoadingLevelFn: *const fn (pointer: *anyopaque, level: i32) bool,

    pub fn init(self: *Self, level: i32) void {
        return self.initFn(self.pointer, level);
    }

    pub fn isFeature(self: *Self) bool {
        return self.isFeatureFn(self.pointer);
    }

    pub fn isLoadingLevel(self: *Self, level: i32) bool {
        return self.isLoadingLevelFn(self.pointer, level);
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
            fn init(pointer: *anyopaque, level: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "init").init(level);
            }
            fn isFeature(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isFeature").isFeature();
            }
            fn isLoadingLevel(pointer: *anyopaque, level: i32) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isLoadingLevel").isLoadingLevel(level);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .initFn = Methods.init, .isFeatureFn = Methods.isFeature, .isLoadingLevelFn = Methods.isLoadingLevel };
        return this;
    }
};

