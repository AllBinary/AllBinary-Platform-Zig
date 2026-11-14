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
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DirectionalInterface = @import("org/allbinary/direction/DirectionalInterface.zig").DirectionalInterface;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const IndexedAnimationInterface = @import("org/allbinary/animation/IndexedAnimationInterface.zig").IndexedAnimationInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const RotationAnimationInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.RotationAnimationInterface";
    pointer: *anyopaque,
    object: Object,
    base: IndexedAnimationInterface,
    base2: DirectionalInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getAngleInfoPFn: *const fn (interface_pointer: *anyopaque) ?*AngleInfo,
    nextRotationFn: *const fn (interface_pointer: *anyopaque) void,
    previousRotationFn: *const fn (interface_pointer: *anyopaque) void,

    pub fn getAngleInfoP(self: *Self) ?*AngleInfo {
        return self.getAngleInfoPFn(self.pointer);
    }

    pub fn nextRotation(self: *Self) void {
        return self.nextRotationFn(self.pointer);
    }

    pub fn previousRotation(self: *Self) void {
        return self.previousRotationFn(self.pointer);
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
            fn getAngleInfoP(interface_pointer: *anyopaque) ?*AngleInfo {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*AngleInfo, Inheritance.receiver(implementation, "getAngleInfoP").getAngleInfoP());
            }
            fn nextRotation(interface_pointer: *anyopaque) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "nextRotation").nextRotation();
            }
            fn previousRotation(interface_pointer: *anyopaque) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "previousRotation").previousRotation();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = IndexedAnimationInterface.of(object).?.*, .base2 = DirectionalInterface.of(object).?.*, .toStringFn = Methods.toString, .getAngleInfoPFn = Methods.getAngleInfoP, .nextRotationFn = Methods.nextRotation, .previousRotationFn = Methods.previousRotation };
        return this;
    }
};

