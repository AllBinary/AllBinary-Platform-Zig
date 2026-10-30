// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.behavior.topview

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const BasicTopViewGeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/topview/BasicTopViewGeographicMapCellTypeFactory.zig").BasicTopViewGeographicMapCellTypeFactory;

pub const TopViewCharacterBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.behavior.topview.TopViewCharacterBehavior";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn terrainEvent(self: *Self, layer: ?*AllBinaryLayer, direction: ?*Direction, x: i32, y: i32, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        _ = layer;
        _ = direction;
        _ = x;
        _ = y;
        _ = geographicMapInterfaceArray;
        _ = geographicMapCellPosition;
        _ = self;
    }
    

    pub fn terrainMove(self: *Self, layer: ?*AllBinaryLayer, geographicMapInterfaceArray: []?*BasicGeographicMap, x: i32, y: i32) void {
        _ = layer;
        _ = geographicMapInterfaceArray;
        _ = x;
        _ = y;
        _ = self;
    }
    

    pub fn hasSolidBlock(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType) bool {
        _ = self;
        const size: i32 = @as(i32, @intCast(geographicMapInterfaceArray.len));
        var basicTopViewGeographicMapCellTypeFactory: ?*BasicTopViewGeographicMapCellTypeFactory = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            basicTopViewGeographicMapCellTypeFactory = Inheritance.cast(?*BasicTopViewGeographicMapCellTypeFactory, geographicMapInterfaceArray[@intCast(index)].?.getGeographicMapCellTypeFactory());
            if (Inheritance.call(basicTopViewGeographicMapCellTypeFactory.?.BLOCK_CELL_TYPE.?, "isType", .{ geographicMapCellTypeArray[@intCast(index)] })) {
                return true;
            }
            }
        }
        return false;
    }
};

