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
const ProfileActionScriptItemInterface = @import("org/allbinary/input/automation/actions/script/ProfileActionScriptItemInterface.zig").ProfileActionScriptItemInterface;
const ProfileActionScriptNodeInterface = @import("org/allbinary/input/automation/actions/script/ProfileActionScriptNodeInterface.zig").ProfileActionScriptNodeInterface;
const ProfileActionScriptProcessorInterface = @import("org/allbinary/input/automation/actions/script/condition/processors/ProfileActionScriptProcessorInterface.zig").ProfileActionScriptProcessorInterface;
const CustomTreeNodeInterface = @import("org/allbinary/input/automation/actions/script/condition/CustomTreeNodeInterface.zig").CustomTreeNodeInterface;
const Long = @import("java/lang/Long.zig").Long;

// Java interface: an implementation is a pointer and a table of functions
pub const ProfileActionScriptConditionInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface";
    pointer: *anyopaque,
    object: Object,
    base: ProfileActionScriptNodeInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    addProcessorFn: *const fn (pointer: *anyopaque, profileActionProcessorInterface: ?*ProfileActionScriptProcessorInterface) void,
    removeProcessorFn: *const fn (pointer: *anyopaque, profileActionProcessorInterface: ?*ProfileActionScriptProcessorInterface) void,
    shouldProcessFn: *const fn (pointer: *anyopaque, frame: ?*Long) bool,

    pub fn addProcessor(self: *Self, profileActionProcessorInterface: ?*ProfileActionScriptProcessorInterface) void {
        return self.addProcessorFn(self.pointer, profileActionProcessorInterface);
    }

    pub fn removeProcessor(self: *Self, profileActionProcessorInterface: ?*ProfileActionScriptProcessorInterface) void {
        return self.removeProcessorFn(self.pointer, profileActionProcessorInterface);
    }

    pub fn shouldProcess(self: *Self, frame: ?*Long) bool {
        return self.shouldProcessFn(self.pointer, frame);
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
            fn addProcessor(pointer: *anyopaque, profileActionProcessorInterface: ?*ProfileActionScriptProcessorInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addProcessor").addProcessor(profileActionProcessorInterface);
            }
            fn removeProcessor(pointer: *anyopaque, profileActionProcessorInterface: ?*ProfileActionScriptProcessorInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "removeProcessor").removeProcessor(profileActionProcessorInterface);
            }
            fn shouldProcess(pointer: *anyopaque, frame: ?*Long) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "shouldProcess").shouldProcess(frame);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = ProfileActionScriptNodeInterface.of(object).?.*, .toStringFn = Methods.toString, .addProcessorFn = Methods.addProcessor, .removeProcessorFn = Methods.removeProcessor, .shouldProcessFn = Methods.shouldProcess };
        return this;
    }
};

