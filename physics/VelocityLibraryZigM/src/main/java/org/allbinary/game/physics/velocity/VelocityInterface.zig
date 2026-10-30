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
// package org.allbinary.game.physics.velocity

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicVelocityInterface = @import("org/allbinary/game/physics/velocity/BasicVelocityInterface.zig").BasicVelocityInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const VelocityInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.physics.velocity.VelocityInterface";
    pointer: *anyopaque,
    object: Object,
    base: BasicVelocityInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getMaxForwardVelocityFn: *const fn (pointer: *anyopaque) i32,
    getMaxReverseVelocityFn: *const fn (pointer: *anyopaque) i32,
    limitMaxXYForwardVelocityFn: *const fn (pointer: *anyopaque) void,
    limitMaxXYReverseVelocityFn: *const fn (pointer: *anyopaque) void,
    limitXYToForwardAndReverseMaxVelocityFn: *const fn (pointer: *anyopaque) void,
    limitMaxXYVelocityFn: *const fn (pointer: *anyopaque, maxVelocity: i32) void,
    setMaxForwardVelocityFn: *const fn (pointer: *anyopaque, maxForwardVelocity: i32) void,
    setMaxReverseVelocityFn: *const fn (pointer: *anyopaque, maxReverseVelocity: i32) void,

    pub fn getMaxForwardVelocity(self: *Self) i32 {
        return self.getMaxForwardVelocityFn(self.pointer);
    }

    pub fn getMaxReverseVelocity(self: *Self) i32 {
        return self.getMaxReverseVelocityFn(self.pointer);
    }

    pub fn limitMaxXYForwardVelocity(self: *Self) void {
        return self.limitMaxXYForwardVelocityFn(self.pointer);
    }

    pub fn limitMaxXYReverseVelocity(self: *Self) void {
        return self.limitMaxXYReverseVelocityFn(self.pointer);
    }

    pub fn limitXYToForwardAndReverseMaxVelocity(self: *Self) void {
        return self.limitXYToForwardAndReverseMaxVelocityFn(self.pointer);
    }

    pub fn limitMaxXYVelocity(self: *Self, maxVelocity: i32) void {
        return self.limitMaxXYVelocityFn(self.pointer, maxVelocity);
    }

    pub fn setMaxForwardVelocity(self: *Self, maxForwardVelocity: i32) void {
        return self.setMaxForwardVelocityFn(self.pointer, maxForwardVelocity);
    }

    pub fn setMaxReverseVelocity(self: *Self, maxReverseVelocity: i32) void {
        return self.setMaxReverseVelocityFn(self.pointer, maxReverseVelocity);
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
            fn getMaxForwardVelocity(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMaxForwardVelocity").getMaxForwardVelocity();
            }
            fn getMaxReverseVelocity(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMaxReverseVelocity").getMaxReverseVelocity();
            }
            fn limitMaxXYForwardVelocity(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "limitMaxXYForwardVelocity").limitMaxXYForwardVelocity();
            }
            fn limitMaxXYReverseVelocity(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "limitMaxXYReverseVelocity").limitMaxXYReverseVelocity();
            }
            fn limitXYToForwardAndReverseMaxVelocity(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "limitXYToForwardAndReverseMaxVelocity").limitXYToForwardAndReverseMaxVelocity();
            }
            fn limitMaxXYVelocity(pointer: *anyopaque, maxVelocity: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "limitMaxXYVelocity").limitMaxXYVelocity(maxVelocity);
            }
            fn setMaxForwardVelocity(pointer: *anyopaque, maxForwardVelocity: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMaxForwardVelocity").setMaxForwardVelocity(maxForwardVelocity);
            }
            fn setMaxReverseVelocity(pointer: *anyopaque, maxReverseVelocity: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMaxReverseVelocity").setMaxReverseVelocity(maxReverseVelocity);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicVelocityInterface.of(object).?.*, .toStringFn = Methods.toString, .getMaxForwardVelocityFn = Methods.getMaxForwardVelocity, .getMaxReverseVelocityFn = Methods.getMaxReverseVelocity, .limitMaxXYForwardVelocityFn = Methods.limitMaxXYForwardVelocity, .limitMaxXYReverseVelocityFn = Methods.limitMaxXYReverseVelocity, .limitXYToForwardAndReverseMaxVelocityFn = Methods.limitXYToForwardAndReverseMaxVelocity, .limitMaxXYVelocityFn = Methods.limitMaxXYVelocity, .setMaxForwardVelocityFn = Methods.setMaxForwardVelocity, .setMaxReverseVelocityFn = Methods.setMaxReverseVelocity };
        return this;
    }
};

