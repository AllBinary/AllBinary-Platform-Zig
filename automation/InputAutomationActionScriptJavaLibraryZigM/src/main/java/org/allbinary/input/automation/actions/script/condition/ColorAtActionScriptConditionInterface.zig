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
const ColorRangeInterface = @import("org/allbinary/media/image/analysis/ColorRangeInterface.zig").ColorRangeInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const ColorAtActionScriptConditionInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getPointFn: *const fn (pointer: *anyopaque) ?*Point,
    setPointFn: *const fn (pointer: *anyopaque, point: ?*Point) void,
    getColorRangeInterfaceFn: *const fn (pointer: *anyopaque) ?*ColorRangeInterface,
    setColorRangeInterfaceFn: *const fn (pointer: *anyopaque, colorRangeInterface: ?*ColorRangeInterface) void,
    logFn: *const fn (pointer: *anyopaque) void,

    pub fn getPoint(self: *Self) ?*Point {
        return self.getPointFn(self.pointer);
    }

    pub fn setPoint(self: *Self, point: ?*Point) void {
        return self.setPointFn(self.pointer, point);
    }

    pub fn getColorRangeInterface(self: *Self) ?*ColorRangeInterface {
        return self.getColorRangeInterfaceFn(self.pointer);
    }

    pub fn setColorRangeInterface(self: *Self, colorRangeInterface: ?*ColorRangeInterface) void {
        return self.setColorRangeInterfaceFn(self.pointer, colorRangeInterface);
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
            fn getPoint(pointer: *anyopaque) ?*Point {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Point, Inheritance.receiver(implementation, "getPoint").getPoint());
            }
            fn setPoint(pointer: *anyopaque, point: ?*Point) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPoint").setPoint(point);
            }
            fn getColorRangeInterface(pointer: *anyopaque) ?*ColorRangeInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*ColorRangeInterface, Inheritance.receiver(implementation, "getColorRangeInterface").getColorRangeInterface());
            }
            fn setColorRangeInterface(pointer: *anyopaque, colorRangeInterface: ?*ColorRangeInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setColorRangeInterface").setColorRangeInterface(colorRangeInterface);
            }
            fn log(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "log").log();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getPointFn = Methods.getPoint, .setPointFn = Methods.setPoint, .getColorRangeInterfaceFn = Methods.getColorRangeInterface, .setColorRangeInterfaceFn = Methods.setColorRangeInterface, .logFn = Methods.log };
        return this;
    }
};

