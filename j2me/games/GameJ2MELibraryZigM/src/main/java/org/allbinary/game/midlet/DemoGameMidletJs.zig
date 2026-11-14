// 
// AllBinary Open License Version 1 
// Copyright (c) 2026 AllBinary 
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
const GameCanvasRunnableInterface = @import("org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.zig").GameCanvasRunnableInterface;
const Exception = @import("java/lang/Exception.zig").Exception;

// Java interface: an implementation is a pointer and a table of functions
pub const DemoGameMidletJs = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.midlet.DemoGameMidletJs";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    createDemoGameCanvasRunnableInterfaceFn: *const fn (interface_pointer: *anyopaque) ?*GameCanvasRunnableInterface,

    pub fn createDemoGameCanvasRunnableInterface(self: *Self) ?*GameCanvasRunnableInterface {
        return self.createDemoGameCanvasRunnableInterfaceFn(self.pointer);
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
            fn createDemoGameCanvasRunnableInterface(interface_pointer: *anyopaque) ?*GameCanvasRunnableInterface {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*GameCanvasRunnableInterface, Inheritance.receiver(implementation, "createDemoGameCanvasRunnableInterface").createDemoGameCanvasRunnableInterface());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .createDemoGameCanvasRunnableInterfaceFn = Methods.createDemoGameCanvasRunnableInterface };
        return this;
    }
};

