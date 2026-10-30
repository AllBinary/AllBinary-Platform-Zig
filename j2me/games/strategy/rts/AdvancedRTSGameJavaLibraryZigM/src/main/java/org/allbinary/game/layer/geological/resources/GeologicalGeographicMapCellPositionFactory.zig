// 
// AllBinary Open License Version 1 
// Copyright (c) 2002 AllBinary 
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
const MyRandomFactory = @import("org/allbinary/game/rand/MyRandomFactory.zig").MyRandomFactory;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellPositionFactoryInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface.zig").GeographicMapCellPositionFactoryInterface;
const GeologicalGeographicMapCellPosition = @import("org/allbinary/game/layer/geological/resources/GeologicalGeographicMapCellPosition.zig").GeologicalGeographicMapCellPosition;
const GeologicalResource = @import("org/allbinary/game/layer/geological/resources/GeologicalResource.zig").GeologicalResource;

pub const GeologicalGeographicMapCellPositionFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory";
    resourcePerMapCellType: []i32 = &.{},
    // Implements GeographicMapCellPositionFactoryInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(resourcePerMapCellType: []i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.resourcePerMapCellType = resourcePerMapCellType;
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, geographicMapInterface: ?*BasicGeographicMap, i_column: i32, i_row: i32, columns: i32, rows: i32, width: i32, height: i32) ?*GeographicMapCellPosition {
        const tiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        const resources: i32 = self.resourcePerMapCellType[@intCast(Inheritance.call(tiledLayer.?, "getCell", .{ i_column, i_row }))] + Inheritance.call(MyRandomFactory.getInstance().?, "getAbsoluteNextInt", .{ 1000 });
        return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.callStatic(GeologicalGeographicMapCellPosition, "create7", .{ i_column, i_row, columns, rows, width, height, Inheritance.callStatic(GeologicalResource, "create1", .{ resources }) }));
    }
};

