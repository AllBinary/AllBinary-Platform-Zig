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
// package org.allbinary.graphics.displayable.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const DisplayChangeEvent = @import("org/allbinary/graphics/displayable/event/DisplayChangeEvent.zig").DisplayChangeEvent;

// Java interface: an implementation is a pointer and a table of functions
pub const DisplayChangeEventListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.event.DisplayChangeEventListener";
    pointer: *anyopaque,
    object: Object,
    base: EventListenerInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    onDisplayChangeEventFn: *const fn (pointer: *anyopaque, displayChangeEvent: ?*DisplayChangeEvent) void,

    pub fn onDisplayChangeEvent(self: *Self, displayChangeEvent: ?*DisplayChangeEvent) void {
        return self.onDisplayChangeEventFn(self.pointer, displayChangeEvent);
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
            fn onDisplayChangeEvent(pointer: *anyopaque, displayChangeEvent: ?*DisplayChangeEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onDisplayChangeEvent").onDisplayChangeEvent(displayChangeEvent);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = EventListenerInterface.of(object).?.*, .toStringFn = Methods.toString, .onDisplayChangeEventFn = Methods.onDisplayChangeEvent };
        return this;
    }
};

