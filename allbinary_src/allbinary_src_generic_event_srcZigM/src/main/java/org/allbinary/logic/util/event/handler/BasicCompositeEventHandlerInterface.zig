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
const BasicEventHandlerInterface = @import("org/allbinary/logic/util/event/handler/BasicEventHandlerInterface.zig").BasicEventHandlerInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const BasicCompositeEventHandlerInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getEventHandlerFn: *const fn (interface_pointer: *anyopaque) ?*BasicEventHandlerInterface,
    setEventHandlerFn: *const fn (interface_pointer: *anyopaque, basicEventHandlerInterface: ?*BasicEventHandlerInterface) void,

    pub fn getEventHandler(self: *Self) ?*BasicEventHandlerInterface {
        return self.getEventHandlerFn(self.pointer);
    }

    pub fn setEventHandler(self: *Self, basicEventHandlerInterface: ?*BasicEventHandlerInterface) void {
        return self.setEventHandlerFn(self.pointer, basicEventHandlerInterface);
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
            fn getEventHandler(interface_pointer: *anyopaque) ?*BasicEventHandlerInterface {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*BasicEventHandlerInterface, Inheritance.receiver(implementation, "getEventHandler").getEventHandler());
            }
            fn setEventHandler(interface_pointer: *anyopaque, basicEventHandlerInterface: ?*BasicEventHandlerInterface) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "setEventHandler", .{ basicEventHandlerInterface });
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getEventHandlerFn = Methods.getEventHandler, .setEventHandlerFn = Methods.setEventHandler };
        return this;
    }
};

