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
const PickupBehavior = @import("org/allbinary/game/layer/pickup/PickupBehavior.zig").PickupBehavior;

// Java interface: an implementation is a pointer and a table of functions
pub const PickupCompositeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.pickup.PickupCompositeInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getPickupBehaviorFn: *const fn (pointer: *anyopaque) ?*PickupBehavior,
    setPickupBehaviorFn: *const fn (pointer: *anyopaque, pickupBehavior: ?*PickupBehavior) void,

    pub fn getPickupBehavior(self: *Self) ?*PickupBehavior {
        return self.getPickupBehaviorFn(self.pointer);
    }

    pub fn setPickupBehavior(self: *Self, pickupBehavior: ?*PickupBehavior) void {
        return self.setPickupBehaviorFn(self.pointer, pickupBehavior);
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
            fn getPickupBehavior(pointer: *anyopaque) ?*PickupBehavior {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PickupBehavior, Inheritance.receiver(implementation, "getPickupBehavior").getPickupBehavior());
            }
            fn setPickupBehavior(pointer: *anyopaque, pickupBehavior: ?*PickupBehavior) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPickupBehavior").setPickupBehavior(pickupBehavior);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getPickupBehaviorFn = Methods.getPickupBehavior, .setPickupBehaviorFn = Methods.setPickupBehavior };
        return this;
    }
};

