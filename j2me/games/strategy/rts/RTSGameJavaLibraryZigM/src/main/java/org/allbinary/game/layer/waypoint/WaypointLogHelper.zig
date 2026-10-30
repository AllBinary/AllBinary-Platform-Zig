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
// package org.allbinary.game.layer.waypoint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const WaypointBehaviorBase = @import("org/allbinary/game/layer/WaypointBehaviorBase.zig").WaypointBehaviorBase;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

pub const WaypointLogHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.WaypointLogHelper";
    var instance: ?*WaypointLogHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = WaypointLogHelper.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*WaypointLogHelper {
        return Inheritance.upcast(?*WaypointLogHelper, WaypointLogHelper.instance);
    }
    

    pub fn onWaypointEvent(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, advancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = advancedRTSGameLayer;
        _ = self;
    }
    

    pub fn addWaypointFromBuilding(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, advancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = advancedRTSGameLayer;
        _ = self;
    }
    

    pub fn addWaypointFromBuildingList(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, advancedRTSGameLayer: ?*PathFindingLayerInterface, list: ?*BasicArrayList) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = advancedRTSGameLayer;
        _ = list;
        _ = self;
    }
    

    pub fn insertWaypoint(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, index: i32, rtsLayer: ?*CollidableDestroyableDamageableLayer, waypointName: ?*String) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = index;
        _ = rtsLayer;
        _ = waypointName;
        _ = self;
    }
    

    pub fn insertWaypointList(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, index: i32, rtsLayer: ?*CollidableDestroyableDamageableLayer, waypointName: ?*String, list: ?*BasicArrayList) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = index;
        _ = rtsLayer;
        _ = waypointName;
        _ = list;
        _ = self;
    }
    

    pub fn setRandomGeographicMapCellHistoryList(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, pathsList: ?*BasicArrayList) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = pathsList;
        _ = self;
    }
    

    pub fn moveAwayFromBuilding(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn needToMove(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, unitWaypointBehavior: ?*WaypointBehaviorBase) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = unitWaypointBehavior;
        _ = self;
    }
    

    pub fn setRandomGeographicMapCellHistory(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn setCurrentPathGeographicMapCellPosition(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, existingCurrentPathGeographicMapCellPosition: ?*GeographicMapCellPosition, currentPathGeographicMapCellPosition: ?*GeographicMapCellPosition) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = existingCurrentPathGeographicMapCellPosition;
        _ = currentPathGeographicMapCellPosition;
        _ = self;
    }
    

    pub fn setNextUnvisitedPathGeographicMapCellPosition(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, existingNextUnvisitedPathGeographicMapCellPosition: ?*GeographicMapCellPosition, nextUnvisitedPathGeographicMapCellPosition: ?*GeographicMapCellPosition) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = existingNextUnvisitedPathGeographicMapCellPosition;
        _ = nextUnvisitedPathGeographicMapCellPosition;
        _ = self;
    }
};

