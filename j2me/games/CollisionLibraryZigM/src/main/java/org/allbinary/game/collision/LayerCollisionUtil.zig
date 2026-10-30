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
const OpenGLFeatureUtil = @import("org/allbinary/graphics/opengles/OpenGLFeatureUtil.zig").OpenGLFeatureUtil;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const Collision2DProcessor = @import("org/allbinary/game/collision/Collision2DProcessor.zig").Collision2DProcessor;
const CollisionProcessor = @import("org/allbinary/game/collision/CollisionProcessor.zig").CollisionProcessor;
const CollisionThreedProcessor = @import("org/allbinary/game/collision/CollisionThreedProcessor.zig").CollisionThreedProcessor;

pub const LayerCollisionUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.collision.LayerCollisionUtil";
    collisionProcessor: ?*CollisionProcessor = null,
    var instance: ?*LayerCollisionUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LayerCollisionUtil.create();
    }

    fn initFields(this: *Self) void {
        this.collisionProcessor = null;
    }
    

    pub fn getInstance() ?*LayerCollisionUtil {
        return Inheritance.upcast(?*LayerCollisionUtil, LayerCollisionUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        const gameFeatureFactory: ?*GameFeatureFactory = Inheritance.upcast(?*GameFeatureFactory, GameFeatureFactory.getInstance());
        if (Inheritance.receiverOf(OpenGLFeatureUtil.getInstance().?, "isAnyThreed").isAnyThreed() and !Inheritance.call(features.?, "isFeature", .{ gameFeatureFactory.?.COLLISIONS_FORCED_TWO_DIMENSIONAL })) {
            this.collisionProcessor = Inheritance.upcast(@TypeOf(this.collisionProcessor), CollisionThreedProcessor.create());
        } else {
            this.collisionProcessor = Inheritance.upcast(@TypeOf(this.collisionProcessor), Collision2DProcessor.create());
        }
        return this;
    }
    

    pub fn isCollision(self: *Self, myLayer: ?*AllBinaryLayer, myLayer2: ?*AllBinaryLayer) bool {
        return Inheritance.call(self.collisionProcessor.?, "isCollision", .{ myLayer, myLayer2 });
    }
};

