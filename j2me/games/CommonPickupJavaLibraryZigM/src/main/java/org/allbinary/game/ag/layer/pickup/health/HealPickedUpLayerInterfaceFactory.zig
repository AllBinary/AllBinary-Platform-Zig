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
// package org.allbinary.game.ag.layer.pickup.health

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const FeaturedAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.zig").FeaturedAnimationInterfaceFactoryInterfaceFactory;
const CountedPickedUpLayerInterfaceFactory = @import("org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.zig").CountedPickedUpLayerInterfaceFactory;
const IconLayerFactory = @import("org/allbinary/game/layer/pickup/IconLayerFactory.zig").IconLayerFactory;
const PickedUpLayerInterfaceFactory = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory.zig").PickedUpLayerInterfaceFactory;
const PickedUpLayerInterfaceFactoryInterface = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.zig").PickedUpLayerInterfaceFactoryInterface;
const PickedUpLayerTypeFactory = @import("org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.zig").PickedUpLayerTypeFactory;
const PickupProcessorInterface = @import("org/allbinary/game/layer/pickup/PickupProcessorInterface.zig").PickupProcessorInterface;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const HealLayerCircularStaticPool = @import("org/allbinary/game/ag/layer/pickup/health/HealLayerCircularStaticPool.zig").HealLayerCircularStaticPool;
const HealLayerFactory = @import("org/allbinary/game/ag/layer/pickup/health/HealLayerFactory.zig").HealLayerFactory;
const HealthResources = @import("org/allbinary/game/ag/layer/pickup/health/HealthResources.zig").HealthResources;

pub const HealPickedUpLayerInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory";
    base: PickedUpLayerInterfaceFactory = undefined,
    pool: ?*HealLayerCircularStaticPool = null,
    // Implements PickupProcessorInterface
    var pickedUpLayerInterfaceFactoryInterface: ?*PickedUpLayerInterfaceFactoryInterface = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        pickedUpLayerInterfaceFactoryInterface = Inheritance.upcast(?*PickedUpLayerInterfaceFactoryInterface, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY);
    }

    fn initFields(this: *Self) void {
        this.pool = Inheritance.callStatic(HealLayerCircularStaticPool, "create2", .{ HealLayerFactory.create(), 1 });
    }
    

    // throws Exception
    pub fn init() void {
        HealPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = Inheritance.upcast(@TypeOf(HealPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface), HealPickedUpLayerInterfaceFactory.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PickedUpLayerInterfaceFactory, "create3", .{ PickedUpLayerTypeFactory.getInstance().?.HEAL, Inheritance.callStatic(IconLayerFactory, "getInstance", .{ Inheritance.call(Inheritance.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().?, "get", .{ HealthResources.getInstance().?.RESOURCE }).?, "getInstance", .{ 0 }), 10, 10 }), Inheritance.call(Inheritance.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().?, "get", .{ HealthResources.getInstance().?.RESOURCE }).?, "getInstance", .{ 0 }) }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getTotal(self: *Self) i32 {
        _ = self;
        return 1;
    }
    

    pub fn getInstance() ?*PickedUpLayerInterfaceFactoryInterface {
        return Inheritance.upcast(?*PickedUpLayerInterfaceFactoryInterface, HealPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface);
    }
    

    // throws Exception
    pub fn process(self: *Self, sourceLayerInterface: ?*AllBinaryLayer) void {
        _ = Inheritance.call(self.pool.?, "visit", .{ sourceLayerInterface });
    }
};

