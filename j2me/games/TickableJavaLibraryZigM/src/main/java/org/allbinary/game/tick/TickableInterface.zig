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
// package org.allbinary.game.tick

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const NamedInterface = @import("org/allbinary/layer/NamedInterface.zig").NamedInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const TickableInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.tick.TickableInterface";
    pointer: *anyopaque,
    object: Object,
    base: NamedInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    processTickFn: *const fn (pointer: *anyopaque, allBinaryLayerManager: ?*AllBinaryLayerManager) void,

    pub fn processTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        return self.processTickFn(self.pointer, allBinaryLayerManager);
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
            fn processTick(pointer: *anyopaque, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "processTick").processTick(allBinaryLayerManager);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = NamedInterface.of(object).?.*, .toStringFn = Methods.toString, .processTickFn = Methods.processTick };
        return this;
    }
};

