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
// package org.allbinary.game.layer.waypoint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const RTSLayerEvent = @import("org/allbinary/game/layer/RTSLayerEvent.zig").RTSLayerEvent;
const BuildingEventListenerInterface = @import("org/allbinary/game/layer/building/event/BuildingEventListenerInterface.zig").BuildingEventListenerInterface;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const UnitWaypointBehavior = @import("org/allbinary/game/layer/unit/UnitWaypointBehavior.zig").UnitWaypointBehavior;
const PathFindingInfoFactory = @import("org/allbinary/game/media/graphics/geography/map/racetrack/PathFindingInfoFactory.zig").PathFindingInfoFactory;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory.zig").GeographicMapCellTypeFactory;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const CustomMapGenerator = @import("org/allbinary/media/graphics/geography/map/racetrack/CustomMapGenerator.zig").CustomMapGenerator;
const RaceTrackGeographicMap = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap.zig").RaceTrackGeographicMap;
const BasicGeographicMapExtractedPathsCacheFactory = @import("org/allbinary/media/graphics/geography/pathfinding/BasicGeographicMapExtractedPathsCacheFactory.zig").BasicGeographicMapExtractedPathsCacheFactory;
const PathFindingInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo.zig").PathFindingInfo;
const PathGenerator = @import("org/allbinary/media/graphics/geography/pathfinding/PathGenerator.zig").PathGenerator;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const WaypointBase = @import("org/allbinary/game/layer/waypoint/WaypointBase.zig").WaypointBase;

