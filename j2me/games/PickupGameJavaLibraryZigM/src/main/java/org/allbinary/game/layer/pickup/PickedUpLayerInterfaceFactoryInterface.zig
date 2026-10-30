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
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const PickedUpLayerType = @import("org/allbinary/game/layer/pickup/PickedUpLayerType.zig").PickedUpLayerType;

// Java interface: an implementation is a pointer and a table of functions
pub const PickedUpLayerInterfaceFactoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getPickedUpLayerTypeFn: *const fn (pointer: *anyopaque) ?*PickedUpLayerType,
    getIconLayerFn: *const fn (pointer: *anyopaque) ?*AllBinaryLayer,
    getAnimationInterfaceFn: *const fn (pointer: *anyopaque) ?*Animation,

    pub fn getPickedUpLayerType(self: *Self) ?*PickedUpLayerType {
        return self.getPickedUpLayerTypeFn(self.pointer);
    }

    pub fn getIconLayer(self: *Self) ?*AllBinaryLayer {
        return self.getIconLayerFn(self.pointer);
    }

    pub fn getAnimationInterface(self: *Self) ?*Animation {
        return self.getAnimationInterfaceFn(self.pointer);
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
            fn getPickedUpLayerType(pointer: *anyopaque) ?*PickedUpLayerType {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PickedUpLayerType, Inheritance.receiver(implementation, "getPickedUpLayerType").getPickedUpLayerType());
            }
            fn getIconLayer(pointer: *anyopaque) ?*AllBinaryLayer {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(implementation, "getIconLayer").getIconLayer());
            }
            fn getAnimationInterface(pointer: *anyopaque) ?*Animation {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Animation, Inheritance.receiver(implementation, "getAnimationInterface").getAnimationInterface());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getPickedUpLayerTypeFn = Methods.getPickedUpLayerType, .getIconLayerFn = Methods.getIconLayer, .getAnimationInterfaceFn = Methods.getAnimationInterface };
        return this;
    }
};

