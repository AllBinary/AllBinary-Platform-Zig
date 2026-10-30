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
// package org.allbinary.game.midlet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const DemoGameMidletEvent = @import("org/allbinary/game/midlet/DemoGameMidletEvent.zig").DemoGameMidletEvent;

// Java interface: an implementation is a pointer and a table of functions
pub const DemoGameMidletEventListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.midlet.DemoGameMidletEventListener";
    pointer: *anyopaque,
    object: Object,
    base: EventListenerInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    onDemoStartFn: *const fn (pointer: *anyopaque) void,
    onGameStartFn: *const fn (pointer: *anyopaque) void,
    onDemoGameMidletEventFn: *const fn (pointer: *anyopaque, demoGameMidletEvent: ?*DemoGameMidletEvent) void,

    pub fn onDemoStart(self: *Self) void {
        return self.onDemoStartFn(self.pointer);
    }

    pub fn onGameStart(self: *Self) void {
        return self.onGameStartFn(self.pointer);
    }

    pub fn onDemoGameMidletEvent(self: *Self, demoGameMidletEvent: ?*DemoGameMidletEvent) void {
        return self.onDemoGameMidletEventFn(self.pointer, demoGameMidletEvent);
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
            fn onDemoStart(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onDemoStart").onDemoStart();
            }
            fn onGameStart(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onGameStart").onGameStart();
            }
            fn onDemoGameMidletEvent(pointer: *anyopaque, demoGameMidletEvent: ?*DemoGameMidletEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onDemoGameMidletEvent").onDemoGameMidletEvent(demoGameMidletEvent);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = EventListenerInterface.of(object).?.*, .toStringFn = Methods.toString, .onDemoStartFn = Methods.onDemoStart, .onGameStartFn = Methods.onGameStart, .onDemoGameMidletEventFn = Methods.onDemoGameMidletEvent };
        return this;
    }
};

