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
// package org.allbinary.game.layer.special

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CollidableBaseBehavior = @import("org/allbinary/game/collision/CollidableBaseBehavior.zig").CollidableBaseBehavior;
const CollidableInterfaceCompositeInterface = @import("org/allbinary/game/collision/CollidableInterfaceCompositeInterface.zig").CollidableInterfaceCompositeInterface;
const DamageUtil = @import("org/allbinary/game/combat/damage/DamageUtil.zig").DamageUtil;
const CollidableCompositeLayer = @import("org/allbinary/game/layer/CollidableCompositeLayer.zig").CollidableCompositeLayer;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;

pub const CollidableDestroyableDamageableBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior";
    base: CollidableBaseBehavior = undefined,
    damageUtil: ?*DamageUtil = null,

    fn initFields(this: *Self) void {
        this.damageUtil = Inheritance.upcast(?*DamageUtil, DamageUtil.getInstance());
    }
    

    pub fn create1(collidable: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CollidableBaseBehavior, "create1", .{ collidable }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isCollision(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collisionLayer: ?*CollidableCompositeLayer) bool {
        if (!Object.same(Inheritance.receiver(ownerLayer.?, "getGroupInterface").getGroupInterface()[@intCast(0)], Inheritance.receiver(collisionLayer.?, "getGroupInterface").getGroupInterface()[@intCast(0)])) {
            return Inheritance.call(&self.base, "isCollision", .{ ownerLayer, collisionLayer });
        }
        return false;
    }
    

    // throws Exception
    pub fn collide(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableCompositeLayer) void {
        _ = self;
        const ownerCollidableDestroyableDamageableLayer: ?*CollidableDestroyableDamageableLayer = Inheritance.cast(?*CollidableDestroyableDamageableLayer, ownerLayer);
        const collidableDestroyableDamageableLayer: ?*CollidableDestroyableDamageableLayer = Inheritance.cast(?*CollidableDestroyableDamageableLayer, collidableInterfaceCompositeInterface);
        _ = Inheritance.call(ownerCollidableDestroyableDamageableLayer.?, "damage", .{ Inheritance.call(collidableDestroyableDamageableLayer.?, "getDamage", .{ 0 }), 0 });
    }
    

    pub fn isCollisionInterface(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableInterfaceCompositeInterface) bool {
        _ = ownerLayer;
        _ = collidableInterfaceCompositeInterface;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ String.literal("No Longer Used"), self });
        return false;
    }
    

    // throws Exception
    pub fn collideInterface(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableInterfaceCompositeInterface) void {
        _ = ownerLayer;
        _ = collidableInterfaceCompositeInterface;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ String.literal("No Longer Used"), self });
    }
};

