// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
// package org.allbinary.game.layer.waypoint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CollidableCompositeLayer = @import("org/allbinary/game/layer/CollidableCompositeLayer.zig").CollidableCompositeLayer;
const CollidableRTSBehavior = @import("org/allbinary/game/layer/CollidableRTSBehavior.zig").CollidableRTSBehavior;
const CollidableInterfaceCompositeInterface = @import("org/allbinary/game/collision/CollidableInterfaceCompositeInterface.zig").CollidableInterfaceCompositeInterface;

pub const CollidableWaypointBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.CollidableWaypointBehavior";
    base: CollidableRTSBehavior = undefined,
    

    pub fn create1(collidable: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CollidableRTSBehavior, "create1", .{ collidable }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isCollision(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collisionLayer: ?*CollidableCompositeLayer) bool {
        _ = ownerLayer;
        _ = collisionLayer;
        _ = self;
        return false;
    }
    

    // throws Exception
    pub fn collide(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collisionLayer: ?*CollidableCompositeLayer) void {
        _ = ownerLayer;
        _ = collisionLayer;
        _ = self;
    }
    

    pub fn isCollisionInterface(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterface: ?*CollidableInterfaceCompositeInterface) bool {
        _ = ownerLayer;
        _ = collidableInterface;
        _ = self;
        return false;
    }
    

    // throws Exception
    pub fn collideInterface(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterface: ?*CollidableInterfaceCompositeInterface) void {
        _ = ownerLayer;
        _ = collidableInterface;
        _ = self;
    }
};

