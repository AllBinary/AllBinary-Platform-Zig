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
const CollidableInterfaceCompositeInterface = @import("org/allbinary/game/collision/CollidableInterfaceCompositeInterface.zig").CollidableInterfaceCompositeInterface;
const CollisionType = @import("org/allbinary/game/collision/CollisionType.zig").CollisionType;
const CollisionTypeFactory = @import("org/allbinary/game/collision/CollisionTypeFactory.zig").CollisionTypeFactory;
const CollidableCompositeLayer = @import("org/allbinary/game/layer/CollidableCompositeLayer.zig").CollidableCompositeLayer;
const PickedUpLayerInterface = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterface.zig").PickedUpLayerInterface;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const CollidableDestroyableDamageableBehavior = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior.zig").CollidableDestroyableDamageableBehavior;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;

pub const CollidableCharacterNoDamageBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.special.CollidableCharacterNoDamageBehavior";
    base: CollidableDestroyableDamageableBehavior = undefined,
    

    pub fn create1(collidable: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CollidableDestroyableDamageableBehavior, "create1", .{ collidable }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn collide(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableCompositeLayer) void {
        _ = self;
        const collisionTypeFactory: ?*CollisionTypeFactory = Inheritance.upcast(?*CollisionTypeFactory, CollisionTypeFactory.getInstance());
        const collisionType: ?*CollisionType = Inheritance.upcast(?*CollisionType, Inheritance.call(Inheritance.receiver(collidableInterfaceCompositeInterface.?, "getCollidableInferface").getCollidableInferface().?, "getCollisionTypeWith", .{ ownerLayer }));
        if (Object.same(collisionType, collisionTypeFactory.?.PICKUP)) {
            const collidableDestroyableDamageableLayer: ?*CollidableDestroyableDamageableLayer = Inheritance.cast(?*CollidableDestroyableDamageableLayer, ownerLayer);
            _ = Inheritance.call(Inheritance.receiver(collidableDestroyableDamageableLayer.?, "getPickupBehavior").getPickupBehavior().?, "doPickupLayer", .{ Inheritance.cast(?*PickedUpLayerInterface, collidableInterfaceCompositeInterface) });
        } else {
        }
    }
    

    // throws Exception
    pub fn collideInterface(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableInterfaceCompositeInterface) void {
        _ = ownerLayer;
        _ = collidableInterfaceCompositeInterface;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED, self });
    }
};

