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
// package org.allbinary.game.layer.pickup

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayerCircularPool = @import("org/allbinary/layer/AllBinaryLayerCircularPool.zig").AllBinaryLayerCircularPool;
const PickedUpLayerInterface = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterface.zig").PickedUpLayerInterface;
const PickedUpLayerInterfaceFactoryInterface = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.zig").PickedUpLayerInterfaceFactoryInterface;
const PickupLayer = @import("org/allbinary/game/layer/pickup/PickupLayer.zig").PickupLayer;

pub const PickupLayerCircularStaticPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool";
    base: AllBinaryLayerCircularPool = undefined,
    var SINGLETON: ?*PickupLayerCircularStaticPool = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = PickupLayerCircularStaticPool.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = AllBinaryLayerCircularPool.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*PickupLayerCircularStaticPool {
        return Inheritance.upcast(?*PickupLayerCircularStaticPool, PickupLayerCircularStaticPool.SINGLETON);
    }
    

    // throws Exception
    pub fn getInstanceXYZ(self: *Self, pickedUpLayerInterfaceFactoryInterface: ?*PickedUpLayerInterfaceFactoryInterface, x: i32, y: i32, z: i32) ?*PickedUpLayerInterface {
        const pickupLayer: ?*PickupLayer = Inheritance.cast(?*PickupLayer, Inheritance.receiver(self, "getNextInstance").getNextInstance());
        _ = Inheritance.call(pickupLayer.?, "initXYZ", .{ x, y, z });
        _ = Inheritance.call(pickupLayer.?, "init", .{ pickedUpLayerInterfaceFactoryInterface, pickedUpLayerInterfaceFactoryInterface.?.getAnimationInterface() });
        return Inheritance.upcast(?*PickedUpLayerInterface, pickupLayer);
    }
};

