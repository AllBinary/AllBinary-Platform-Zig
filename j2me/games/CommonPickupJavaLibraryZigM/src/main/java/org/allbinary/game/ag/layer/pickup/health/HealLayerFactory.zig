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
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerFactoryInterface = @import("org/allbinary/layer/AllBinaryLayerFactoryInterface.zig").AllBinaryLayerFactoryInterface;
const HealLayer = @import("org/allbinary/game/ag/layer/pickup/health/HealLayer.zig").HealLayer;

pub const HealLayerFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.pickup.health.HealLayerFactory";
    // Implements AllBinaryLayerFactoryInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self) ?*AllBinaryLayer {
        _ = self;
        return Inheritance.upcast(?*AllBinaryLayer, HealLayer.create());
    }
};

