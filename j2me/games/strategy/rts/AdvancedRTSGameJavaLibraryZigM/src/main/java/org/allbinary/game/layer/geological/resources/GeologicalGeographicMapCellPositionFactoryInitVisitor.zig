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
// package org.allbinary.game.layer.geological.resources

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellPositionFactoryInitVisitorInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInitVisitorInterface.zig").GeographicMapCellPositionFactoryInitVisitorInterface;
const GeologicalGeographicMapCellPosition = @import("org/allbinary/game/layer/geological/resources/GeologicalGeographicMapCellPosition.zig").GeologicalGeographicMapCellPosition;

pub const GeologicalGeographicMapCellPositionFactoryInitVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor";
    // Implements GeographicMapCellPositionFactoryInitVisitorInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn visit(self: *Self, tiledLayer: ?*AllBinaryTiledLayer, cellPosition: ?*GeographicMapCellPosition) void {
        _ = tiledLayer;
        _ = self;
        const geologicalGeographicMapCellPosition: ?*GeologicalGeographicMapCellPosition = Inheritance.upcast(?*GeologicalGeographicMapCellPosition, (Inheritance.cast(?*GeologicalGeographicMapCellPosition, cellPosition)));
        _ = Inheritance.receiverOf(Inheritance.receiver(geologicalGeographicMapCellPosition.?, "getGeologicalResource").getGeologicalResource().?, "init").init();
    }
};

