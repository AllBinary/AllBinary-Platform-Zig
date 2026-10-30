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
// package org.allbinary.ai

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const LayerProcessor = @import("org/allbinary/layer/LayerProcessor.zig").LayerProcessor;
const ArtificialIntelligenceCompositeInterface = @import("org/allbinary/ai/ArtificialIntelligenceCompositeInterface.zig").ArtificialIntelligenceCompositeInterface;
const ArtificialIntelligenceLayerManager = @import("org/allbinary/ai/ArtificialIntelligenceLayerManager.zig").ArtificialIntelligenceLayerManager;

pub const ArtificialIntelligenceLayerProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.ai.ArtificialIntelligenceLayerProcessor";
    base: LayerProcessor = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(LayerProcessor, "create1", .{ ArtificialIntelligenceLayerManager.create() }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAt(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager, layerInterface: ?*AllBinaryLayer, index: i32) void {
        _ = index;
        _ = self;
        const artificialIntelligenceCompositeInterface: ?*ArtificialIntelligenceCompositeInterface = Inheritance.cast(?*ArtificialIntelligenceCompositeInterface, layerInterface);
        _ = Inheritance.call(artificialIntelligenceCompositeInterface.?.getArtificialIntelligenceInterface().?, "processAI", .{ allBinaryLayerManager });
    }
    

    // throws Exception
    pub fn isProcessorLayer(self: *Self, layerInterface: ?*AllBinaryLayer) bool {
        _ = self;
        if (Inheritance.receiver(layerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
            return true;
        } else {
            return false;
        }
    }
};

