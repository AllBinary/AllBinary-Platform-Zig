// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const KeyInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.KeyInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    keyPressedFn: *const fn (interface_pointer: *anyopaque, keyCode: i32) void,
    keyReleasedFn: *const fn (interface_pointer: *anyopaque, keyCode: i32) void,
    keyPressedByDeviceFn: *const fn (interface_pointer: *anyopaque, keyCode: i32, deviceId: i32) void,
    keyReleasedByDeviceFn: *const fn (interface_pointer: *anyopaque, keyCode: i32, deviceId: i32) void,

    pub fn keyPressed(self: *Self, keyCode: i32) void {
        return self.keyPressedFn(self.pointer, keyCode);
    }

    pub fn keyReleased(self: *Self, keyCode: i32) void {
        return self.keyReleasedFn(self.pointer, keyCode);
    }

    pub fn keyPressedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        return self.keyPressedByDeviceFn(self.pointer, keyCode, deviceId);
    }

    pub fn keyReleasedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        return self.keyReleasedByDeviceFn(self.pointer, keyCode, deviceId);
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
            fn keyPressed(interface_pointer: *anyopaque, keyCode: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "keyPressed", .{ keyCode });
            }
            fn keyReleased(interface_pointer: *anyopaque, keyCode: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "keyReleased", .{ keyCode });
            }
            fn keyPressedByDevice(interface_pointer: *anyopaque, keyCode: i32, deviceId: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "keyPressedByDevice", .{ keyCode, deviceId });
            }
            fn keyReleasedByDevice(interface_pointer: *anyopaque, keyCode: i32, deviceId: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "keyReleasedByDevice", .{ keyCode, deviceId });
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .keyPressedFn = Methods.keyPressed, .keyReleasedFn = Methods.keyReleased, .keyPressedByDeviceFn = Methods.keyPressedByDevice, .keyReleasedByDeviceFn = Methods.keyReleasedByDevice };
        return this;
    }
};

