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
// const Player = @import("javax/microedition/media/Player.zig").Player;

// Java interface: an implementation is a pointer and a table of functions
pub const SoundInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.SoundInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getResourceFn: *const fn (pointer: *anyopaque) ?*String,
    getPlayerPFn: *const fn (pointer: *anyopaque) ?*Player,
    initFn: *const fn (pointer: *anyopaque) void,

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
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn getResource(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getResource").getResource());
            }
            fn getPlayerP(pointer: *anyopaque) ?*Player {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Player, Inheritance.receiver(implementation, "getPlayerP").getPlayerP());
            }
            fn init(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "init").init();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getResourceFn = Methods.getResource, .getPlayerPFn = Methods.getPlayerP, .initFn = Methods.init };
        return this;
    }
};

