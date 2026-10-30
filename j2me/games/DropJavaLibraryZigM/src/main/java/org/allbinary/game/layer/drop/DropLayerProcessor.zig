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
// package org.allbinary.game.layer.drop

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const BasicLayerProcessor = @import("org/allbinary/layer/BasicLayerProcessor.zig").BasicLayerProcessor;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const DropLayerInterface = @import("org/allbinary/game/layer/drop/DropLayerInterface.zig").DropLayerInterface;

pub const DropLayerProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.drop.DropLayerProcessor";
    base: BasicLayerProcessor = undefined,
    var LAYER_PROCESSOR: ?*BasicLayerProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        LAYER_PROCESSOR = Inheritance.upcast(?*BasicLayerProcessor, DropLayerProcessor.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicLayerProcessor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*BasicLayerProcessor {
        return Inheritance.upcast(?*BasicLayerProcessor, DropLayerProcessor.LAYER_PROCESSOR);
    }
    

    // throws Exception
    pub fn process(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getList").getList());
        const size: i32 = list.?.size();
        var layerInterface: ?*AllBinaryLayer = null;
        var dropLayerInterface: ?*DropLayerInterface = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            layerInterface = Inheritance.cast(?*AllBinaryLayer, list.?.objectArray[@intCast(index)]);
            dropLayerInterface = Inheritance.cast(?*DropLayerInterface, layerInterface);
            layerInterface = Inheritance.cast(?*AllBinaryLayer, Inheritance.receiver(dropLayerInterface.?, "getDroppedLayer").getDroppedLayer());
            _ = Inheritance.call(allBinaryLayerManager.?, "append", .{ layerInterface });
            }
        }
        _ = list.?.clear();
    }
};

