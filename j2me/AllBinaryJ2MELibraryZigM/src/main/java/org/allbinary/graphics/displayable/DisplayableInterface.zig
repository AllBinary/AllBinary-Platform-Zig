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
// package org.allbinary.graphics.displayable

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;

// Java interface: an implementation is a pointer and a table of functions
pub const DisplayableInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.DisplayableInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    addCommandFn: *const fn (pointer: *anyopaque, cmd: ?*Command) void,
    getHeightFn: *const fn (pointer: *anyopaque) i32,
    getWidthFn: *const fn (pointer: *anyopaque) i32,
    removeCommandFn: *const fn (pointer: *anyopaque, cmd: ?*Command) void,
    setCommandListenerFn: *const fn (pointer: *anyopaque, l: ?*CommandListener) void,

    pub fn addCommand(self: *Self, cmd: ?*Command) void {
        return self.addCommandFn(self.pointer, cmd);
    }

    pub fn getHeight(self: *Self) i32 {
        return self.getHeightFn(self.pointer);
    }

    pub fn getWidth(self: *Self) i32 {
        return self.getWidthFn(self.pointer);
    }

    pub fn removeCommand(self: *Self, cmd: ?*Command) void {
        return self.removeCommandFn(self.pointer, cmd);
    }

    pub fn setCommandListener(self: *Self, l: ?*CommandListener) void {
        return self.setCommandListenerFn(self.pointer, l);
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
            fn addCommand(pointer: *anyopaque, cmd: ?*Command) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addCommand").addCommand(cmd);
            }
            fn getHeight(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getHeight").getHeight();
            }
            fn getWidth(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getWidth").getWidth();
            }
            fn removeCommand(pointer: *anyopaque, cmd: ?*Command) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "removeCommand").removeCommand(cmd);
            }
            fn setCommandListener(pointer: *anyopaque, l: ?*CommandListener) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setCommandListener").setCommandListener(l);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .addCommandFn = Methods.addCommand, .getHeightFn = Methods.getHeight, .getWidthFn = Methods.getWidth, .removeCommandFn = Methods.removeCommand, .setCommandListenerFn = Methods.setCommandListener };
        return this;
    }
};

