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
// package bundle.input.automation.module.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputAutomationConfigurationModuleChangeEvent = @import("org/allbinary/input/automation/configuration/InputAutomationConfigurationModuleChangeEvent.zig").InputAutomationConfigurationModuleChangeEvent;

// Java interface: an implementation is a pointer and a table of functions
pub const InputAutomationConfigurationModuleChangeListener = struct {
    const Self = @This();
    pub const java_name = "bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    onAddFn: *const fn (pointer: *anyopaque, inputAutomationConfigurationChangeEvent: ?*InputAutomationConfigurationModuleChangeEvent) void,
    onRemoveFn: *const fn (pointer: *anyopaque, inputAutomationConfigurationChangeEvent: ?*InputAutomationConfigurationModuleChangeEvent) void,

    pub fn onAdd(self: *Self, inputAutomationConfigurationChangeEvent: ?*InputAutomationConfigurationModuleChangeEvent) void {
        return self.onAddFn(self.pointer, inputAutomationConfigurationChangeEvent);
    }

    pub fn onRemove(self: *Self, inputAutomationConfigurationChangeEvent: ?*InputAutomationConfigurationModuleChangeEvent) void {
        return self.onRemoveFn(self.pointer, inputAutomationConfigurationChangeEvent);
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
            fn onAdd(pointer: *anyopaque, inputAutomationConfigurationChangeEvent: ?*InputAutomationConfigurationModuleChangeEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onAdd").onAdd(inputAutomationConfigurationChangeEvent);
            }
            fn onRemove(pointer: *anyopaque, inputAutomationConfigurationChangeEvent: ?*InputAutomationConfigurationModuleChangeEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onRemove").onRemove(inputAutomationConfigurationChangeEvent);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .onAddFn = Methods.onAdd, .onRemoveFn = Methods.onRemove };
        return this;
    }
};

