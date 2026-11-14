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
// package org.allbinary.logic.system.hardware

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HardwareComponentInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.zig").HardwareComponentInterface;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;

// Java interface: an implementation is a pointer and a table of functions
pub const HardwareInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.HardwareInterface";
    pointer: *anyopaque,
    object: Object,
    getComponentFn: *const fn (interface_pointer: *anyopaque, index: i32) ?*HardwareComponentInterface,
    toStringFn: *const fn (interface_pointer: *anyopaque) ?*String,
    compareToFn: *const fn (interface_pointer: *anyopaque, hardwareInterface: ?*HardwareInterface) bool,
    differenceFn: *const fn (interface_pointer: *anyopaque, hardwareInterface: ?*HardwareInterface) ?*ABHashtable,

    pub fn getComponent(self: *Self, index: i32) ?*HardwareComponentInterface {
        return self.getComponentFn(self.pointer, index);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    pub fn compareTo(self: *Self, hardwareInterface: ?*HardwareInterface) bool {
        return self.compareToFn(self.pointer, hardwareInterface);
    }

    pub fn difference(self: *Self, hardwareInterface: ?*HardwareInterface) ?*ABHashtable {
        return self.differenceFn(self.pointer, hardwareInterface);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const ImplementationType = @TypeOf(object);
        const Methods = struct {
            fn getComponent(interface_pointer: *anyopaque, index: i32) ?*HardwareComponentInterface {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*HardwareComponentInterface, Inheritance.call(implementation, "getComponent", .{ index }));
            }
            fn toString(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "toString").toString());
            }
            fn compareTo(interface_pointer: *anyopaque, hardwareInterface: ?*HardwareInterface) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "compareTo", .{ hardwareInterface });
            }
            fn difference(interface_pointer: *anyopaque, hardwareInterface: ?*HardwareInterface) ?*ABHashtable {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*ABHashtable, Inheritance.call(implementation, "difference", .{ hardwareInterface }));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .getComponentFn = Methods.getComponent, .toStringFn = Methods.toString, .compareToFn = Methods.compareTo, .differenceFn = Methods.difference };
        return this;
    }
};

