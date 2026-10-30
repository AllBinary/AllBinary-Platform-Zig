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
// package org.allbinary.game.score

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Scoreable = @import("org/allbinary/game/score/Scoreable.zig").Scoreable;

// Java interface: an implementation is a pointer and a table of functions
pub const ScoreableInterfaceCompositeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.ScoreableInterfaceCompositeInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getScoreableInterfaceFn: *const fn (pointer: *anyopaque) ?*Scoreable,

    pub fn getScoreableInterface(self: *Self) ?*Scoreable {
        return self.getScoreableInterfaceFn(self.pointer);
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
            fn getScoreableInterface(pointer: *anyopaque) ?*Scoreable {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Scoreable, Inheritance.receiver(implementation, "getScoreableInterface").getScoreableInterface());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getScoreableInterfaceFn = Methods.getScoreableInterface };
        return this;
    }
};

