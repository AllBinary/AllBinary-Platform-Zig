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
// package org.allbinary.game.ag.layer.pickup.life

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Life = @import("org/allbinary/game/ag/life/Life.zig").Life;
const LifeInterfaceCompositeInterface = @import("org/allbinary/game/ag/life/LifeInterfaceCompositeInterface.zig").LifeInterfaceCompositeInterface;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerCircularPool = @import("org/allbinary/layer/AllBinaryLayerCircularPool.zig").AllBinaryLayerCircularPool;
const AllBinaryLayerFactoryInterface = @import("org/allbinary/layer/AllBinaryLayerFactoryInterface.zig").AllBinaryLayerFactoryInterface;
const LifeLayer = @import("org/allbinary/game/ag/layer/pickup/life/LifeLayer.zig").LifeLayer;

pub const LifeLayerCircularStaticPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool";
    base: AllBinaryLayerCircularPool = undefined,
    

    pub fn create2(allbinaryLayerFactoryInterface: ?*AllBinaryLayerFactoryInterface, total: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = AllBinaryLayerCircularPool.create().*;
        _ = Inheritance.call(&this.base, "initAllBinaryLayerCircularPool", .{ allbinaryLayerFactoryInterface, total });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn visit(self: *Self, sourceLayerInterface: ?*AllBinaryLayer) void {
        const lifeLayer: ?*LifeLayer = Inheritance.cast(?*LifeLayer, Inheritance.receiver(self, "getNextInstance").getNextInstance());
        const lifeInterfaceCompositeInterface: ?*LifeInterfaceCompositeInterface = Inheritance.cast(?*LifeInterfaceCompositeInterface, sourceLayerInterface);
        const lifeInterface: ?*Life = Inheritance.upcast(?*Life, lifeInterfaceCompositeInterface.?.getLifeInterface());
        _ = Inheritance.call(lifeLayer.?, "visit", .{ lifeInterface });
    }
};

