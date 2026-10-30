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
// package org.allbinary.media.graphics.geography.map.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const GeographicMapCellPositionEvent = @import("org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEvent.zig").GeographicMapCellPositionEvent;

// Java interface: an implementation is a pointer and a table of functions
pub const GeographicMapCellPositionEventListenerInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface";
    pointer: *anyopaque,
    object: Object,
    base: EventListenerInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    onGeographicMapCellPositionEventFn: *const fn (pointer: *anyopaque, geographicMapCellPositionEvent: ?*GeographicMapCellPositionEvent) void,
    onRemoveGeographicMapCellPositionEventFn: *const fn (pointer: *anyopaque, geographicMapCellPositionEvent: ?*GeographicMapCellPositionEvent) void,

    pub fn onGeographicMapCellPositionEvent(self: *Self, geographicMapCellPositionEvent: ?*GeographicMapCellPositionEvent) void {
        return self.onGeographicMapCellPositionEventFn(self.pointer, geographicMapCellPositionEvent);
    }

    pub fn onRemoveGeographicMapCellPositionEvent(self: *Self, geographicMapCellPositionEvent: ?*GeographicMapCellPositionEvent) void {
        return self.onRemoveGeographicMapCellPositionEventFn(self.pointer, geographicMapCellPositionEvent);
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
            fn onGeographicMapCellPositionEvent(pointer: *anyopaque, geographicMapCellPositionEvent: ?*GeographicMapCellPositionEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onGeographicMapCellPositionEvent").onGeographicMapCellPositionEvent(geographicMapCellPositionEvent);
            }
            fn onRemoveGeographicMapCellPositionEvent(pointer: *anyopaque, geographicMapCellPositionEvent: ?*GeographicMapCellPositionEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onRemoveGeographicMapCellPositionEvent").onRemoveGeographicMapCellPositionEvent(geographicMapCellPositionEvent);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = EventListenerInterface.of(object).?.*, .toStringFn = Methods.toString, .onGeographicMapCellPositionEventFn = Methods.onGeographicMapCellPositionEvent, .onRemoveGeographicMapCellPositionEventFn = Methods.onRemoveGeographicMapCellPositionEvent };
        return this;
    }
};

