// 
// AllBinary Open License Version 1 
// Copyright (c) 2003 AllBinary 
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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CollisionType = @import("org/allbinary/game/collision/CollisionType.zig").CollisionType;
const CollisionTypeFactory = @import("org/allbinary/game/collision/CollisionTypeFactory.zig").CollisionTypeFactory;
const CollidableDestroyableDamageableBehavior = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior.zig").CollidableDestroyableDamageableBehavior;
const CollidableCompositeLayer = @import("org/allbinary/game/layer/CollidableCompositeLayer.zig").CollidableCompositeLayer;

pub const CollidableRTSBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.CollidableRTSBehavior";
    base: CollidableDestroyableDamageableBehavior = undefined,
    

    pub fn create1(collidable: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CollidableDestroyableDamageableBehavior, "create1", .{ collidable }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isCollision(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableCompositeLayer) bool {
        const collisionTypeFactory: ?*CollisionTypeFactory = Inheritance.upcast(?*CollisionTypeFactory, CollisionTypeFactory.getInstance());
        const collisionType: ?*CollisionType = Inheritance.upcast(?*CollisionType, Inheritance.call(Inheritance.receiver(collidableInterfaceCompositeInterface.?, "getCollidableInferface").getCollidableInferface().?, "getCollisionTypeWith", .{ ownerLayer }));
        if (Object.same(collisionType, collisionTypeFactory.?.PICKUP)) {
        } else if (Object.same(collisionType, collisionTypeFactory.?.COLLISION)) {
            return Inheritance.call(&self.base, "isCollision", .{ ownerLayer, collidableInterfaceCompositeInterface });
        } else {
            if (Inheritance.receiver(collidableInterfaceCompositeInterface.?, "getX2").getX2() <= Inheritance.receiver(ownerLayer.?, "getXP").getXP() or Inheritance.receiver(collidableInterfaceCompositeInterface.?, "getY2").getY2() <= Inheritance.receiver(ownerLayer.?, "getYP").getYP() or Inheritance.receiver(collidableInterfaceCompositeInterface.?, "getYP").getYP() >= Inheritance.receiver(ownerLayer.?, "getY2").getY2() or Inheritance.receiver(collidableInterfaceCompositeInterface.?, "getXP").getXP() >= Inheritance.receiver(ownerLayer.?, "getX2").getX2()) {
                return false;
            } else {
                return true;
            }
        }
        return false;
    }
    

    // throws Exception
    pub fn collide(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableCompositeLayer) void {
        const collisionTypeFactory: ?*CollisionTypeFactory = Inheritance.upcast(?*CollisionTypeFactory, CollisionTypeFactory.getInstance());
        const collisionType: ?*CollisionType = Inheritance.upcast(?*CollisionType, Inheritance.call(Inheritance.receiver(collidableInterfaceCompositeInterface.?, "getCollidableInferface").getCollidableInferface().?, "getCollisionTypeWith", .{ ownerLayer }));
        if (Object.same(collisionType, collisionTypeFactory.?.PICKUP)) {
        } else if (Object.same(collisionType, collisionTypeFactory.?.COLLISION)) {
            _ = Inheritance.call(&self.base, "collide", .{ ownerLayer, collidableInterfaceCompositeInterface });
        } else {
            _ = Inheritance.call(self, "collideNone", .{ ownerLayer, collidableInterfaceCompositeInterface });
        }
    }
    

    // throws Exception
    pub fn collideNone(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterface: ?*CollidableCompositeLayer) void {
        _ = ownerLayer;
        _ = collidableInterface;
        _ = self;
    }
};

