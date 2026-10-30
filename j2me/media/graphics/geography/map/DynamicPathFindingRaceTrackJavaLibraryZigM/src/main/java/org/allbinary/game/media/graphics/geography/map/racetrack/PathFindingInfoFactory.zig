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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const BasicGeographicMapUtil = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapUtil.zig").BasicGeographicMapUtil;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const GeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory.zig").GeographicMapCellTypeFactory;
const BasePathFindingInfoFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/BasePathFindingInfoFactory.zig").BasePathFindingInfoFactory;
const RaceTrackGeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType.zig").RaceTrackGeographicMapCellType;
const RaceTrackRoadsGeographicMapCellHistoryFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory.zig").RaceTrackRoadsGeographicMapCellHistoryFactory;
const PathFindingNodeCostInfoFactoryBase = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBase.zig").PathFindingNodeCostInfoFactoryBase;
const BasicGeographicMapGraph = @import("org/allbinary/media/graphics/geography/pathfinding/BasicGeographicMapGraph.zig").BasicGeographicMapGraph;
const BasicGeographicMapPathFinder = @import("org/allbinary/media/graphics/geography/pathfinding/BasicGeographicMapPathFinder.zig").BasicGeographicMapPathFinder;
const PathFinderGraphVisitorFactoryBase = @import("org/allbinary/media/graphics/geography/pathfinding/PathFinderGraphVisitorFactoryBase.zig").PathFinderGraphVisitorFactoryBase;
const PathFindingInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo.zig").PathFindingInfo;
const PathFindingNodeCostInfoFactory = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactory.zig").PathFindingNodeCostInfoFactory;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;
const SimplePathFinderGraphVisitorFactory = @import("org/allbinary/game/media/graphics/geography/map/racetrack/SimplePathFinderGraphVisitorFactory.zig").SimplePathFinderGraphVisitorFactory;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const PathFindingInfoFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory";
    base: BasePathFindingInfoFactory = undefined,
    MAX_DIRECTIONS: i32 = 0,
    pathFindingInfo: ?*PathFindingInfo = null,
    basicGeographicMapGraph: ?*BasicGeographicMapGraph = null,
    basicGeographicMapPathFinder: ?*BasicGeographicMapPathFinder = null,
    pathFinderGraphVisitorFactoryInterface: ?*PathFinderGraphVisitorFactoryBase = null,
    var instance: ?*PathFindingInfoFactory = null;

    fn initFields(this: *Self) void {
        this.MAX_DIRECTIONS = 4;
        
        
        
        
    }
    

    pub fn getInstance() ?*PathFindingInfoFactory {
        return Inheritance.upcast(?*PathFindingInfoFactory, PathFindingInfoFactory.instance);
    }
    

    pub fn initMax(max: i32) void {
        PathFindingInfoFactory.instance = Inheritance.upcast(@TypeOf(PathFindingInfoFactory.instance), Inheritance.callStatic(PathFindingInfoFactory, "create2", .{ Inheritance.callStatic(SimplePathFinderGraphVisitorFactory, "create3", .{ 1, 1, @as(i32, std.math.maxInt(i32)) }), max }));
    }
    

    pub fn create2(pathFinderGraphVisitorFactoryInterface: ?*PathFinderGraphVisitorFactoryBase, max: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasePathFindingInfoFactory.create().*;
        this.initFields();
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("Using Dynamic Path Finding"), this, commonStrings.?.GET_INSTANCE });
        this.basicGeographicMapPathFinder = Inheritance.callStatic(BasicGeographicMapPathFinder, "create1", .{ max });
        this.pathFindingInfo = Inheritance.callStatic(PathFindingInfo, "create3", .{ Inheritance.callStatic(PathFindingNodeCostInfoFactory, "create1", .{ max }), Inheritance.callStatic(BasicArrayListS, "create1", .{ 1 }), Inheritance.callStatic(BasicArrayListS, "create1", .{ 1 }) });
        this.basicGeographicMapGraph = Inheritance.callStatic(BasicGeographicMapGraph, "create1", .{ Inheritance.cast(?*PathFindingNodeCostInfoFactory, this.pathFindingInfo.?.getPathFindingNodeCostInfoFactoryInterface()) });
        this.pathFinderGraphVisitorFactoryInterface = pathFinderGraphVisitorFactoryInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getInstancePathFindingInfo(self: *Self, geographicMapInterface: ?*BasicGeographicMap, mapArray: [][]i32) ?*PathFindingInfo {
        const pathFindingInfo: ?*PathFindingInfo = Inheritance.callStatic(PathFindingInfo, "create3", .{ self.pathFindingInfo.?.getPathFindingNodeCostInfoFactoryInterface(), Inheritance.callStatic(BasicArrayListS, "create1", .{ 1 }), Inheritance.callStatic(BasicArrayListS, "create1", .{ 1 }) });
        _ = Inheritance.receiverOf(RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance().?, "init").init();
        _ = Inheritance.call(self, "init", .{ geographicMapInterface, pathFindingInfo, mapArray });
        _ = Inheritance.call(self.basicGeographicMapPathFinder.?, "init", .{ geographicMapInterface, self.basicGeographicMapGraph, Inheritance.call(self.pathFinderGraphVisitorFactoryInterface.?, "getInstance", .{ geographicMapInterface }) });
        _ = Inheritance.call(pathFindingInfo.?, "setPathFinder", .{ self.basicGeographicMapPathFinder });
        return pathFindingInfo;
    }
    

    // throws Exception
    pub fn init(self: *Self, geographicMapInterface: ?*BasicGeographicMap, pathFindingInfo: ?*PathFindingInfo, mapArray: [][]i32) void {
        _ = Inheritance.call(&self.base, "init", .{ geographicMapInterface, pathFindingInfo, mapArray });
        _ = Inheritance.call(self, "buildPathFindingNodes", .{ geographicMapInterface, pathFindingInfo, mapArray });
    }
    

    // throws Exception
    pub fn buildPathFindingNodesForCellPosition(self: *Self, geographicMapInterface: ?*BasicGeographicMap, pathFindingInfo: ?*PathFindingInfo, mapArray: [][]i32, cellPosition: ?*GeographicMapCellPosition) void {
        const geographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, Inheritance.receiver(geographicMapInterface.?, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory());
        const cellTypeId: i32 = mapArray[@intCast(Inheritance.receiver(cellPosition.?, "getRow").getRow())][@intCast(Inheritance.receiver(cellPosition.?, "getColumn").getColumn())];
        const geographicMapCellType: ?*GeographicMapCellType = Inheritance.upcast(?*GeographicMapCellType, Inheritance.call(GeographicMapCellTypeFactory.getInstance().?, "get", .{ Inheritance.call(geographicMapInterface.?, "getCellTypeFromMapCellTypeInt", .{ cellTypeId }) }));
        const raceTrackGeographicMapCellType: ?*RaceTrackGeographicMapCellType = Inheritance.cast(?*RaceTrackGeographicMapCellType, geographicMapCellType);
        const allBinaryTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        const pathFindingNodeCostInfoFactoryInterface: ?*PathFindingNodeCostInfoFactoryBase = Inheritance.upcast(?*PathFindingNodeCostInfoFactoryBase, pathFindingInfo.?.getPathFindingNodeCostInfoFactoryInterface());
        const basicGeographicMapUtil: ?*BasicGeographicMapUtil = Inheritance.upcast(?*BasicGeographicMapUtil, BasicGeographicMapUtil.getInstance());
        var row: i32 = 0;
        var column: i32 = 0;
        var goingToGeographicMapCellPosition: ?*GeographicMapCellPosition = null;
        var costFromStart: i32 = 0;
        var costToEnd: i32 = 0;
        {
            var index: i32 = 0;
            while (index < self.MAX_DIRECTIONS) : (index += 1) {
            row = Inheritance.call(basicGeographicMapUtil.?, "getBorderingRow", .{ index, cellPosition });
            column = Inheritance.call(basicGeographicMapUtil.?, "getBorderingColumn", .{ index, cellPosition });
            if (row < Inheritance.receiver(allBinaryTiledLayer.?, "getRows").getRows() and column < Inheritance.receiver(allBinaryTiledLayer.?, "getColumns").getColumns() and row >= 0 and column >= 0) {
                goingToGeographicMapCellPosition = Inheritance.upcast(@TypeOf(goingToGeographicMapCellPosition), Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ column, row }));
                costFromStart = Inheritance.receiver(raceTrackGeographicMapCellType.?, "getTravelCost").getTravelCost();
                costToEnd = costFromStart;
                _ = Inheritance.call(pathFindingNodeCostInfoFactoryInterface.?, "create", .{ geographicMapInterface, goingToGeographicMapCellPosition, cellPosition, costFromStart, costToEnd });
            }
            }
        }
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

