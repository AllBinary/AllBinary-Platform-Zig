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
// package org.allbinary.input.automation.actions.script

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const MutableTreeNode = @import("javax/swing/tree/MutableTreeNode.zig").MutableTreeNode;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const ProfileActionScriptNodeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface";
    pointer: *anyopaque,
    object: Object,
    base: DomNodeInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    addConditionFn: *const fn (pointer: *anyopaque, profileActionConditionInterface: ?*ProfileActionScriptNodeInterface) void,
    removeConditionFn: *const fn (pointer: *anyopaque, profileActionConditionInterface: ?*ProfileActionScriptNodeInterface) void,

    pub fn addCondition(self: *Self, profileActionConditionInterface: ?*ProfileActionScriptNodeInterface) void {
        return self.addConditionFn(self.pointer, profileActionConditionInterface);
    }

    pub fn removeCondition(self: *Self, profileActionConditionInterface: ?*ProfileActionScriptNodeInterface) void {
        return self.removeConditionFn(self.pointer, profileActionConditionInterface);
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
            fn addCondition(pointer: *anyopaque, profileActionConditionInterface: ?*ProfileActionScriptNodeInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addCondition").addCondition(profileActionConditionInterface);
            }
            fn removeCondition(pointer: *anyopaque, profileActionConditionInterface: ?*ProfileActionScriptNodeInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "removeCondition").removeCondition(profileActionConditionInterface);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = DomNodeInterface.of(object).?.*, .toStringFn = Methods.toString, .addConditionFn = Methods.addCondition, .removeConditionFn = Methods.removeCondition };
        return this;
    }
};

