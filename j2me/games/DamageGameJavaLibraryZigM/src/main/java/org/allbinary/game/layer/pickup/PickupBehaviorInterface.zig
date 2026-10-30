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
// package org.allbinary.game.layer.pickup

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PickedUpLayerInterface = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterface.zig").PickedUpLayerInterface;
const PickupProcessorInterface = @import("org/allbinary/game/layer/pickup/PickupProcessorInterface.zig").PickupProcessorInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const PickupBehaviorInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.pickup.PickupBehaviorInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    doPickupFn: *const fn (pointer: *anyopaque, pickupProcessorInterface: ?*PickupProcessorInterface) void,
    doPickupLayerFn: *const fn (pointer: *anyopaque, pickupLayerInterface: ?*PickedUpLayerInterface) void,

    pub fn doPickup(self: *Self, pickupProcessorInterface: ?*PickupProcessorInterface) void {
        return self.doPickupFn(self.pointer, pickupProcessorInterface);
    }

    pub fn doPickupLayer(self: *Self, pickupLayerInterface: ?*PickedUpLayerInterface) void {
        return self.doPickupLayerFn(self.pointer, pickupLayerInterface);
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
            fn doPickup(pointer: *anyopaque, pickupProcessorInterface: ?*PickupProcessorInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "doPickup").doPickup(pickupProcessorInterface);
            }
            fn doPickupLayer(pointer: *anyopaque, pickupLayerInterface: ?*PickedUpLayerInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "doPickupLayer").doPickupLayer(pickupLayerInterface);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .doPickupFn = Methods.doPickup, .doPickupLayerFn = Methods.doPickupLayer };
        return this;
    }
};

