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
// package org.allbinary.game.tick

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryGameLayer = @import("org/allbinary/game/layer/AllBinaryGameLayer.zig").AllBinaryGameLayer;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const LayerProcessor = @import("org/allbinary/layer/LayerProcessor.zig").LayerProcessor;
const OptimizedTickableLayerManager = @import("org/allbinary/game/tick/OptimizedTickableLayerManager.zig").OptimizedTickableLayerManager;

pub const OptimizedTickableLayerProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.tick.OptimizedTickableLayerProcessor";
    base: LayerProcessor = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(LayerProcessor, "create1", .{ OptimizedTickableLayerManager.create() }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAt(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager, layerInterface: ?*AllBinaryLayer, index: i32) void {
        _ = index;
        _ = self;
        const tickableInterface: ?*AllBinaryGameLayer = Inheritance.cast(?*AllBinaryGameLayer, layerInterface);
        _ = Inheritance.call(tickableInterface.?, "processTick", .{ allBinaryLayerManager });
    }
    

    pub fn isProcessorLayer(self: *Self, layerInterface: ?*AllBinaryLayer) bool {
        _ = self;
        if (Inheritance.receiver(layerInterface.?, "implmentsTickableInterface").implmentsTickableInterface()) {
            return true;
        } else {
            return false;
        }
    }
};

