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
// package org.allbinary.game.layer.weapon

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CollidableHelperFactory = @import("org/allbinary/game/collision/CollidableHelperFactory.zig").CollidableHelperFactory;
const CollidableInterfaceCompositeInterface = @import("org/allbinary/game/collision/CollidableInterfaceCompositeInterface.zig").CollidableInterfaceCompositeInterface;
const CollisionHelper = @import("org/allbinary/game/collision/CollisionHelper.zig").CollisionHelper;
const CollisionType = @import("org/allbinary/game/collision/CollisionType.zig").CollisionType;
const CollisionTypeFactory = @import("org/allbinary/game/collision/CollisionTypeFactory.zig").CollisionTypeFactory;
const DamageableInterface = @import("org/allbinary/game/combat/damage/DamageableInterface.zig").DamageableInterface;
const CollidableCompositeLayer = @import("org/allbinary/game/layer/CollidableCompositeLayer.zig").CollidableCompositeLayer;
const CollidableDestroyableDamageableBehavior = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior.zig").CollidableDestroyableDamageableBehavior;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;

pub const CollidableWeaponBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.weapon.CollidableWeaponBehavior";
    base: CollidableDestroyableDamageableBehavior = undefined,
    collided: bool = false,
    collisionHelper: ?*CollisionHelper = null,
    var NULL_COLLIDABLE_WEAPON_BEHAVIOR: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_COLLIDABLE_WEAPON_BEHAVIOR = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.collided = false;
        
    }
    

    pub fn getNullInstance() ?*CollidableWeaponBehavior {
        if (Object.same(CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR, NullUtil.getInstance().?.NULL_OBJECT)) {
            CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR = Inheritance.upcast(@TypeOf(CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR), Inheritance.callStatic(CollidableWeaponBehavior, "create1", .{ false }));
        }
        return Inheritance.cast(?*CollidableWeaponBehavior, CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR);
    }
    

    pub fn create1(collidable: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CollidableDestroyableDamageableBehavior, "create1", .{ collidable }).*;
        this.initFields();
        _ = Inheritance.call(this, "setCollided", .{ false });
        _ = Inheritance.call(this, "setCollidable", .{ true });
        this.collisionHelper = Inheritance.upcast(@TypeOf(this.collisionHelper), CollidableHelperFactory.getInstance());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self, sourceLayerInterface: ?*AllBinaryLayer) void {
        _ = Inheritance.call(self, "setCollided", .{ false });
        _ = Inheritance.call(self.collisionHelper.?, "setOwnerLayerInterface", .{ sourceLayerInterface });
    }
    

    pub fn isCollision(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collisionLayer: ?*CollidableCompositeLayer) bool {
        if (Inheritance.call(self.collisionHelper.?, "isCollidable", .{ collisionLayer })) {
            if (!Object.same(Inheritance.receiver(ownerLayer.?, "getGroupInterface").getGroupInterface()[@intCast(0)], Inheritance.receiver(collisionLayer.?, "getGroupInterface").getGroupInterface()[@intCast(0)])) {
                return Inheritance.call(&self.base, "isCollision", .{ ownerLayer, collisionLayer });
            }
        }
        return false;
    }
    

    // throws Exception
    pub fn collide(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collisionLayer: ?*CollidableCompositeLayer) void {
        _ = Inheritance.call(&self.base, "collide", .{ ownerLayer, collisionLayer });
        self.collided = true;
    }
    

    pub fn isCollisionInterface(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableInterfaceCompositeInterface) bool {
        if (Inheritance.call(self.collisionHelper.?, "isCollidable", .{ Inheritance.cast(?*CollidableCompositeLayer, collidableInterfaceCompositeInterface) })) {
            const layerInterface: ?*AllBinaryLayer = Inheritance.cast(?*AllBinaryLayer, collidableInterfaceCompositeInterface);
            if (!Object.same(Inheritance.receiver(ownerLayer.?, "getGroupInterface").getGroupInterface()[@intCast(0)], Inheritance.receiver(layerInterface.?, "getGroupInterface").getGroupInterface()[@intCast(0)])) {
                if (Inheritance.call(Inheritance.fieldPointer(self, "layerCollisionUtil").*.?, "isCollision", .{ ownerLayer, layerInterface })) {
                    return true;
                }
            }
        }
        return false;
    }
    

    // throws Exception
    pub fn collideInterface(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableInterfaceCompositeInterface) void {
        const ownerDamageableInterface: ?*DamageableInterface = Inheritance.cast(?*DamageableInterface, ownerLayer);
        const damageableInterface: ?*DamageableInterface = Inheritance.cast(?*DamageableInterface, collidableInterfaceCompositeInterface);
        _ = Inheritance.call(Inheritance.fieldPointer(self, "damageUtil").*.?, "process", .{ ownerDamageableInterface, damageableInterface });
        self.collided = true;
    }
    

    pub fn getCollisionTypeWith(self: *Self, layerInterface: ?*AllBinaryLayer) ?*CollisionType {
        _ = layerInterface;
        _ = self;
        return Inheritance.upcast(?*CollisionType, CollisionTypeFactory.getInstance().?.COLLISION);
    }
    

    pub fn isCollided(self: *Self) bool {
        return self.collided;
    }
    

    pub fn setCollided(self: *Self, collided: bool) void {
        self.collided = collided;
    }
};

