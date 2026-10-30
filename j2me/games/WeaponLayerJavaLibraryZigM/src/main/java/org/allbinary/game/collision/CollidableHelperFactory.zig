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
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureFactory = @import("org/allbinary/game/configuration/feature/GameFeatureFactory.zig").GameFeatureFactory;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const CollisionHelper = @import("org/allbinary/game/collision/CollisionHelper.zig").CollisionHelper;
const SourceCollisionHelper = @import("org/allbinary/game/collision/SourceCollisionHelper.zig").SourceCollisionHelper;

pub const CollidableHelperFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.collision.CollidableHelperFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*CollisionHelper {
        if (Inheritance.call(Features.getInstance().?, "isFeature", .{ GameFeatureFactory.getInstance().?.COLLISIONS_WITH_SOURCE })) {
            return Inheritance.callStatic(CollisionHelper, "create1", .{ AllBinaryLayer.NULL_ALLBINARY_LAYER });
        } else {
            return Inheritance.upcast(?*CollisionHelper, Inheritance.callStatic(SourceCollisionHelper, "create1", .{ AllBinaryLayer.NULL_ALLBINARY_LAYER }));
        }
    }
};

