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
// package org.allbinary.game.media.graphics.geography.map.racetrack

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const BasePathFindingInfoFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/BasePathFindingInfoFactory.zig").BasePathFindingInfoFactory;
const RaceTrackRoadsGeographicMapCellHistoryFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory.zig").RaceTrackRoadsGeographicMapCellHistoryFactory;
const PathFinder = @import("org/allbinary/media/graphics/geography/pathfinding/PathFinder.zig").PathFinder;
const PathFindingInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo.zig").PathFindingInfo;
const PathFindingNodeCostInfoFactory = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactory.zig").PathFindingNodeCostInfoFactory;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;

//1.4.2
pub const PathFindingInfoFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory";
    base: BasePathFindingInfoFactory = undefined,
    pathFindingInfo: ?*PathFindingInfo = null,
    pathFinder: ?*PathFinder = null,
    var instance: ?*PathFindingInfoFactory = undefined;
    var MAX: i32 = 32768;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PathFindingInfoFactory.create();
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn getInstance() ?*PathFindingInfoFactory {
        return Inheritance.upcast(?*PathFindingInfoFactory, PathFindingInfoFactory.instance);
    }
    

    pub fn initMax(max: i32) void {
        PathFindingInfoFactory.MAX = Inheritance.upcast(@TypeOf(PathFindingInfoFactory.MAX), max);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasePathFindingInfoFactory.create().*;
        this.initFields();
        this.pathFindingInfo = Inheritance.callStatic(PathFindingInfo, "create3", .{ Inheritance.callStatic(PathFindingNodeCostInfoFactory, "create1", .{ PathFindingInfoFactory.MAX }), Inheritance.callStatic(BasicArrayListS, "create1", .{ 1 }), Inheritance.callStatic(BasicArrayListS, "create1", .{ 1 }) });
        this.pathFinder = PathFinder.create();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getInstancePathFindingInfo(self: *Self, geographicMapInterface: ?*BasicGeographicMap, mapArray: [][]i32) ?*PathFindingInfo {
        const pathFindingInfo: ?*PathFindingInfo = Inheritance.callStatic(PathFindingInfo, "create3", .{ self.pathFindingInfo.?.getPathFindingNodeCostInfoFactoryInterface(), Inheritance.callStatic(BasicArrayListS, "create1", .{ 1 }), Inheritance.callStatic(BasicArrayListS, "create1", .{ 1 }) });
        _ = Inheritance.receiverOf(RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance().?, "init").init();
        _ = Inheritance.call(self, "init", .{ geographicMapInterface, pathFindingInfo, mapArray });
        _ = Inheritance.call(self.pathFinder.?, "init", .{ geographicMapInterface });
        _ = Inheritance.call(pathFindingInfo.?, "setPathFinder", .{ self.pathFinder });
        return pathFindingInfo;
    }
    

    // throws Exception
    pub fn init(self: *Self, geographicMapInterface: ?*BasicGeographicMap, pathFindingInfo: ?*PathFindingInfo, mapArray: [][]i32) void {
        _ = Inheritance.call(&self.base, "init", .{ geographicMapInterface, pathFindingInfo, mapArray });
        _ = Inheritance.call(self, "buildPathFindingNodes", .{ geographicMapInterface, pathFindingInfo, mapArray });
    }
    

    // throws Exception
    pub fn buildPathFindingNodesForCellPosition(self: *Self, geographicMapInterface: ?*BasicGeographicMap, pathFindingInfo: ?*PathFindingInfo, mapArray: [][]i32, cellPosition: ?*GeographicMapCellPosition) void {
        _ = geographicMapInterface;
        _ = pathFindingInfo;
        _ = mapArray;
        _ = cellPosition;
        _ = self;
    }
    

    // throws Exception
    pub fn buildPathFindingNodes(self: *Self, geographicMapInterface: ?*BasicGeographicMap, pathFindingInfo: ?*PathFindingInfo, mapArray: [][]i32) void {
        const geographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, Inheritance.receiver(geographicMapInterface.?, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory());
        const allBinaryTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        const totalColumns: i32 = Inheritance.receiver(allBinaryTiledLayer.?, "getColumns").getColumns();
        const totalRows: i32 = Inheritance.receiver(allBinaryTiledLayer.?, "getRows").getRows();
        {
            var column: i32 = 0;
            while (column < totalColumns) : (column += 1) {
            {
                var row: i32 = 0;
                while (row < totalRows) : (row += 1) {
                _ = Inheritance.call(self, "buildPathFindingNodesForCellPosition", .{ geographicMapInterface, pathFindingInfo, mapArray, Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ column, row }) });
                }
            }
            }
        }
    }
};

