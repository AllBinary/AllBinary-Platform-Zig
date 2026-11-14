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
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const Exception = @import("java/lang/Exception.zig").Exception;

// Java interface: an implementation is a pointer and a table of functions
pub const BasicEventHandlerInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.event.handler.BasicEventHandlerInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    addListenerInterfaceFn: *const fn (interface_pointer: *anyopaque, eventListenerInterface: ?*EventListenerInterface) void,
    addListenersFn: *const fn (interface_pointer: *anyopaque, basicArrayList: ?*BasicArrayList) void,
    fireEventFn: *const fn (interface_pointer: *anyopaque, eventObject: ?*AllBinaryEventObject) void,
    removeAllListenersFn: *const fn (interface_pointer: *anyopaque) void,
    removeListenerFn: *const fn (interface_pointer: *anyopaque, eventListenerInterface: ?*EventListenerInterface) void,

    pub fn addListenerInterface(self: *Self, eventListenerInterface: ?*EventListenerInterface) void {
        return self.addListenerInterfaceFn(self.pointer, eventListenerInterface);
    }

    pub fn addListeners(self: *Self, basicArrayList: ?*BasicArrayList) void {
        return self.addListenersFn(self.pointer, basicArrayList);
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
        const ImplementationType = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn addListenerInterface(interface_pointer: *anyopaque, eventListenerInterface: ?*EventListenerInterface) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "addListenerInterface", .{ eventListenerInterface });
            }
            fn addListeners(interface_pointer: *anyopaque, basicArrayList: ?*BasicArrayList) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "addListeners", .{ basicArrayList });
            }
            fn fireEvent(interface_pointer: *anyopaque, eventObject: ?*AllBinaryEventObject) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "fireEvent", .{ eventObject });
            }
            fn removeAllListeners(interface_pointer: *anyopaque) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "removeAllListeners").removeAllListeners();
            }
            fn removeListener(interface_pointer: *anyopaque, eventListenerInterface: ?*EventListenerInterface) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "removeListener", .{ eventListenerInterface });
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .addListenerInterfaceFn = Methods.addListenerInterface, .addListenersFn = Methods.addListeners, .fireEventFn = Methods.fireEvent, .removeAllListenersFn = Methods.removeAllListeners, .removeListenerFn = Methods.removeListener };
        return this;
    }
};

