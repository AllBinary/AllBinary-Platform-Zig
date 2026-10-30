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
// package org.allbinary.bounds.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const BoundsChangeEvent = @import("org/allbinary/bounds/event/BoundsChangeEvent.zig").BoundsChangeEvent;

// Java interface: an implementation is a pointer and a table of functions
pub const BoundsChangeEventListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.bounds.event.BoundsChangeEventListener";
    pointer: *anyopaque,
    object: Object,
    base: EventListenerInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    onBoundsChangeEventFn: *const fn (pointer: *anyopaque, boundsChangeEvent: ?*BoundsChangeEvent) void,

    pub fn onBoundsChangeEvent(self: *Self, boundsChangeEvent: ?*BoundsChangeEvent) void {
        return self.onBoundsChangeEventFn(self.pointer, boundsChangeEvent);
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
            fn onBoundsChangeEvent(pointer: *anyopaque, boundsChangeEvent: ?*BoundsChangeEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onBoundsChangeEvent").onBoundsChangeEvent(boundsChangeEvent);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = EventListenerInterface.of(object).?.*, .toStringFn = Methods.toString, .onBoundsChangeEventFn = Methods.onBoundsChangeEvent };
        return this;
    }
};

