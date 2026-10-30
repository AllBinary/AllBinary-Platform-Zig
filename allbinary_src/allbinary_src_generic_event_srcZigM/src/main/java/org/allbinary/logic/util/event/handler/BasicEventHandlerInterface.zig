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
// package org.allbinary.logic.util.event.handler

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const BasicEventHandlerInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.event.handler.BasicEventHandlerInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    addListenerInterfaceFn: *const fn (pointer: *anyopaque, eventListenerInterface: ?*EventListenerInterface) void,
    fireEventFn: *const fn (pointer: *anyopaque, eventObject: ?*AllBinaryEventObject) void,
    removeAllListenersFn: *const fn (pointer: *anyopaque) void,
    removeListenerFn: *const fn (pointer: *anyopaque, eventListenerInterface: ?*EventListenerInterface) void,

    pub fn addListenerInterface(self: *Self, eventListenerInterface: ?*EventListenerInterface) void {
        return self.addListenerInterfaceFn(self.pointer, eventListenerInterface);
    }

    pub fn fireEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        return self.fireEventFn(self.pointer, eventObject);
    }

    pub fn removeAllListeners(self: *Self) void {
        return self.removeAllListenersFn(self.pointer);
    }

    pub fn removeListener(self: *Self, eventListenerInterface: ?*EventListenerInterface) void {
        return self.removeListenerFn(self.pointer, eventListenerInterface);
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
            fn addListenerInterface(pointer: *anyopaque, eventListenerInterface: ?*EventListenerInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addListenerInterface").addListenerInterface(eventListenerInterface);
            }
            fn fireEvent(pointer: *anyopaque, eventObject: ?*AllBinaryEventObject) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "fireEvent").fireEvent(eventObject);
            }
            fn removeAllListeners(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "removeAllListeners").removeAllListeners();
            }
            fn removeListener(pointer: *anyopaque, eventListenerInterface: ?*EventListenerInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "removeListener").removeListener(eventListenerInterface);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .addListenerInterfaceFn = Methods.addListenerInterface, .fireEventFn = Methods.fireEvent, .removeAllListenersFn = Methods.removeAllListeners, .removeListenerFn = Methods.removeListener };
        return this;
    }
};

