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
// package org.allbinary.game.state

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameState = @import("org/allbinary/game/state/GameState.zig").GameState;
const Exception = @import("java/lang/Exception.zig").Exception;

// Java interface: an implementation is a pointer and a table of functions
pub const GameStateCompositeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.state.GameStateCompositeInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setGameStateFn: *const fn (interface_pointer: *anyopaque, gameState: ?*GameState) void,
    getGameStateFn: *const fn (interface_pointer: *anyopaque) ?*GameState,

    pub fn setGameState(self: *Self, gameState: ?*GameState) void {
        return self.setGameStateFn(self.pointer, gameState);
    }

    pub fn getGameState(self: *Self) ?*GameState {
        return self.getGameStateFn(self.pointer);
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
            fn setGameState(interface_pointer: *anyopaque, gameState: ?*GameState) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "setGameState", .{ gameState });
            }
            fn getGameState(interface_pointer: *anyopaque) ?*GameState {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*GameState, Inheritance.receiver(implementation, "getGameState").getGameState());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .setGameStateFn = Methods.setGameState, .getGameStateFn = Methods.getGameState };
        return this;
    }
};

