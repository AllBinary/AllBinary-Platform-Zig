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
// package bundle.input.automation.robot

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputRobotInterface = @import("org/allbinary/input/automation/robot/InputRobotInterface.zig").InputRobotInterface;
const OSGIServiceInterface = @import("org/allbinary/osgi/OSGIServiceInterface.zig").OSGIServiceInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const InputAutomationRobotServiceInterface = struct {
    const Self = @This();
    pub const java_name = "bundle.input.automation.robot.InputAutomationRobotServiceInterface";
    pointer: *anyopaque,
    object: Object,
    base: OSGIServiceInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getInputRobotInterfaceArrayFn: *const fn (pointer: *anyopaque) []?*InputRobotInterface,

    pub fn getInputRobotInterfaceArray(self: *Self) []?*InputRobotInterface {
        return self.getInputRobotInterfaceArrayFn(self.pointer);
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
            fn getInputRobotInterfaceArray(pointer: *anyopaque) []?*InputRobotInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getInputRobotInterfaceArray").getInputRobotInterfaceArray();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = OSGIServiceInterface.of(object).?.*, .toStringFn = Methods.toString, .getInputRobotInterfaceArrayFn = Methods.getInputRobotInterfaceArray };
        return this;
    }
};

