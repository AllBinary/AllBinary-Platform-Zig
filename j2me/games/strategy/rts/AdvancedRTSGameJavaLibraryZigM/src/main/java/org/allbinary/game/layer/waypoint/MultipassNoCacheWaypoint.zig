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
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const RTSLayerEvent = @import("org/allbinary/game/layer/RTSLayerEvent.zig").RTSLayerEvent;
const BuildingEventListenerInterface = @import("org/allbinary/game/layer/building/event/BuildingEventListenerInterface.zig").BuildingEventListenerInterface;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const UnitWaypointBehavior = @import("org/allbinary/game/layer/unit/UnitWaypointBehavior.zig").UnitWaypointBehavior;
const PathFindingInfoFactory = @import("org/allbinary/game/media/graphics/geography/map/racetrack/PathFindingInfoFactory.zig").PathFindingInfoFactory;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory.zig").GeographicMapCellTypeFactory;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const CustomMapGenerator = @import("org/allbinary/media/graphics/geography/map/racetrack/CustomMapGenerator.zig").CustomMapGenerator;
const RaceTrackGeographicMap = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap.zig").RaceTrackGeographicMap;
const MultipassState = @import("org/allbinary/media/graphics/geography/pathfinding/MultipassState.zig").MultipassState;
const PathFindingInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo.zig").PathFindingInfo;
const PathGenerator = @import("org/allbinary/media/graphics/geography/pathfinding/PathGenerator.zig").PathGenerator;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const WaypointBase = @import("org/allbinary/game/layer/waypoint/WaypointBase.zig").WaypointBase;

pub const MultipassNoCacheWaypoint = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint";
    base: WaypointBase = undefined,
    logUtil: ?*LogUtil = null,
    ownerLayer: ?*PathFindingLayerInterface = null,
    // Implements BuildingEventListenerInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
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
    }
    

    pub fn releaseCachedPaths(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn getPathFindingInfo(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*PathFindingInfo {
        const startGeographicMapCellPosition: ?*GeographicMapCellPosition = geographicMapCellPosition;
        const endGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self, "getEndGeographicMapCellPosition", .{ startGeographicMapCellPosition }));
        if (endGeographicMapCellPosition == null) {
            return Inheritance.upcast(?*PathFindingInfo, PathFindingInfo.NULL_PATH_FINDING_INFO);
        }
        if (Object.same(startGeographicMapCellPosition, endGeographicMapCellPosition)) {
            if (Inheritance.receiver(self.ownerLayer.?, "shouldHandleStartSameAsEnd").shouldHandleStartSameAsEnd()) {
                return Inheritance.upcast(?*PathFindingInfo, PathFindingInfo.NULL_PATH_FINDING_INFO);
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Start should not be End: "), endGeographicMapCellPosition); break :exception error.Exception; }});
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
        return pathFindingInfo;
    }
    

    // throws Exception
    pub fn getPathsList(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition, pathFindingInfo: ?*PathFindingInfo, multipassState: ?*MultipassState) ?*BasicArrayList {
        _ = geographicMapCellPosition;
        { // try
            if (pathFindingInfo == null) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("pathFindingInfo: "), pathFindingInfo), self, String.literal("getPathsList") });
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
            }
            const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, Inheritance.fieldPointer(self, "allBinaryGameLayerManagerP").*);
            const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(PathGenerator.getInstance().?, "createN", .{ geographicMapInterface, pathFindingInfo, 2, multipassState }));
            if (list != null and !Object.same(list, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance())) {
                if (list.?.size() < 1) {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("Path may have been cleared by clearing caching"); break :exception error.Exception; }});
                }
                return list;
            }
            return Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("getPathsList"), e });
//             return Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
    }
    

    // throws Exception
    pub fn getEndGeographicMapCellPosition(self: *Self, startGeographicMapCellPosition: ?*GeographicMapCellPosition) ?*GeographicMapCellPosition {
        const endList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self.ownerLayer.?, "getEndGeographicMapCellPositionList").getEndGeographicMapCellPositionList());
        var endGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(BasicArrayListUtil.getInstance().?, "getRandom", .{ endList }));
        if (Object.same(startGeographicMapCellPosition, endGeographicMapCellPosition)) {
            {
                var index: i32 = endList.?.size() - 1;
                while (index >= 0) : (index -= 1) {
                endGeographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(endList.?, "get", .{ index }));
                if (!Object.same(startGeographicMapCellPosition, endGeographicMapCellPosition)) {
                    break;
                }
                }
            }
        }
        return endGeographicMapCellPosition;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    // throws Exception
    pub fn onBuildingEvent(self: *Self, event: ?*RTSLayerEvent) void {
        _ = event;
        _ = self;
    }
    

    pub fn reset(self: *Self) void {
        _ = Inheritance.receiverOf(Inheritance.receiver(self, "getConnectedWaypointList").getConnectedWaypointList().?, "clear").clear();
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

