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
// package org.allbinary.game.ag.life

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const LifeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.life.LifeInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getFn: *const fn (interface_pointer: *anyopaque) i16,
    setFn: *const fn (interface_pointer: *anyopaque, lives: i16) void,
    resetFn: *const fn (interface_pointer: *anyopaque) void,
    addFn: *const fn (interface_pointer: *anyopaque, lives: i16) void,
    deathsFn: *const fn (interface_pointer: *anyopaque, lives: i16) void,
    getMaxlivesFn: *const fn (interface_pointer: *anyopaque) i16,
    isAliveFn: *const fn (interface_pointer: *anyopaque) bool,

    pub fn get(self: *Self) i16 {
        return self.getFn(self.pointer);
    }

    pub fn set(self: *Self, lives: i16) void {
        return self.setFn(self.pointer, lives);
    }

    pub fn reset(self: *Self) void {
        return self.resetFn(self.pointer);
    }

    pub fn add(self: *Self, lives: i16) void {
        return self.addFn(self.pointer, lives);
    }

    pub fn deaths(self: *Self, lives: i16) void {
        return self.deathsFn(self.pointer, lives);
    }

    pub fn getMaxlives(self: *Self) i16 {
        return self.getMaxlivesFn(self.pointer);
    }

    pub fn isAlive(self: *Self) bool {
        return self.isAliveFn(self.pointer);
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
            fn get(interface_pointer: *anyopaque) i16 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "get").get();
            }
            fn set(interface_pointer: *anyopaque, lives: i16) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "set", .{ lives });
            }
            fn reset(interface_pointer: *anyopaque) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "reset").reset();
            }
            fn add(interface_pointer: *anyopaque, lives: i16) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "add", .{ lives });
            }
            fn deaths(interface_pointer: *anyopaque, lives: i16) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "deaths", .{ lives });
            }
            fn getMaxlives(interface_pointer: *anyopaque) i16 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getMaxlives").getMaxlives();
            }
            fn isAlive(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "isAlive").isAlive();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getFn = Methods.get, .setFn = Methods.set, .resetFn = Methods.reset, .addFn = Methods.add, .deathsFn = Methods.deaths, .getMaxlivesFn = Methods.getMaxlives, .isAliveFn = Methods.isAlive };
        return this;
    }
};

