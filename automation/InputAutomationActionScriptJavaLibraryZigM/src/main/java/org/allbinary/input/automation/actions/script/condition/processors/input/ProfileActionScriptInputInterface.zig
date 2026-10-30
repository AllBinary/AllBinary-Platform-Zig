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
// package org.allbinary.input.automation.actions.script.condition.processors.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ProfileActionScriptProcessorInterface = @import("org/allbinary/input/automation/actions/script/condition/processors/ProfileActionScriptProcessorInterface.zig").ProfileActionScriptProcessorInterface;
const InputRobotInterface = @import("org/allbinary/input/automation/robot/InputRobotInterface.zig").InputRobotInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const ProfileActionScriptInputInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface";
    pointer: *anyopaque,
    object: Object,
    base: ProfileActionScriptProcessorInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setInputRobotInterfaceFn: *const fn (pointer: *anyopaque, inputRobotInterface: ?*InputRobotInterface) void,
    getInputRobotInterfaceFn: *const fn (pointer: *anyopaque) ?*InputRobotInterface,
    getTimeFn: *const fn (pointer: *anyopaque) i32,
    setTimeFn: *const fn (pointer: *anyopaque, time: i32) void,

    pub fn setInputRobotInterface(self: *Self, inputRobotInterface: ?*InputRobotInterface) void {
        return self.setInputRobotInterfaceFn(self.pointer, inputRobotInterface);
    }

    pub fn getInputRobotInterface(self: *Self) ?*InputRobotInterface {
        return self.getInputRobotInterfaceFn(self.pointer);
    }

    pub fn getTime(self: *Self) i32 {
        return self.getTimeFn(self.pointer);
    }

    pub fn setTime(self: *Self, time: i32) void {
        return self.setTimeFn(self.pointer, time);
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
            fn setInputRobotInterface(pointer: *anyopaque, inputRobotInterface: ?*InputRobotInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setInputRobotInterface").setInputRobotInterface(inputRobotInterface);
            }
            fn getInputRobotInterface(pointer: *anyopaque) ?*InputRobotInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*InputRobotInterface, Inheritance.receiver(implementation, "getInputRobotInterface").getInputRobotInterface());
            }
            fn getTime(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getTime").getTime();
            }
            fn setTime(pointer: *anyopaque, time: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTime").setTime(time);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = ProfileActionScriptProcessorInterface.of(object).?.*, .toStringFn = Methods.toString, .setInputRobotInterfaceFn = Methods.setInputRobotInterface, .getInputRobotInterfaceFn = Methods.getInputRobotInterface, .getTimeFn = Methods.getTime, .setTimeFn = Methods.setTime };
        return this;
    }
};

