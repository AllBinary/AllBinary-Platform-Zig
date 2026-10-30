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
const ProfileActionScriptInputInterface = @import("org/allbinary/input/automation/actions/script/condition/processors/input/ProfileActionScriptInputInterface.zig").ProfileActionScriptInputInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const MouseActionScriptInputInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface";
    pointer: *anyopaque,
    object: Object,
    base: ProfileActionScriptInputInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setPointFn: *const fn (pointer: *anyopaque, point: ?*Point) void,
    getPointFn: *const fn (pointer: *anyopaque) ?*Point,
    getButtonClicksFn: *const fn (pointer: *anyopaque) i32,
    setButtonClicksFn: *const fn (pointer: *anyopaque, buttons: i32) void,
    logFn: *const fn (pointer: *anyopaque) void,

    pub fn setPoint(self: *Self, point: ?*Point) void {
        return self.setPointFn(self.pointer, point);
    }

    pub fn getPoint(self: *Self) ?*Point {
        return self.getPointFn(self.pointer);
    }

    pub fn getButtonClicks(self: *Self) i32 {
        return self.getButtonClicksFn(self.pointer);
    }

    pub fn setButtonClicks(self: *Self, buttons: i32) void {
        return self.setButtonClicksFn(self.pointer, buttons);
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
            fn setPoint(pointer: *anyopaque, point: ?*Point) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPoint").setPoint(point);
            }
            fn getPoint(pointer: *anyopaque) ?*Point {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Point, Inheritance.receiver(implementation, "getPoint").getPoint());
            }
            fn getButtonClicks(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getButtonClicks").getButtonClicks();
            }
            fn setButtonClicks(pointer: *anyopaque, buttons: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setButtonClicks").setButtonClicks(buttons);
            }
            fn log(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "log").log();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = ProfileActionScriptInputInterface.of(object).?.*, .toStringFn = Methods.toString, .setPointFn = Methods.setPoint, .getPointFn = Methods.getPoint, .getButtonClicksFn = Methods.getButtonClicks, .setButtonClicksFn = Methods.setButtonClicks, .logFn = Methods.log };
        return this;
    }
};

