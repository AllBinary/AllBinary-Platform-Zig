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
// package org.allbinary.input.automation.module.game

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputAutomationActionInterface = @import("org/allbinary/input/automation/module/InputAutomationActionInterface.zig").InputAutomationActionInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const BasicGameInputAutomationActionInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface";
    pointer: *anyopaque,
    object: Object,
    base: InputAutomationActionInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    attackFn: *const fn (pointer: *anyopaque, rectangle: ?*Rectangle) void,
    targetFn: *const fn (pointer: *anyopaque, rectangle: ?*Rectangle) void,

    pub fn attack(self: *Self, rectangle: ?*Rectangle) void {
        return self.attackFn(self.pointer, rectangle);
    }

    pub fn target(self: *Self, rectangle: ?*Rectangle) void {
        return self.targetFn(self.pointer, rectangle);
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
            fn attack(pointer: *anyopaque, rectangle: ?*Rectangle) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "attack").attack(rectangle);
            }
            fn target(pointer: *anyopaque, rectangle: ?*Rectangle) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "target").target(rectangle);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = InputAutomationActionInterface.of(object).?.*, .toStringFn = Methods.toString, .attackFn = Methods.attack, .targetFn = Methods.target };
        return this;
    }
};