pub const Waypoint = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.Waypoint";
    base: WaypointBase = undefined,
    logUtil: ?*LogUtil = null,
    basicArrayListUtil: ?*BasicArrayListUtil = null,
    ownerLayer: ?*PathFindingLayerInterface = null,
    endList: ?*BasicArrayList = null,
    paths: [][]?*BasicArrayList = &.{},
    // Implements BuildingEventListenerInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.basicArrayListUtil = Inheritance.upcast(?*BasicArrayListUtil, BasicArrayListUtil.getInstance());
        
        this.endList = Inheritance.upcast(?*BasicArrayList, this.basicArrayListUtil.?.getImmutableInstance());
        this.paths = this.basicArrayListUtil.?.NULL_ARRAY_OF_ARRAY;
    }
    

    pub fn create2(ownerLayer: ?*PathFindingLayerInterface, sound: ?*Sound) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(WaypointBase, "create1", .{ sound }).*;
        this.initFields();
        this.ownerLayer = ownerLayer;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn setAllBinaryGameLayerManager(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) void {
        _ = Inheritance.call(&self.base, "setAllBinaryGameLayerManager", .{ allBinaryGameLayerManager });
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, allBinaryGameLayerManager);
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        const tiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        if (!Object.same(self.paths, self.basicArrayListUtil.?.NULL_ARRAY_OF_ARRAY)) {
            std.debug.panic("{any}", .{error.RuntimeException});
        }
        self.endList = Inheritance.upcast(@TypeOf(self.endList), Inheritance.receiver(self.ownerLayer.?, "getEndGeographicMapCellPositionList").getEndGeographicMapCellPositionList());
        self.paths = Inheritance.upcast(@TypeOf(self.paths), array_N67173: { const array_N67173_array = allocator.alloc([]?*BasicArrayList, @intCast(Inheritance.receiver(tiledLayer.?, "getColumns").getColumns())) catch unreachable; for (array_N67173_array) |*array_N67173_row| { array_N67173_row.* = allocator.alloc(?*BasicArrayList, @intCast(Inheritance.receiver(tiledLayer.?, "getRows").getRows())) catch unreachable; @memset(array_N67173_row.*, null); } break :array_N67173 array_N67173_array; });
        _ = self.clearPaths();
    }
    

    pub fn releaseCachedPaths(self: *Self) void {
        {
            var columnIndex: i32 = @as(i32, @intCast(self.paths.len));
            while (value_N67558: { columnIndex -= 1; break :value_N67558 columnIndex; } >= 0) {
            {
                var rowIndex: i32 = @as(i32, @intCast(self.paths.len));
                while (value_N67492: { rowIndex -= 1; break :value_N67492 rowIndex; } >= 0) {
                const pathsList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.paths[@intCast(columnIndex)][@intCast(rowIndex)]);
                if (!Object.same(pathsList, self.basicArrayListUtil.?.getImmutableInstance())) {
                    _ = Inheritance.call(BasicGeographicMapExtractedPathsCacheFactory.getInstance().?, "release", .{ pathsList });
                }
                }
            }
            }
        }
    }
    

    // throws Exception
    pub fn getPathsListFromCacheOnly(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, self.paths[@intCast(Inheritance.receiver(geographicMapCellPosition.?, "getColumn").getColumn())][@intCast(Inheritance.receiver(geographicMapCellPosition.?, "getRow").getRow())]);
    }
    

    // throws Exception
    pub fn getPathsListRunnable(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*BasicArrayList {
        var pathsList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.paths[@intCast(Inheritance.receiver(geographicMapCellPosition.?, "getColumn").getColumn())][@intCast(Inheritance.receiver(geographicMapCellPosition.?, "getRow").getRow())]);
        if (Object.same(pathsList, self.basicArrayListUtil.?.getImmutableInstance())) {
            pathsList = Inheritance.upcast(@TypeOf(pathsList), Inheritance.call(self, "createPaths", .{ geographicMapCellPosition }));
            self.paths[@intCast(Inheritance.receiver(geographicMapCellPosition.?, "getColumn").getColumn())][@intCast(Inheritance.receiver(geographicMapCellPosition.?, "getRow").getRow())] = Inheritance.upcast(@TypeOf(self.paths[@intCast(Inheritance.receiver(geographicMapCellPosition.?, "getColumn").getColumn())][@intCast(Inheritance.receiver(geographicMapCellPosition.?, "getRow").getRow())]), pathsList);
        }
        return pathsList;
    }
    

    pub fn getEndGeographicMapCellPosition(self: *Self, startGeographicMapCellPosition: ?*GeographicMapCellPosition) ?*GeographicMapCellPosition {
        var endGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(self.basicArrayListUtil.?, "getRandom", .{ self.endList }));
        if (Object.same(startGeographicMapCellPosition, endGeographicMapCellPosition)) {
            {
                var index: i32 = self.endList.?.size() - 1;
                while (index >= 0) : (index -= 1) {
                endGeographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(self.endList.?, "get", .{ index }));
                if (!Object.same(startGeographicMapCellPosition, endGeographicMapCellPosition)) {
                    break;
                }
                }
            }
        }
        return endGeographicMapCellPosition;
    }
    

    // throws Exception
    pub fn createPaths(self: *Self, startGeographicMapCellPosition: ?*GeographicMapCellPosition) ?*BasicArrayList {
        if (self.endList.?.size() == 0) {
            return Inheritance.upcast(?*BasicArrayList, self.basicArrayListUtil.?.getImmutableInstance());
        }
        const endGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self, "getEndGeographicMapCellPosition", .{ startGeographicMapCellPosition }));
        if (endGeographicMapCellPosition == null) {
            return Inheritance.upcast(?*BasicArrayList, self.basicArrayListUtil.?.getImmutableInstance());
        }
        if (Object.same(startGeographicMapCellPosition, endGeographicMapCellPosition)) {
            if (Inheritance.receiver(self.ownerLayer.?, "shouldHandleStartSameAsEnd").shouldHandleStartSameAsEnd()) {
                return Inheritance.upcast(?*BasicArrayList, self.basicArrayListUtil.?.getImmutableInstance());
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Start should not be End: "), self.endList.?.size()); break :exception error.Exception; }});
            }
        }
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, Inheritance.fieldPointer(self, "allBinaryGameLayerManagerP").*);
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        const raceTrackGeographicMap: ?*RaceTrackGeographicMap = Inheritance.cast(?*RaceTrackGeographicMap, geographicMapInterface);
        const raceTrackGeographicMapCellTypeFactory: ?*GeographicMapCellTypeFactory = Inheritance.upcast(?*GeographicMapCellTypeFactory, Inheritance.receiver(raceTrackGeographicMap.?, "getGeographicMapCellTypeFactory").getGeographicMapCellTypeFactory());
        const customMapGenerator: ?*CustomMapGenerator = Inheritance.cast(?*CustomMapGenerator, Inheritance.receiver(raceTrackGeographicMap.?, "getCustomMapGenerator").getCustomMapGenerator());
        _ = Inheritance.receiver(customMapGenerator.?, "copyMapIntoCustomMap").copyMapIntoCustomMap();
        const customMapArray: [][]i32 = Inheritance.receiver(customMapGenerator.?, "getCustomMapArray").getCustomMapArray();
        customMapArray[@intCast(Inheritance.receiver(startGeographicMapCellPosition.?, "getRow").getRow())][@intCast(Inheritance.receiver(startGeographicMapCellPosition.?, "getColumn").getColumn())] = Inheritance.upcast(@TypeOf(customMapArray[@intCast(Inheritance.receiver(startGeographicMapCellPosition.?, "getRow").getRow())][@intCast(Inheritance.receiver(startGeographicMapCellPosition.?, "getColumn").getColumn())]), raceTrackGeographicMapCellTypeFactory.?.getStartType());
        customMapArray[@intCast(Inheritance.receiver(endGeographicMapCellPosition.?, "getRow").getRow())][@intCast(Inheritance.receiver(endGeographicMapCellPosition.?, "getColumn").getColumn())] = Inheritance.upcast(@TypeOf(customMapArray[@intCast(Inheritance.receiver(endGeographicMapCellPosition.?, "getRow").getRow())][@intCast(Inheritance.receiver(endGeographicMapCellPosition.?, "getColumn").getColumn())]), raceTrackGeographicMapCellTypeFactory.?.getEndType());
        const pathFindingInfo: ?*PathFindingInfo = Inheritance.upcast(?*PathFindingInfo, Inheritance.call(PathFindingInfoFactory.getInstance().?, "getInstancePathFindingInfo", .{ raceTrackGeographicMap, customMapArray }));
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(PathGenerator.getInstance().?, "getInstanceNoCache", .{ geographicMapInterface, pathFindingInfo, 2 }));
        if (list.?.size() < 1) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Path may have been cleared by clearing caching"); break :exception error.Exception; }});
        }
        return list;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    // throws Exception
    pub fn onBuildingEvent(self: *Self, event: ?*RTSLayerEvent) void {
        _ = event;
        _ = self.clearPaths();
    }
    

    pub fn clearPaths(self: *Self) void {
        {
            var columnIndex: i32 = @as(i32, @intCast(self.paths.len));
            while (value_N69969: { columnIndex -= 1; break :value_N69969 columnIndex; } >= 0) {
            {
                var rowIndex: i32 = @as(i32, @intCast(self.paths.len));
                while (value_N69903: { rowIndex -= 1; break :value_N69903 rowIndex; } >= 0) {
                self.paths[@intCast(columnIndex)][@intCast(rowIndex)] = Inheritance.upcast(@TypeOf(self.paths[@intCast(columnIndex)][@intCast(rowIndex)]), self.basicArrayListUtil.?.getImmutableInstance());
                }
            }
            }
        }
    }
    

    pub fn reset(self: *Self) void {
        _ = Inheritance.receiverOf(Inheritance.receiver(self, "getConnectedWaypointList").getConnectedWaypointList().?, "clear").clear();
        _ = self.releaseCachedPaths();
    }
    

    // throws Exception
    pub fn visit(self: *Self, unitLayer: ?*PathFindingLayerInterface) void {
        if (!Object.same(Inheritance.receiver(unitLayer.?, "getGroupInterface").getGroupInterface()[@intCast(0)], Inheritance.receiver(self.ownerLayer.?, "getGroupInterface").getGroupInterface()[@intCast(0)])) {
            return;
        }
        const size: i32 = Inheritance.receiverOf(Inheritance.receiver(self, "getConnectedWaypointList").getConnectedWaypointList().?, "size").size();
        if (size > 0) {
            const unitWaypointBehavior: ?*UnitWaypointBehavior = Inheritance.cast(?*UnitWaypointBehavior, Inheritance.receiver(unitLayer.?, "getWaypointBehavior").getWaypointBehavior());
            while (Inheritance.receiverOf(Inheritance.receiver(self, "getConnectedWaypointList").getConnectedWaypointList().?, "size").size() > 0) {
                const rtsLayer: ?*CollidableDestroyableDamageableLayer = Inheritance.cast(?*CollidableDestroyableDamageableLayer, Inheritance.call(Inheritance.receiver(self, "getConnectedWaypointList").getConnectedWaypointList().?, "get", .{ 0 }));
                if (Inheritance.receiver(rtsLayer.?, "isDestroyed").isDestroyed()) {
                    _ = Inheritance.call(Inheritance.receiver(self, "getConnectedWaypointList").getConnectedWaypointList().?, "remove", .{ rtsLayer });
                } else {
                    _ = Inheritance.call(unitLayer.?, "handleCost", .{ self.ownerLayer });
                    _ = Inheritance.call(unitWaypointBehavior.?, "insertWaypoint", .{ 0, rtsLayer });
                    break;
                }
            }
        }
    }
};

