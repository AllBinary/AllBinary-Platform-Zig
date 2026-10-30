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
const CollisionHelper = @import("org/allbinary/game/collision/CollisionHelper.zig").CollisionHelper;

pub const SourceCollisionHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.collision.SourceCollisionHelper";
    base: CollisionHelper = undefined,
    

    pub fn create1(layerInterface: ?*AllBinaryLayer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CollisionHelper, "create1", .{ layerInterface }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isCollidable(self: *Self, layerInterface: ?*CollidableCompositeLayer) bool {
        if (!Object.same(Inheritance.fieldPointer(self, "sourceLayerInterface").*, layerInterface)) {
            return true;
        }
        return false;
    }
};

