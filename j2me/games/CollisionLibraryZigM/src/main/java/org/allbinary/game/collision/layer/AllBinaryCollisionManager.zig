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
// package org.allbinary.game.collision.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CollidableBaseBehavior = @import("org/allbinary/game/collision/CollidableBaseBehavior.zig").CollidableBaseBehavior;
const CollidableInterfaceCompositeInterface = @import("org/allbinary/game/collision/CollidableInterfaceCompositeInterface.zig").CollidableInterfaceCompositeInterface;
const CollidableCompositeLayer = @import("org/allbinary/game/layer/CollidableCompositeLayer.zig").CollidableCompositeLayer;
const LayerManager = @import("org/allbinary/layer/LayerManager.zig").LayerManager;

pub const AllBinaryCollisionManager = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.collision.layer.AllBinaryCollisionManager";
    var allBinaryCollisionManager: ?*AllBinaryCollisionManager = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        allBinaryCollisionManager = AllBinaryCollisionManager.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*AllBinaryCollisionManager {
        return Inheritance.upcast(?*AllBinaryCollisionManager, AllBinaryCollisionManager.allBinaryCollisionManager);
    }
    

    // throws Exception
    pub fn process(self: *Self, layerManager: ?*LayerManager, collidableInterfaceCompositeInterface: ?*CollidableInterfaceCompositeInterface, startIndex: i32) void {
        const size: i32 = layerManager.?.getSize();
        {
            var index: i32 = startIndex + 1;
            while (index < size) : (index += 1) {
            const collidableInterfaceCompositeInterface2: ?*CollidableInterfaceCompositeInterface = Inheritance.cast(?*CollidableInterfaceCompositeInterface, Inheritance.call(layerManager.?, "getLayerAt", .{ index }));
            _ = Inheritance.call(self, "collide", .{ layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2 });
            }
        }
    }
    

    // throws Exception
    pub fn collide(self: *Self, layerManager: ?*LayerManager, collidableInterfaceCompositeInterface: ?*CollidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2: ?*CollidableInterfaceCompositeInterface) void {
        _ = layerManager;
        _ = self;
        const collidableBase2: ?*CollidableBaseBehavior = Inheritance.upcast(?*CollidableBaseBehavior, collidableInterfaceCompositeInterface2.?.getCollidableInferface());
        const collidableBase: ?*CollidableBaseBehavior = Inheritance.upcast(?*CollidableBaseBehavior, collidableInterfaceCompositeInterface.?.getCollidableInferface());
        if (Inheritance.call(collidableBase2.?, "isCollidable", .{ Inheritance.cast(?*CollidableCompositeLayer, collidableInterfaceCompositeInterface) })) {
            if (Inheritance.call(collidableBase.?, "isCollisionInterface", .{ Inheritance.cast(?*CollidableCompositeLayer, collidableInterfaceCompositeInterface), collidableInterfaceCompositeInterface2 })) {
                _ = Inheritance.call(collidableBase.?, "collideInterface", .{ Inheritance.cast(?*CollidableCompositeLayer, collidableInterfaceCompositeInterface), collidableInterfaceCompositeInterface2 });
                _ = Inheritance.call(collidableBase2.?, "collideInterface", .{ Inheritance.cast(?*CollidableCompositeLayer, collidableInterfaceCompositeInterface), collidableInterfaceCompositeInterface });
            }
        }
    }
};

