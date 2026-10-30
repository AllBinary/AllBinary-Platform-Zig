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
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const LayerManager = @import("org/allbinary/layer/LayerManager.zig").LayerManager;
const LayerProcessor = @import("org/allbinary/layer/LayerProcessor.zig").LayerProcessor;
const CollidableBaseBehavior = @import("org/allbinary/game/collision/CollidableBaseBehavior.zig").CollidableBaseBehavior;
const OptimizedAllBinaryCollisionLayerManager = @import("org/allbinary/game/collision/OptimizedAllBinaryCollisionLayerManager.zig").OptimizedAllBinaryCollisionLayerManager;

pub const OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.collision.OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer";
    base: LayerProcessor = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(LayerProcessor, "create1", .{ OptimizedAllBinaryCollisionLayerManager.create() }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAt(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager, layerInterface: ?*AllBinaryLayer, startIndex: i32) void {
        _ = allBinaryLayerManager;
        const collidableInterfaceCompositeInterface: ?*CollidableCompositeLayer = Inheritance.cast(?*CollidableCompositeLayer, layerInterface);
        const collidableBase: ?*CollidableBaseBehavior = Inheritance.upcast(?*CollidableBaseBehavior, Inheritance.receiver(collidableInterfaceCompositeInterface.?, "getCollidableInferface").getCollidableInferface());
        if (Inheritance.call(collidableBase.?, "isCollidable", .{ collidableInterfaceCompositeInterface })) {
            const layerManager: ?*LayerManager = Inheritance.upcast(?*LayerManager, Inheritance.receiver(self, "getLayerManager").getLayerManager());
            const size: i32 = layerManager.?.getSize();
            var collidableInterfaceCompositeInterface2: ?*CollidableCompositeLayer = null;
            var collidableBase2: ?*CollidableBaseBehavior = null;
            {
                var index: i32 = startIndex + 1;
                while (index < size) : (index += 1) {
                collidableInterfaceCompositeInterface2 = Inheritance.cast(?*CollidableCompositeLayer, Inheritance.call(layerManager.?, "getLayerAt", .{ index }));
                collidableBase2 = Inheritance.upcast(@TypeOf(collidableBase2), Inheritance.receiver(collidableInterfaceCompositeInterface2.?, "getCollidableInferface").getCollidableInferface());
                if (Inheritance.call(collidableBase2.?, "isCollidable", .{ collidableInterfaceCompositeInterface }) and Inheritance.call(collidableBase.?, "isCollision", .{ collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2 })) {
                    _ = Inheritance.call(collidableBase.?, "collide", .{ collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2 });
                    _ = Inheritance.call(collidableBase2.?, "collide", .{ collidableInterfaceCompositeInterface2, collidableInterfaceCompositeInterface });
                }
                }
            }
        }
    }
    

    pub fn isProcessorLayer(self: *Self, layerInterface: ?*AllBinaryLayer) bool {
        _ = self;
        if (Inheritance.receiver(layerInterface.?, "implmentsCollidableInterface").implmentsCollidableInterface()) {
            return true;
        } else {
            return false;
        }
    }
};

