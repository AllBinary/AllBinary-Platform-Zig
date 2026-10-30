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
// package org.allbinary.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const LayerManager = @import("org/allbinary/layer/LayerManager.zig").LayerManager;
const LayerProcessor = @import("org/allbinary/layer/LayerProcessor.zig").LayerProcessor;
const SingleLayerLayerManager = @import("org/allbinary/layer/SingleLayerLayerManager.zig").SingleLayerLayerManager;

pub const SingleLayerLayerProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.SingleLayerLayerProcessor";
    base: LayerProcessor = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(LayerProcessor, "create1", .{ SingleLayerLayerManager.create() }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        const layerManager: ?*LayerManager = Inheritance.upcast(?*LayerManager, Inheritance.receiver(self, "getLayerManager").getLayerManager());
        _ = Inheritance.call(self, "processAt", .{ allBinaryLayerManager, Inheritance.cast(?*AllBinaryLayer, Inheritance.call(layerManager.?, "getLayerAt", .{ 0 })), 0 });
    }
};

