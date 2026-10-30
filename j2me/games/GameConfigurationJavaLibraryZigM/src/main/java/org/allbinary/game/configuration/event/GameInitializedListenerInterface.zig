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
// package org.allbinary.game.configuration.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const GameInitializedEvent = @import("org/allbinary/game/configuration/event/GameInitializedEvent.zig").GameInitializedEvent;

// Java interface: an implementation is a pointer and a table of functions
pub const GameInitializedListenerInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.event.GameInitializedListenerInterface";
    pointer: *anyopaque,
    object: Object,
    base: EventListenerInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    onGameInitializedFn: *const fn (pointer: *anyopaque, gameInitializedEvent: ?*GameInitializedEvent) void,

    pub fn onGameInitialized(self: *Self, gameInitializedEvent: ?*GameInitializedEvent) void {
        return self.onGameInitializedFn(self.pointer, gameInitializedEvent);
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
            fn onGameInitialized(pointer: *anyopaque, gameInitializedEvent: ?*GameInitializedEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onGameInitialized").onGameInitialized(gameInitializedEvent);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = EventListenerInterface.of(object).?.*, .toStringFn = Methods.toString, .onGameInitializedFn = Methods.onGameInitialized };
        return this;
    }
};

