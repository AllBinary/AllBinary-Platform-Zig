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
const LayerInterface = @import("org/allbinary/layer/LayerInterface.zig").LayerInterface;
const PickedUpLayerInterfaceFactoryInterface = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.zig").PickedUpLayerInterfaceFactoryInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const PickedUpLayerInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.pickup.PickedUpLayerInterface";
    pointer: *anyopaque,
    object: Object,
    base: LayerInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getPickedUpLayerInterfaceFactoryInterfaceFn: *const fn (pointer: *anyopaque) ?*PickedUpLayerInterfaceFactoryInterface,
    setPickedUpFn: *const fn (pointer: *anyopaque) void,

    pub fn getPickedUpLayerInterfaceFactoryInterface(self: *Self) ?*PickedUpLayerInterfaceFactoryInterface {
        return self.getPickedUpLayerInterfaceFactoryInterfaceFn(self.pointer);
    }

    pub fn setPickedUp(self: *Self) void {
        return self.setPickedUpFn(self.pointer);
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
            fn getPickedUpLayerInterfaceFactoryInterface(pointer: *anyopaque) ?*PickedUpLayerInterfaceFactoryInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PickedUpLayerInterfaceFactoryInterface, Inheritance.receiver(implementation, "getPickedUpLayerInterfaceFactoryInterface").getPickedUpLayerInterfaceFactoryInterface());
            }
            fn setPickedUp(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPickedUp").setPickedUp();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = LayerInterface.of(object).?.*, .toStringFn = Methods.toString, .getPickedUpLayerInterfaceFactoryInterfaceFn = Methods.getPickedUpLayerInterfaceFactoryInterface, .setPickedUpFn = Methods.setPickedUp };
        return this;
    }
};

