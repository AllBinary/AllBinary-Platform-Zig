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
// package org.allbinary.game

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const IntermissionInterface = @import("org/allbinary/game/IntermissionInterface.zig").IntermissionInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const IntermissionCompositeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.IntermissionCompositeInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getStartIntermissionInterfaceFn: *const fn (pointer: *anyopaque) ?*IntermissionInterface,
    getEndLevelIntermissionInterfaceFn: *const fn (pointer: *anyopaque) ?*IntermissionInterface,

    pub fn getStartIntermissionInterface(self: *Self) ?*IntermissionInterface {
        return self.getStartIntermissionInterfaceFn(self.pointer);
    }

    pub fn getEndLevelIntermissionInterface(self: *Self) ?*IntermissionInterface {
        return self.getEndLevelIntermissionInterfaceFn(self.pointer);
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
            fn getStartIntermissionInterface(pointer: *anyopaque) ?*IntermissionInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*IntermissionInterface, Inheritance.receiver(implementation, "getStartIntermissionInterface").getStartIntermissionInterface());
            }
            fn getEndLevelIntermissionInterface(pointer: *anyopaque) ?*IntermissionInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*IntermissionInterface, Inheritance.receiver(implementation, "getEndLevelIntermissionInterface").getEndLevelIntermissionInterface());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getStartIntermissionInterfaceFn = Methods.getStartIntermissionInterface, .getEndLevelIntermissionInterfaceFn = Methods.getEndLevelIntermissionInterface };
        return this;
    }
};

