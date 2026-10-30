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
const GraphPath = @import("org/jgrapht/GraphPath.zig").GraphPath;
const DefaultWeightedEdge = @import("org/jgrapht/graph/DefaultWeightedEdge.zig").DefaultWeightedEdge;
const SimpleWeightedGraph = @import("org/jgrapht/graph/SimpleWeightedGraph.zig").SimpleWeightedGraph;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const CellPosition = @import("org/allbinary/graphics/CellPosition.zig").CellPosition;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const BasicGeographicMapUtil = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapUtil.zig").BasicGeographicMapUtil;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const RaceTrackGeographicMap = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap.zig").RaceTrackGeographicMap;
const PathFindingNode = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNode.zig").PathFindingNode;
const BasePathFinderGraphVisitor = @import("org/allbinary/game/media/graphics/geography/map/racetrack/BasePathFinderGraphVisitor.zig").BasePathFinderGraphVisitor;

pub const PathFinderGraphHackVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor";
    base: BasePathFinderGraphVisitor = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create4(geographicMapInterface: ?*BasicGeographicMap, edgeMinimum: i32, minPathWeight: i32, maxPathWeight: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasePathFinderGraphVisitor, "create4", .{ geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn visit(self: *Self, graph: ?*SimpleWeightedGraph, startPathFindingNodeList: ?*BasicArrayList, endPathFindingNodeList: ?*BasicArrayList) void {
        _ = Inheritance.call(self, "fixStart", .{ graph, startPathFindingNodeList });
        _ = Inheritance.call(self, "fixEnd", .{ graph, endPathFindingNodeList });
        _ = Inheritance.call(self, "fixOverPassEdges", .{ graph });
    }
    

    // throws Exception
    pub fn fixStart(self: *Self, graph: ?*SimpleWeightedGraph, startPathFindingNodeList: ?*BasicArrayList) void {
        const geographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, Inheritance.receiver(Inheritance.fieldPointer(self, "geographicMapInterface").*.?, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory());
        const tiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(Inheritance.fieldPointer(self, "geographicMapInterface").*.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        {
            var index: i32 = startPathFindingNodeList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const startPathFindingNode: ?*PathFindingNode = Inheritance.cast(?*PathFindingNode, Inheritance.call(startPathFindingNodeList.?, "get", .{ index }));
            const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, startPathFindingNode.?.geographicMapCellPosition);
            const column: i32 = Inheritance.receiver(geographicMapCellPosition.?, "getColumn").getColumn();
            const row: i32 = Inheritance.receiver(geographicMapCellPosition.?, "getRow").getRow();
            const nextRow: i32 = row + 1;
            if (Inheritance.call(tiledLayer.?, "isOnTileLayer", .{ column, nextRow })) {
                const geographicMapCellPositionNeighbor: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ column, nextRow }));
                _ = Inheritance.call(graph.?, "removeEdge", .{ geographicMapCellPosition, geographicMapCellPositionNeighbor });
            }
            }
        }
    }
    

    // throws Exception
    pub fn fixEnd(self: *Self, graph: ?*SimpleWeightedGraph, endPathFindingNodeList: ?*BasicArrayList) void {
        const geographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, Inheritance.receiver(Inheritance.fieldPointer(self, "geographicMapInterface").*.?, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory());
        const tiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(Inheritance.fieldPointer(self, "geographicMapInterface").*.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        {
            var index: i32 = endPathFindingNodeList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const endPathFindingNode: ?*PathFindingNode = Inheritance.cast(?*PathFindingNode, Inheritance.call(endPathFindingNodeList.?, "get", .{ index }));
            const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, endPathFindingNode.?.geographicMapCellPosition);
            _ = Inheritance.call(graph.?, "addVertex", .{ geographicMapCellPosition });
            const column: i32 = Inheritance.receiver(geographicMapCellPosition.?, "getColumn").getColumn();
            const row: i32 = Inheritance.receiver(geographicMapCellPosition.?, "getRow").getRow();
            const nextRow: i32 = row + 1;
            if (Inheritance.call(tiledLayer.?, "isOnTileLayer", .{ column, nextRow })) {
                const geographicMapCellPositionNeighbor: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ column, nextRow }));
                _ = Inheritance.call(graph.?, "addEdge", .{ geographicMapCellPosition, geographicMapCellPositionNeighbor });
            }
            }
        }
    }
    

    // throws Exception
    pub fn fixOverPassEdges(self: *Self, graph: ?*SimpleWeightedGraph) void {
        const geographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, Inheritance.receiver(Inheritance.fieldPointer(self, "geographicMapInterface").*.?, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory());
        const raceTrackGeographicMap: ?*RaceTrackGeographicMap = Inheritance.cast(?*RaceTrackGeographicMap, Inheritance.fieldPointer(self, "geographicMapInterface").*);
        const CellPositionArray: []?*CellPosition = Inheritance.receiverOf(Inheritance.receiver(raceTrackGeographicMap.?, "getRaceTrackData").getRaceTrackData().?, "getOverPassGeographicMapCellPositionArray").getOverPassGeographicMapCellPositionArray();
        {
            var index: i32 = @as(i32, @intCast(CellPositionArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            const overPassGeographicMapCellPosition: ?*CellPosition = Inheritance.upcast(?*CellPosition, CellPositionArray[@intCast(index)]);
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Fixing Over Pass: "), Inheritance.receiver(overPassGeographicMapCellPosition.?, "getColumn").getColumn()), String.literal(", ")), Inheritance.receiver(overPassGeographicMapCellPosition.?, "getRow").getRow()), self, String.literal("fixOverPassEdges") });
            const underPassGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ Inheritance.receiver(overPassGeographicMapCellPosition.?, "getColumn").getColumn(), Inheritance.receiver(overPassGeographicMapCellPosition.?, "getRow").getRow() }));
            const rightUnderPassGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ Inheritance.receiver(overPassGeographicMapCellPosition.?, "getColumn").getColumn() + 1, Inheritance.receiver(overPassGeographicMapCellPosition.?, "getRow").getRow() }));
            const leftUnderPassGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ Inheritance.receiver(overPassGeographicMapCellPosition.?, "getColumn").getColumn() - 1, Inheritance.receiver(overPassGeographicMapCellPosition.?, "getRow").getRow() }));
            _ = Inheritance.call(graph.?, "removeEdge", .{ underPassGeographicMapCellPosition, rightUnderPassGeographicMapCellPosition });
            _ = Inheritance.call(graph.?, "removeEdge", .{ underPassGeographicMapCellPosition, leftUnderPassGeographicMapCellPosition });
            _ = Inheritance.call(graph.?, "addVertex", .{ overPassGeographicMapCellPosition });
            _ = Inheritance.call(graph.?, "addEdge", .{ overPassGeographicMapCellPosition, rightUnderPassGeographicMapCellPosition });
            _ = Inheritance.call(graph.?, "addEdge", .{ overPassGeographicMapCellPosition, leftUnderPassGeographicMapCellPosition });
            }
        }
    }
    

    // throws Exception
    pub fn fixPath(self: *Self, startPathFindingNodeList: ?*BasicArrayList, endPathFindingNodeList: ?*BasicArrayList, pathList: ?*BasicArrayList) void {
        {
            var index: i32 = startPathFindingNodeList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const endPathFindingNode: ?*PathFindingNode = Inheritance.cast(?*PathFindingNode, Inheritance.call(endPathFindingNodeList.?, "get", .{ index }));
            const startPathFindingNode: ?*PathFindingNode = Inheritance.cast(?*PathFindingNode, Inheritance.call(startPathFindingNodeList.?, "get", .{ index }));
            if (Inheritance.call(BasicGeographicMapUtil.getInstance().?, "isSameCellPosition", .{ startPathFindingNode.?.geographicMapCellPosition, endPathFindingNode.?.geographicMapCellPosition })) {
                if (Inheritance.call(pathList.?, "remove", .{ endPathFindingNode.?.geographicMapCellPosition })) {
                    _ = Inheritance.call(pathList.?, "remove", .{ startPathFindingNode.?.geographicMapCellPosition });
                    _ = Inheritance.call(pathList.?, "addAt", .{ 0, startPathFindingNode.?.geographicMapCellPosition });
                }
            }
            }
        }
        _ = Inheritance.call(self, "removeOverPassEdges", .{ pathList });
    }
    

    // throws Exception
    pub fn removeOverPassEdges(self: *Self, pathList: ?*BasicArrayList) void {
        const geographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, Inheritance.receiver(Inheritance.fieldPointer(self, "geographicMapInterface").*.?, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory());
        const raceTrackGeographicMap: ?*RaceTrackGeographicMap = Inheritance.cast(?*RaceTrackGeographicMap, Inheritance.fieldPointer(self, "geographicMapInterface").*);
        const CellPositionArray: []?*CellPosition = Inheritance.receiverOf(Inheritance.receiver(raceTrackGeographicMap.?, "getRaceTrackData").getRaceTrackData().?, "getOverPassGeographicMapCellPositionArray").getOverPassGeographicMapCellPositionArray();
        {
            var index: i32 = @as(i32, @intCast(CellPositionArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            const overPassGeographicMapCellPosition: ?*CellPosition = Inheritance.upcast(?*CellPosition, CellPositionArray[@intCast(index)]);
            const underPassGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ Inheritance.receiver(overPassGeographicMapCellPosition.?, "getColumn").getColumn(), Inheritance.receiver(overPassGeographicMapCellPosition.?, "getRow").getRow() }));
            const indexOf: i32 = Inheritance.call(pathList.?, "indexOf", .{ overPassGeographicMapCellPosition });
            if (indexOf != -1) {
                _ = Inheritance.call(pathList.?, "set", .{ indexOf, underPassGeographicMapCellPosition });
            }
            }
        }
    }
    

    pub fn isValid(self: *Self, graphPath: ?*GraphPath) bool {
        _ = self;
        if (Inheritance.receiverOf(graphPath.?.getEdgeList().?, "size").size() > Inheritance.fieldPointer(self, "edgeMinimum").* and graphPath.?.getWeight() < Inheritance.fieldPointer(self, "maxPathWeight").* and graphPath.?.getWeight() > Inheritance.fieldPointer(self, "minPathWeight").*) {
            return true;
        } else {
            return false;
        }
    }
};

