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
// package org.allbinary.game.ag.layer.pickup.points

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ScoreableInterface = @import("org/allbinary/game/score/ScoreableInterface.zig").ScoreableInterface;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerCircularPool = @import("org/allbinary/layer/AllBinaryLayerCircularPool.zig").AllBinaryLayerCircularPool;
const AllBinaryLayerFactoryInterface = @import("org/allbinary/layer/AllBinaryLayerFactoryInterface.zig").AllBinaryLayerFactoryInterface;
const PointsLayer = @import("org/allbinary/game/ag/layer/pickup/points/PointsLayer.zig").PointsLayer;

pub const PointsLayerCircularStaticPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool";
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
        const pointsLayer: ?*PointsLayer = Inheritance.cast(?*PointsLayer, Inheritance.receiver(self, "getNextInstance").getNextInstance());
        const scoreableInterface: ?*ScoreableInterface = Inheritance.cast(?*ScoreableInterface, sourceLayerInterface);
        _ = Inheritance.call(pointsLayer.?, "visit", .{ scoreableInterface });
    }
};

