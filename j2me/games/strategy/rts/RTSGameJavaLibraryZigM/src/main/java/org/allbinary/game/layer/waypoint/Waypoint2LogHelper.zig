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
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

pub const Waypoint2LogHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.Waypoint2LogHelper";
    var instance: ?*Waypoint2LogHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Waypoint2LogHelper.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*Waypoint2LogHelper {
        return Inheritance.upcast(?*Waypoint2LogHelper, Waypoint2LogHelper.instance);
    }
    

    pub fn initRange(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, closeRange: i32, sensorRange: i32) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = closeRange;
        _ = sensorRange;
        _ = self;
    }
    

    pub fn processPossibleTarget(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, unitWaypointBehavior2: ?*WaypointBehaviorBase, layerInterface: ?*PathFindingLayerInterface, anotherTargetDistance: i32, isShorterThanCurrentTargetDistance: bool, isCurrentTargetDestroyed: bool) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = unitWaypointBehavior2;
        _ = layerInterface;
        _ = anotherTargetDistance;
        _ = isShorterThanCurrentTargetDistance;
        _ = isCurrentTargetDestroyed;
        _ = self;
    }
    

    pub fn processSetTarget(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, unitWaypointBehavior2: ?*WaypointBehaviorBase, layerInterface: ?*PathFindingLayerInterface, anotherTargetDistance: i32) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = unitWaypointBehavior2;
        _ = layerInterface;
        _ = anotherTargetDistance;
        _ = self;
    }
    

    pub fn processPossibleTargetCloser(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, unitWaypointBehavior2: ?*WaypointBehaviorBase, layerInterface: ?*PathFindingLayerInterface, anotherTargetDistance: i32) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = unitWaypointBehavior2;
        _ = layerInterface;
        _ = anotherTargetDistance;
        _ = self;
    }
    

    pub fn setTarget(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, unitWaypointBehavior2: ?*WaypointBehaviorBase, layerInterface: ?*PathFindingLayerInterface, anotherTargetDistance: i32) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = unitWaypointBehavior2;
        _ = layerInterface;
        _ = anotherTargetDistance;
        _ = self;
    }
    

    pub fn setTargetPath(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn setTargetPathIgnoreNewPath(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, unitWaypointBehavior2: ?*WaypointBehaviorBase) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = unitWaypointBehavior2;
        _ = self;
    }
    

    pub fn processWaypoint(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, unitWaypointBehavior2: ?*WaypointBehaviorBase, targetLayer: ?*PathFindingLayerInterface, size: i32) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = unitWaypointBehavior2;
        _ = targetLayer;
        _ = size;
        _ = self;
    }
    

    pub fn processWaypointTracked(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, unitWaypointBehavior2: ?*WaypointBehaviorBase) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = unitWaypointBehavior2;
        _ = self;
    }
    

    pub fn processWaypointTrackedVisit(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = geographicMapCellPosition;
        _ = self;
    }
    

    pub fn processWaypointTrackedWithoutProgress(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, reason: ?*String) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = reason;
        _ = self;
    }
    

    pub fn wander(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn targetDestroyed(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn processTargeting(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, dx: i32, dy: i32) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = dx;
        _ = dy;
        _ = self;
    }
    

    pub fn processTargetingNonWayPoint(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, dx: i32, dy: i32) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = dx;
        _ = dy;
        _ = self;
    }
    

    pub fn removeWaypoint(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, unitWaypointBehavior2: ?*WaypointBehaviorBase, waypointLayer: ?*PathFindingLayerInterface, reason: ?*String) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = unitWaypointBehavior2;
        _ = waypointLayer;
        _ = reason;
        _ = self;
    }
    

    pub fn removeWaypointList(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, unitWaypointBehavior2: ?*WaypointBehaviorBase, list: ?*BasicArrayList) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = unitWaypointBehavior2;
        _ = list;
        _ = self;
    }
    

    pub fn removeWaypointClear(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn clearTarget(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn addWaypointFromUser(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, advancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = advancedRTSGameLayer;
        _ = self;
    }
    

    pub fn targetMovedSoRetarget(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
};

