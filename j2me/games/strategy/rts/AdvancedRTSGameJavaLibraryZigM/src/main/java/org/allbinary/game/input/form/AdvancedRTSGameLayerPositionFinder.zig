// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
// package org.allbinary.game.input.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LayerPositionFinderInterface = @import("org/allbinary/game/input/LayerPositionFinderInterface.zig").LayerPositionFinderInterface;
const WaypointCellPositionHistory = @import("org/allbinary/game/layer/waypoint/WaypointCellPositionHistory.zig").WaypointCellPositionHistory;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const DropCellPositionHistory = @import("org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory.zig").DropCellPositionHistory;

pub const AdvancedRTSGameLayerPositionFinder = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.form.AdvancedRTSGameLayerPositionFinder";
    // Implements LayerPositionFinderInterface
    var instance: ?*AdvancedRTSGameLayerPositionFinder = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AdvancedRTSGameLayerPositionFinder.create();
    }
    

    pub fn getInstance() ?*AdvancedRTSGameLayerPositionFinder {
        return Inheritance.upcast(?*AdvancedRTSGameLayerPositionFinder, AdvancedRTSGameLayerPositionFinder.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getLayerInterface(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*AllBinaryLayer {
        _ = self;
        var layerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.call(DropCellPositionHistory.getInstance().?, "getLayerInterface", .{ geographicMapCellPosition }));
        if (Object.same(layerInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER)) {
            layerInterface = Inheritance.upcast(@TypeOf(layerInterface), Inheritance.call(WaypointCellPositionHistory.getInstance().?, "getLayerInterface", .{ geographicMapCellPosition }));
        }
        return layerInterface;
    }
};

