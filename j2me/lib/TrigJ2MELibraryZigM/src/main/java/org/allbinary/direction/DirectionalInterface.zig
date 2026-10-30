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
// package org.allbinary.direction

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Angle = @import("org/allbinary/math/Angle.zig").Angle;
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;

// Java interface: an implementation is a pointer and a table of functions
pub const DirectionalInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.direction.DirectionalInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setFrameByDirectionFn: *const fn (pointer: *anyopaque, direction: ?*Direction) void,
    setFrameToAngleFn: *const fn (pointer: *anyopaque, angle: ?*Angle) void,
    adjustFrameToAngleFn: *const fn (pointer: *anyopaque, newAngle: ?*Angle) void,
    adjustFrameFn: *const fn (pointer: *anyopaque, angle: i16) void,

    pub fn setFrameByDirection(self: *Self, direction: ?*Direction) void {
        return self.setFrameByDirectionFn(self.pointer, direction);
    }

    pub fn setFrameToAngle(self: *Self, angle: ?*Angle) void {
        return self.setFrameToAngleFn(self.pointer, angle);
    }

    pub fn adjustFrameToAngle(self: *Self, newAngle: ?*Angle) void {
        return self.adjustFrameToAngleFn(self.pointer, newAngle);
    }

    pub fn adjustFrame(self: *Self, angle: i16) void {
        return self.adjustFrameFn(self.pointer, angle);
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
            fn setFrameByDirection(pointer: *anyopaque, direction: ?*Direction) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setFrameByDirection").setFrameByDirection(direction);
            }
            fn setFrameToAngle(pointer: *anyopaque, angle: ?*Angle) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setFrameToAngle").setFrameToAngle(angle);
            }
            fn adjustFrameToAngle(pointer: *anyopaque, newAngle: ?*Angle) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "adjustFrameToAngle").adjustFrameToAngle(newAngle);
            }
            fn adjustFrame(pointer: *anyopaque, angle: i16) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "adjustFrame").adjustFrame(angle);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .setFrameByDirectionFn = Methods.setFrameByDirection, .setFrameToAngleFn = Methods.setFrameToAngle, .adjustFrameToAngleFn = Methods.adjustFrameToAngle, .adjustFrameFn = Methods.adjustFrame };
        return this;
    }
};

