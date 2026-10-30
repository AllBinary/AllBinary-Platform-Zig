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
// package org.allbinary.graphics.displayable.command

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;

// Java interface: an implementation is a pointer and a table of functions
pub const MyCommandInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.command.MyCommandInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    addCommandFn: *const fn (pointer: *anyopaque, command: ?*Command) void,
    removeAllCommandsFn: *const fn (pointer: *anyopaque) void,

    pub fn addCommand(self: *Self, command: ?*Command) void {
        return self.addCommandFn(self.pointer, command);
    }

    pub fn removeAllCommands(self: *Self) void {
        return self.removeAllCommandsFn(self.pointer);
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
            fn addCommand(pointer: *anyopaque, command: ?*Command) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addCommand").addCommand(command);
            }
            fn removeAllCommands(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "removeAllCommands").removeAllCommands();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .addCommandFn = Methods.addCommand, .removeAllCommandsFn = Methods.removeAllCommands };
        return this;
    }
};

