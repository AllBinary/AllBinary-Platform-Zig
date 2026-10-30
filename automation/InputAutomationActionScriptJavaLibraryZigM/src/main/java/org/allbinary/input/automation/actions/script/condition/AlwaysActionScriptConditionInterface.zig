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
// package org.allbinary.input.automation.actions.script.condition

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const AlwaysActionScriptConditionInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setIsOnFn: *const fn (pointer: *anyopaque, isOn: bool) void,
    isIsOnFn: *const fn (pointer: *anyopaque) bool,
    logFn: *const fn (pointer: *anyopaque) void,

    pub fn setIsOn(self: *Self, isOn: bool) void {
        return self.setIsOnFn(self.pointer, isOn);
    }

    pub fn isIsOn(self: *Self) bool {
        return self.isIsOnFn(self.pointer);
    }

    pub fn log(self: *Self) void {
        return self.logFn(self.pointer);
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
            fn setIsOn(pointer: *anyopaque, isOn: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setIsOn").setIsOn(isOn);
            }
            fn isIsOn(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isIsOn").isIsOn();
            }
            fn log(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "log").log();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .setIsOnFn = Methods.setIsOn, .isIsOnFn = Methods.isIsOn, .logFn = Methods.log };
        return this;
    }
};

