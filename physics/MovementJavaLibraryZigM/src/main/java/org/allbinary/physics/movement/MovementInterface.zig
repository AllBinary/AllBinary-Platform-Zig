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
// package org.allbinary.physics.movement

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryGameLayer = @import("org/allbinary/game/layer/AllBinaryGameLayer.zig").AllBinaryGameLayer;
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;

// Java interface: an implementation is a pointer and a table of functions
pub const MovementInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.physics.movement.MovementInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    initFn: *const fn (pointer: *anyopaque, speedBasicDecimal: ?*BasicDecimal, angle: i32, otherAngle: i32) void,
    processFn: *const fn (pointer: *anyopaque, layer: ?*AllBinaryGameLayer) void,
    stopFn: *const fn (pointer: *anyopaque) void,

    pub fn init(self: *Self, speedBasicDecimal: ?*BasicDecimal, angle: i32, otherAngle: i32) void {
        return self.initFn(self.pointer, speedBasicDecimal, angle, otherAngle);
    }

    pub fn process(self: *Self, layer: ?*AllBinaryGameLayer) void {
        return self.processFn(self.pointer, layer);
    }

    pub fn stop(self: *Self) void {
        return self.stopFn(self.pointer);
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
            fn init(pointer: *anyopaque, speedBasicDecimal: ?*BasicDecimal, angle: i32, otherAngle: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "init").init(speedBasicDecimal, angle, otherAngle);
            }
            fn process(pointer: *anyopaque, layer: ?*AllBinaryGameLayer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "process").process(layer);
            }
            fn stop(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "stop").stop();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .initFn = Methods.init, .processFn = Methods.process, .stopFn = Methods.stop };
        return this;
    }
};

