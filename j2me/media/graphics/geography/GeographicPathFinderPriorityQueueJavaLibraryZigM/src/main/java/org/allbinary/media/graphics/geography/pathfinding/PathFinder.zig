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
// package org.allbinary.media.graphics.geography.pathfinding

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const HashSet = @import("java/util/HashSet.zig").HashSet;
// const PriorityQueue = @import("java/util/PriorityQueue.zig").PriorityQueue;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const MathUtil = @import("org/allbinary/logic/math/MathUtil.zig").MathUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const RaceTrackGeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType.zig").RaceTrackGeographicMapCellType;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const GeographicPathFinderBase = @import("org/allbinary/media/graphics/geography/pathfinding/GeographicPathFinderBase.zig").GeographicPathFinderBase;
const MultipassState = @import("org/allbinary/media/graphics/geography/pathfinding/MultipassState.zig").MultipassState;
const PathFindingNode = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNode.zig").PathFindingNode;
const PathFindingNodeCost = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCost.zig").PathFindingNodeCost;
const PathFindingNodeCostInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfo.zig").PathFindingNodeCostInfo;

pub const PathFinder = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.PathFinder";
    base: GeographicPathFinderBase = undefined,
    logUtil: ?*LogUtil = null,
    basicArrayListUtil: ?*BasicArrayListUtil = null,
    mathUtil: ?*MathUtil = null,
    openPriorityQueue: ?*PriorityQueue = null,
    closedSet: ?*HashSet = null,
    geographicMapInterface: ?Object = null,
    costArray: [][]?*PathFindingNodeCost = &.{},

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.basicArrayListUtil = Inheritance.upcast(?*BasicArrayListUtil, BasicArrayListUtil.getInstance());
        this.mathUtil = Inheritance.upcast(?*MathUtil, MathUtil.getInstance());
        this.openPriorityQueue = PriorityQueue.create();
        this.closedSet = HashSet.create();
        this.geographicMapInterface = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
        this.costArray = PathFindingNodeCost.NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = GeographicPathFinderBase.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, geographicMapInterface: ?*BasicGeographicMap) void {
        self.geographicMapInterface = geographicMapInterface;
        const tiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, geographicMapInterface.?.getAllBinaryTiledLayer());
        self.costArray = Inheritance.upcast(@TypeOf(self.costArray), array_N66573: { const array_N66573_array = allocator.alloc([]?*PathFindingNodeCost, @intCast(Inheritance.receiver(tiledLayer.?, "getColumns").getColumns())) catch unreachable; for (array_N66573_array) |*array_N66573_row| { array_N66573_row.* = allocator.alloc(?*PathFindingNodeCost, @intCast(Inheritance.receiver(tiledLayer.?, "getRows").getRows())) catch unreachable; @memset(array_N66573_row.*, null); } break :array_N66573 array_N66573_array; });
        const basicGeographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, geographicMapInterface.?.getGeographicMapCellPositionFactory());
        var node: ?*PathFindingNodeCost = null;
        const sizeX: i32 = @as(i32, @intCast(self.costArray.len));
        const sizeY: i32 = @as(i32, @intCast(self.costArray[@intCast(0)].len));
        {
            var column: i32 = 0;
            while (column < sizeX) : (column += 1) {
            {
                var row: i32 = 0;
                while (row < sizeY) : (row += 1) {
                const geographicMapCellType: ?*GeographicMapCellType = Inheritance.upcast(?*GeographicMapCellType, Inheritance.call(geographicMapInterface.?, "getCellTypeAt", .{ Inheritance.call(basicGeographicMapCellPositionFactory.?, "getAt", .{ column, row }) }));
                const raceTrackGeographicMapCellType: ?*RaceTrackGeographicMapCellType = Inheritance.cast(?*RaceTrackGeographicMapCellType, geographicMapCellType);
                node = Inheritance.callStatic(PathFindingNodeCost, "create3", .{ NullUtil.getInstance().?.NULL_OBJECT, Inheritance.call(basicGeographicMapCellPositionFactory.?, "getAt", .{ column, row }), Inheritance.callStatic(PathFindingNodeCostInfo, "create2", .{ @as(i64, @intCast(Inheritance.receiver(raceTrackGeographicMapCellType.?, "getTravelCost").getTravelCost())), @as(i64, @intCast(-1)) }) });
                self.costArray[@intCast(column)][@intCast(row)] = Inheritance.upcast(@TypeOf(self.costArray[@intCast(column)][@intCast(row)]), node);
                }
            }
            }
        }
    }
    

    pub fn searchTotalPath(self: *Self, startPathFindingNodeList: ?*BasicArrayList, endPathFindingNodeList: ?*BasicArrayList, totalPaths: i32) ?*BasicArrayList {
        _ = totalPaths;
        { // try
            return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "search", .{ Inheritance.cast(?*PathFindingNode, Inheritance.call(startPathFindingNodeList.?, "get", .{ 0 })), Inheritance.cast(?*PathFindingNode, Inheritance.call(endPathFindingNodeList.?, "get", .{ 0 })) }));
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("search"), e });
//             return Inheritance.upcast(?*BasicArrayList, self.basicArrayListUtil.?.getImmutableInstance());
    }
    

    // throws Exception
    pub fn searchTotalPathN(self: *Self, startPathFindingNodeList: ?*BasicArrayList, endPathFindingNodeList: ?*BasicArrayList, totalPaths: i32, multipassState: ?*MultipassState) ?*BasicArrayList {
        _ = totalPaths;
        if (multipassState.?.step == 0) {
            multipassState.?.step += 1;
        } else if (multipassState.?.step == 1) {
            _ = Inheritance.call(self, "searchStart", .{ Inheritance.cast(?*PathFindingNode, Inheritance.call(startPathFindingNodeList.?, "get", .{ 0 })), Inheritance.cast(?*PathFindingNode, Inheritance.call(endPathFindingNodeList.?, "get", .{ 0 })), multipassState });
        } else if (multipassState.?.step == 2) {
            return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "searchN", .{ Inheritance.cast(?*PathFindingNode, Inheritance.call(startPathFindingNodeList.?, "get", .{ 0 })), Inheritance.cast(?*PathFindingNode, Inheritance.call(endPathFindingNodeList.?, "get", .{ 0 })), multipassState }));
        }
        return Inheritance.upcast(?*BasicArrayList, self.basicArrayListUtil.?.getImmutableInstance());
    }
    

    // throws Exception
    pub fn search(self: *Self, startPathFindingNode: ?*PathFindingNode, endPathFindingNode: ?*PathFindingNode) ?*BasicArrayList {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "findPath", .{ startPathFindingNode.?.geographicMapCellPosition, endPathFindingNode.?.geographicMapCellPosition }));
        const pathList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(pathList.?, "add", .{ list });
        return pathList;
    }
    

    // throws Exception
    pub fn searchStart(self: *Self, startPathFindingNode: ?*PathFindingNode, endPathFindingNode: ?*PathFindingNode, multipassState: ?*MultipassState) void {
        _ = Inheritance.call(self, "findPathStart", .{ startPathFindingNode.?.geographicMapCellPosition, endPathFindingNode.?.geographicMapCellPosition, multipassState });
    }
    

    // throws Exception
    pub fn searchN(self: *Self, startPathFindingNode: ?*PathFindingNode, endPathFindingNode: ?*PathFindingNode, multipassState: ?*MultipassState) ?*BasicArrayList {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "findPathEnd", .{ startPathFindingNode.?.geographicMapCellPosition, endPathFindingNode.?.geographicMapCellPosition, multipassState }));
        if (list == null) {
            return Inheritance.upcast(?*BasicArrayList, self.basicArrayListUtil.?.getImmutableInstance());
        }
        const pathList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(pathList.?, "add", .{ list });
        multipassState.?.iteration = 0;
        multipassState.?.step = 0;
        return pathList;
    }
    

    // throws Exception
    pub fn findPath(self: *Self, start: ?*GeographicMapCellPosition, target: ?*GeographicMapCellPosition) ?*BasicArrayList {
        _ = self.openPriorityQueue.?.clear();
        _ = self.closedSet.?.clear();
        var discoveryCalculation: i64 = 0;
        var node: ?*PathFindingNodeCost = null;
        const targetColumn: i32 = Inheritance.receiver(target.?, "getColumn").getColumn();
        const targetRow: i32 = Inheritance.receiver(target.?, "getRow").getRow();
        const sizeX: i32 = @as(i32, @intCast(self.costArray.len));
        const sizeY: i32 = @as(i32, @intCast(self.costArray[@intCast(0)].len));
        {
            var column: i32 = 0;
            while (column < sizeX) : (column += 1) {
            {
                var row: i32 = 0;
                while (row < sizeY) : (row += 1) {
                discoveryCalculation = @as(i64, @intCast(Inheritance.call(self.mathUtil.?, "abs", .{ column - targetColumn }))) + Inheritance.call(self.mathUtil.?, "abs", .{ row - targetRow });
                node = Inheritance.upcast(@TypeOf(node), self.costArray[@intCast(column)][@intCast(row)]);
                node.?.pathFindingNodeCostInfoP.?.totalCostP = 0;
                node.?.pathFindingNodeCostInfoP.?.costToEndP = Inheritance.upcast(@TypeOf(node.?.pathFindingNodeCostInfoP.?.costToEndP), discoveryCalculation);
                }
            }
            }
        }
        const startNode: ?*PathFindingNodeCost = Inheritance.upcast(?*PathFindingNodeCost, self.costArray[@intCast(Inheritance.receiver(start.?, "getColumn").getColumn())][@intCast(Inheritance.receiver(start.?, "getRow").getRow())]);
        _ = Inheritance.call(self.openPriorityQueue.?, "add", .{ startNode });
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.cast(?*BasicGeographicMap, self.geographicMapInterface);
        const basicGeographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, geographicMapInterface.?.getGeographicMapCellPositionFactory());
        const allBinaryTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, geographicMapInterface.?.getAllBinaryTiledLayer());
        const targetNode: ?*PathFindingNodeCost = Inheritance.upcast(?*PathFindingNodeCost, self.costArray[@intCast(Inheritance.receiver(target.?, "getColumn").getColumn())][@intCast(Inheritance.receiver(target.?, "getRow").getRow())]);
        var current: ?*PathFindingNodeCost = null;
        while (true) {
            current = Inheritance.upcast(@TypeOf(current), self.openPriorityQueue.?.poll());
            _ = Inheritance.call(self.closedSet.?, "add", .{ current });
            if (Object.equals(Object.of(current), targetNode)) {
                return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "extractPath", .{ start, current }));
            }
            var neighbor: ?*PathFindingNodeCost = null;
            var neighborInfo: ?*PathFindingNodeCostInfo = null;
            var calculatedCost: i64 = 0;
            {
                var column: i32 = Inheritance.receiverOf(current.?.geographicMapCellPosition.?, "getColumn").getColumn() - 1;
                while (column < Inheritance.receiverOf(current.?.geographicMapCellPosition.?, "getColumn").getColumn() + 2) : (column += 1) {
                {
                    var row: i32 = Inheritance.receiverOf(current.?.geographicMapCellPosition.?, "getRow").getRow() - 1;
                    while (row < Inheritance.receiverOf(current.?.geographicMapCellPosition.?, "getRow").getRow() + 2) : (row += 1) {
                    if (column > 0 and row > 0 and column < Inheritance.receiver(allBinaryTiledLayer.?, "getColumns").getColumns() and row < Inheritance.receiver(allBinaryTiledLayer.?, "getRows").getRows() and Inheritance.call(geographicMapInterface.?, "isOnMap", .{ Inheritance.call(basicGeographicMapCellPositionFactory.?, "getAt", .{ column, row }) })) {
                        neighbor = Inheritance.upcast(@TypeOf(neighbor), self.costArray[@intCast(column)][@intCast(row)]);
                        if (Inheritance.call(self.closedSet.?, "contains", .{ neighbor })) {
                            continue;
                        }
                        neighborInfo = Inheritance.upcast(@TypeOf(neighborInfo), neighbor.?.pathFindingNodeCostInfoP);
                        calculatedCost = neighborInfo.?.costToEndP + neighborInfo.?.costFromStartP + current.?.pathFindingNodeCostInfoP.?.totalCostP;
                        if (calculatedCost < neighborInfo.?.totalCostP or !Inheritance.call(self.openPriorityQueue.?, "contains", .{ neighbor })) {
                            neighborInfo.?.totalCostP = Inheritance.upcast(@TypeOf(neighborInfo.?.totalCostP), calculatedCost);
                            neighbor.?.parent = Inheritance.upcast(@TypeOf(neighbor.?.parent), current);
                            if (!Inheritance.call(self.openPriorityQueue.?, "contains", .{ neighbor })) {
                                if (Inheritance.call(geographicMapInterface.?, "isOfFourDirections", .{ current.?.geographicMapCellPosition, neighbor.?.geographicMapCellPosition })) {
                                    _ = Inheritance.call(self.openPriorityQueue.?, "add", .{ neighbor });
                                }
                            }
                        }
                    }
                    }
                }
                }
            }
            if (!(!self.openPriorityQueue.?.isEmpty())) break;
        }
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn findPathStart(self: *Self, start: ?*GeographicMapCellPosition, target: ?*GeographicMapCellPosition, multipassState: ?*MultipassState) void {
        _ = self.openPriorityQueue.?.clear();
        _ = self.closedSet.?.clear();
        var discoveryCalculation: i64 = 0;
        var node: ?*PathFindingNodeCost = null;
        const targetColumn: i32 = Inheritance.receiver(target.?, "getColumn").getColumn();
        const targetRow: i32 = Inheritance.receiver(target.?, "getRow").getRow();
        const sizeX: i32 = @as(i32, @intCast(self.costArray.len));
        const sizeY: i32 = @as(i32, @intCast(self.costArray[@intCast(0)].len));
        {
            var column: i32 = 0;
            while (column < sizeX) : (column += 1) {
            {
                var row: i32 = 0;
                while (row < sizeY) : (row += 1) {
                discoveryCalculation = @as(i64, @intCast(Inheritance.call(self.mathUtil.?, "abs", .{ column - targetColumn }))) + Inheritance.call(self.mathUtil.?, "abs", .{ row - targetRow });
                node = Inheritance.upcast(@TypeOf(node), self.costArray[@intCast(column)][@intCast(row)]);
                node.?.pathFindingNodeCostInfoP.?.totalCostP = 0;
                node.?.pathFindingNodeCostInfoP.?.costToEndP = Inheritance.upcast(@TypeOf(node.?.pathFindingNodeCostInfoP.?.costToEndP), discoveryCalculation);
                }
            }
            }
        }
        const startNode: ?*PathFindingNodeCost = Inheritance.upcast(?*PathFindingNodeCost, self.costArray[@intCast(Inheritance.receiver(start.?, "getColumn").getColumn())][@intCast(Inheritance.receiver(start.?, "getRow").getRow())]);
        _ = Inheritance.call(self.openPriorityQueue.?, "add", .{ startNode });
        multipassState.?.step += 1;
    }
    

    // throws Exception
    pub fn findPathEnd(self: *Self, start: ?*GeographicMapCellPosition, target: ?*GeographicMapCellPosition, multipassState: ?*MultipassState) ?*BasicArrayList {
        _ = multipassState;
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.cast(?*BasicGeographicMap, self.geographicMapInterface);
        const basicGeographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, geographicMapInterface.?.getGeographicMapCellPositionFactory());
        const allBinaryTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, geographicMapInterface.?.getAllBinaryTiledLayer());
        const targetNode: ?*PathFindingNodeCost = Inheritance.upcast(?*PathFindingNodeCost, self.costArray[@intCast(Inheritance.receiver(target.?, "getColumn").getColumn())][@intCast(Inheritance.receiver(target.?, "getRow").getRow())]);
        var current: ?*PathFindingNodeCost = null;
        var total: i32 = 0;
        while (true) {
            current = Inheritance.upcast(@TypeOf(current), self.openPriorityQueue.?.poll());
            _ = Inheritance.call(self.closedSet.?, "add", .{ current });
            if (Object.equals(Object.of(current), targetNode)) {
                return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "extractPath", .{ start, current }));
            }
            var neighbor: ?*PathFindingNodeCost = null;
            var neighborInfo: ?*PathFindingNodeCostInfo = null;
            var calculatedCost: i64 = 0;
            {
                var column: i32 = Inheritance.receiverOf(current.?.geographicMapCellPosition.?, "getColumn").getColumn() - 1;
                while (column < Inheritance.receiverOf(current.?.geographicMapCellPosition.?, "getColumn").getColumn() + 2) : (column += 1) {
                {
                    var row: i32 = Inheritance.receiverOf(current.?.geographicMapCellPosition.?, "getRow").getRow() - 1;
                    while (row < Inheritance.receiverOf(current.?.geographicMapCellPosition.?, "getRow").getRow() + 2) : (row += 1) {
                    if (column > 0 and row > 0 and column < Inheritance.receiver(allBinaryTiledLayer.?, "getColumns").getColumns() and row < Inheritance.receiver(allBinaryTiledLayer.?, "getRows").getRows() and Inheritance.call(geographicMapInterface.?, "isOnMap", .{ Inheritance.call(basicGeographicMapCellPositionFactory.?, "getAt", .{ column, row }) })) {
                        neighbor = Inheritance.upcast(@TypeOf(neighbor), self.costArray[@intCast(column)][@intCast(row)]);
                        if (Inheritance.call(self.closedSet.?, "contains", .{ neighbor })) {
                            continue;
                        }
                        neighborInfo = Inheritance.upcast(@TypeOf(neighborInfo), neighbor.?.pathFindingNodeCostInfoP);
                        calculatedCost = neighborInfo.?.costToEndP + neighborInfo.?.costFromStartP + current.?.pathFindingNodeCostInfoP.?.totalCostP;
                        if (calculatedCost < neighborInfo.?.totalCostP or !Inheritance.call(self.openPriorityQueue.?, "contains", .{ neighbor })) {
                            neighborInfo.?.totalCostP = Inheritance.upcast(@TypeOf(neighborInfo.?.totalCostP), calculatedCost);
                            neighbor.?.parent = Inheritance.upcast(@TypeOf(neighbor.?.parent), current);
                            if (!Inheritance.call(self.openPriorityQueue.?, "contains", .{ neighbor })) {
                                if (Inheritance.call(geographicMapInterface.?, "isOfFourDirections", .{ current.?.geographicMapCellPosition, neighbor.?.geographicMapCellPosition })) {
                                    _ = Inheritance.call(self.openPriorityQueue.?, "add", .{ neighbor });
                                }
                            }
                        }
                    }
                    }
                }
                }
            }
            total += 1;
            if (total > 10) {
                return Inheritance.upcast(?*BasicArrayList, self.basicArrayListUtil.?.getImmutableInstance());
            }
            if (!(!self.openPriorityQueue.?.isEmpty())) break;
        }
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn extractPath(self: *Self, start: ?*GeographicMapCellPosition, currentParameter: ?*PathFindingNodeCost) ?*BasicArrayList {
        var current = currentParameter;
        const path: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        while (!Object.same(current.?.parent, NullUtil.getInstance().?.NULL_OBJECT)) {
            _ = Inheritance.call(path.?, "add", .{ current.?.geographicMapCellPosition });
            current = Inheritance.cast(?*PathFindingNodeCost, current.?.parent);
        }
        _ = Inheritance.call(path.?, "add", .{ start });
        _ = Inheritance.call(self.basicArrayListUtil.?, "reverse", .{ path });
        return path;
    }
};

