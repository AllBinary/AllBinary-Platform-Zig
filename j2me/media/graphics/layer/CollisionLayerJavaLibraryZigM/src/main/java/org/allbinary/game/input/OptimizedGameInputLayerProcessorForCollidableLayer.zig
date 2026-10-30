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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryGameLayer = @import("org/allbinary/game/layer/AllBinaryGameLayer.zig").AllBinaryGameLayer;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const LayerProcessor = @import("org/allbinary/layer/LayerProcessor.zig").LayerProcessor;
const OptimizedGameInputLayerManager = @import("org/allbinary/game/input/OptimizedGameInputLayerManager.zig").OptimizedGameInputLayerManager;

pub const OptimizedGameInputLayerProcessorForCollidableLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.OptimizedGameInputLayerProcessorForCollidableLayer";
    base: LayerProcessor = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(LayerProcessor, "create1", .{ OptimizedGameInputLayerManager.create() }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAt(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager, layerInterface: ?*AllBinaryLayer, index: i32) void {
        _ = index;
        _ = self;
        const gameInputInterface: ?*AllBinaryGameLayer = Inheritance.cast(?*AllBinaryGameLayer, layerInterface);
        _ = Inheritance.call(gameInputInterface.?, "processInput", .{ allBinaryLayerManager });
    }
    

    pub fn isProcessorLayer(self: *Self, layerInterface: ?*AllBinaryLayer) bool {
        _ = self;
        if (Inheritance.receiver(layerInterface.?, "implmentsGameInputInterface").implmentsGameInputInterface()) {
            return true;
        } else {
            return false;
        }
    }
};

