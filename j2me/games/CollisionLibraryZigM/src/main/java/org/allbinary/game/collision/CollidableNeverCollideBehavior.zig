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
const CollidableBaseBehavior = @import("org/allbinary/game/collision/CollidableBaseBehavior.zig").CollidableBaseBehavior;
const CollidableInterfaceCompositeInterface = @import("org/allbinary/game/collision/CollidableInterfaceCompositeInterface.zig").CollidableInterfaceCompositeInterface;

pub const CollidableNeverCollideBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.collision.CollidableNeverCollideBehavior";
    base: CollidableBaseBehavior = undefined,
    

    pub fn create1(isCollidable: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CollidableBaseBehavior, "create1", .{ isCollidable }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isCollision(self: *Self, ownerLayer: ?*CollidableCompositeLayer, allbinaryCollidableLayer: ?*CollidableCompositeLayer) bool {
        _ = ownerLayer;
        _ = allbinaryCollidableLayer;
        _ = self;
        return false;
    }
    

    // throws Exception
    pub fn collide(self: *Self, ownerLayer: ?*CollidableCompositeLayer, allbinaryCollidableLayer: ?*CollidableCompositeLayer) void {
        _ = ownerLayer;
        _ = allbinaryCollidableLayer;
        _ = self;
    }
    

    pub fn collideInterface(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableInterfaceCompositeInterface) void {
        _ = ownerLayer;
        _ = collidableInterfaceCompositeInterface;
        _ = self;
    }
    

    pub fn isCollisionInterface(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableInterfaceCompositeInterface) bool {
        _ = ownerLayer;
        _ = collidableInterfaceCompositeInterface;
        _ = self;
        return false;
    }
};

