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
// package org.allbinary.media.audio

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Player = @import("javax/microedition/media/Player.zig").Player;
const Exception = @import("java/lang/Exception.zig").Exception;

// Java interface: an implementation is a pointer and a table of functions
pub const SoundInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.SoundInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getResourceFn: *const fn (interface_pointer: *anyopaque) ?*String,
    getPlayerPFn: *const fn (interface_pointer: *anyopaque) ?*Player,
    initFn: *const fn (interface_pointer: *anyopaque) void,

    pub fn getResource(self: *Self) ?*String {
        return self.getResourceFn(self.pointer);
    }

    pub fn getPlayerP(self: *Self) ?*Player {
        return self.getPlayerPFn(self.pointer);
    }

    pub fn init(self: *Self) void {
        return self.initFn(self.pointer);
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
            fn getResource(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getResource").getResource());
            }
            fn getPlayerP(interface_pointer: *anyopaque) ?*Player {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*Player, Inheritance.receiver(implementation, "getPlayerP").getPlayerP());
            }
            fn init(interface_pointer: *anyopaque) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "init").init();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getResourceFn = Methods.getResource, .getPlayerPFn = Methods.getPlayerP, .initFn = Methods.init };
        return this;
    }
};

