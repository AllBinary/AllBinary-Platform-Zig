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
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const CollidableNeverCollideBehavior = @import("org/allbinary/game/collision/CollidableNeverCollideBehavior.zig").CollidableNeverCollideBehavior;
const CollisionType = @import("org/allbinary/game/collision/CollisionType.zig").CollisionType;
const CollisionTypeFactory = @import("org/allbinary/game/collision/CollisionTypeFactory.zig").CollisionTypeFactory;

pub const CollidableAlwaysPickupNeverCollideBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior";
    base: CollidableNeverCollideBehavior = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CollidableNeverCollideBehavior, "create1", .{ true }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getCollisionTypeWith(self: *Self, layerInterface: ?*AllBinaryLayer) ?*CollisionType {
        _ = layerInterface;
        _ = self;
        return Inheritance.upcast(?*CollisionType, CollisionTypeFactory.getInstance().?.PICKUP);
    }
};

