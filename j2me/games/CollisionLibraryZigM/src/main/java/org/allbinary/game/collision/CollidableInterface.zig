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
// package org.allbinary.game.collision

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CollidableCompositeLayer = @import("org/allbinary/game/layer/CollidableCompositeLayer.zig").CollidableCompositeLayer;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const NamedInterface = @import("org/allbinary/layer/NamedInterface.zig").NamedInterface;
const CollisionType = @import("org/allbinary/game/collision/CollisionType.zig").CollisionType;
const Exception = @import("java/lang/Exception.zig").Exception;

// Java interface: an implementation is a pointer and a table of functions
pub const CollidableInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.collision.CollidableInterface";
    pointer: *anyopaque,
    object: Object,
    base: NamedInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    isCollidableFn: *const fn (interface_pointer: *anyopaque, ownerLayer: ?*CollidableCompositeLayer) bool,
    isCollisionFn: *const fn (interface_pointer: *anyopaque, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableCompositeLayer) bool,
    collideFn: *const fn (interface_pointer: *anyopaque, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableCompositeLayer) void,
    getCollisionTypeWithFn: *const fn (interface_pointer: *anyopaque, layerInterface: ?*AllBinaryLayer) ?*CollisionType,

    pub fn isCollidable(self: *Self, ownerLayer: ?*CollidableCompositeLayer) bool {
        return self.isCollidableFn(self.pointer, ownerLayer);
    }

    pub fn isCollision(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableCompositeLayer) bool {
        return self.isCollisionFn(self.pointer, ownerLayer, collidableInterfaceCompositeInterface);
    }

    pub fn collide(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableCompositeLayer) void {
        return self.collideFn(self.pointer, ownerLayer, collidableInterfaceCompositeInterface);
    }

    pub fn getCollisionTypeWith(self: *Self, layerInterface: ?*AllBinaryLayer) ?*CollisionType {
        return self.getCollisionTypeWithFn(self.pointer, layerInterface);
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
            fn isCollidable(interface_pointer: *anyopaque, ownerLayer: ?*CollidableCompositeLayer) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "isCollidable", .{ ownerLayer });
            }
            fn isCollision(interface_pointer: *anyopaque, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableCompositeLayer) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "isCollision", .{ ownerLayer, collidableInterfaceCompositeInterface });
            }
            fn collide(interface_pointer: *anyopaque, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableCompositeLayer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "collide", .{ ownerLayer, collidableInterfaceCompositeInterface });
            }
            fn getCollisionTypeWith(interface_pointer: *anyopaque, layerInterface: ?*AllBinaryLayer) ?*CollisionType {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*CollisionType, Inheritance.call(implementation, "getCollisionTypeWith", .{ layerInterface }));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = NamedInterface.of(object).?.*, .toStringFn = Methods.toString, .isCollidableFn = Methods.isCollidable, .isCollisionFn = Methods.isCollision, .collideFn = Methods.collide, .getCollisionTypeWithFn = Methods.getCollisionTypeWith };
        return this;
    }
};

