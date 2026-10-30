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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameInputInterface = @import("org/allbinary/game/input/GameInputInterface.zig").GameInputInterface;
const PlayerGameInput = @import("org/allbinary/game/input/PlayerGameInput.zig").PlayerGameInput;

// Java interface: an implementation is a pointer and a table of functions
pub const PlayerGameInputCompositeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.PlayerGameInputCompositeInterface";
    pointer: *anyopaque,
    object: Object,
    base: GameInputInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getPlayerGameInputFn: *const fn (pointer: *anyopaque) ?*PlayerGameInput,

    pub fn getPlayerGameInput(self: *Self) ?*PlayerGameInput {
        return self.getPlayerGameInputFn(self.pointer);
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
            fn getPlayerGameInput(pointer: *anyopaque) ?*PlayerGameInput {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PlayerGameInput, Inheritance.receiver(implementation, "getPlayerGameInput").getPlayerGameInput());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = GameInputInterface.of(object).?.*, .toStringFn = Methods.toString, .getPlayerGameInputFn = Methods.getPlayerGameInput };
        return this;
    }
};

