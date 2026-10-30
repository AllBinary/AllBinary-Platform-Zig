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
// package org.allbinary.media.graphics.geography.pathfinding

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const RaceTrackGeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType.zig").RaceTrackGeographicMapCellType;
const PathFindingNodeCostInfoFactoryBase = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBase.zig").PathFindingNodeCostInfoFactoryBase;

pub const PathFindingNodeCostInfoFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory";
    base: PathFindingNodeCostInfoFactoryBase = undefined,
    

    pub fn create1(max: i32) *Self {
        _ = max;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = PathFindingNodeCostInfoFactoryBase.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn create(self: *Self, geographicMapInterface: ?*BasicGeographicMap, goingToGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition, costFromStart: i64, costToEnd: i64) void {
        _ = geographicMapInterface;
        _ = goingToGeographicMapCellPosition;
        _ = geographicMapCellPosition;
        _ = costFromStart;
        _ = costToEnd;
        _ = self;
    }
    

    // throws Exception
    pub fn getTotalCost(self: *Self, geographicMapInterface: ?*BasicGeographicMap, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition) i64 {
        _ = self;
        const geographicMapCellType: ?*GeographicMapCellType = Inheritance.upcast(?*GeographicMapCellType, Inheritance.call(geographicMapInterface.?, "getCellTypeAt", .{ comingFromGeographicMapCellPosition }));
        const geographicMapCellType2: ?*GeographicMapCellType = Inheritance.upcast(?*GeographicMapCellType, Inheritance.call(geographicMapInterface.?, "getCellTypeAt", .{ geographicMapCellPosition }));
        const raceTrackGeographicMapCellType: ?*RaceTrackGeographicMapCellType = Inheritance.cast(?*RaceTrackGeographicMapCellType, geographicMapCellType);
        const raceTrackGeographicMapCellType2: ?*RaceTrackGeographicMapCellType = Inheritance.cast(?*RaceTrackGeographicMapCellType, geographicMapCellType2);
        return @as(i64, @intCast(Inheritance.receiver(raceTrackGeographicMapCellType.?, "getTravelCost").getTravelCost())) + Inheritance.receiver(raceTrackGeographicMapCellType2.?, "getTravelCost").getTravelCost();
    }
};

