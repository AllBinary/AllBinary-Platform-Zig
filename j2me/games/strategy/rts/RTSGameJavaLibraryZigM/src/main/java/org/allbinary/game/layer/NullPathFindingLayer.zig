// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CaptionAnimationHelperBase = @import("org/allbinary/animation/caption/CaptionAnimationHelperBase.zig").CaptionAnimationHelperBase;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const Waypoint2LogHelper = @import("org/allbinary/game/layer/waypoint/Waypoint2LogHelper.zig").Waypoint2LogHelper;
const WaypointLogHelper = @import("org/allbinary/game/layer/waypoint/WaypointLogHelper.zig").WaypointLogHelper;
const WaypointRunnableLogHelper = @import("org/allbinary/game/layer/waypoint/WaypointRunnableLogHelper.zig").WaypointRunnableLogHelper;
const TrackingEvent = @import("org/allbinary/game/tracking/TrackingEvent.zig").TrackingEvent;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const GeographicMapCellPositionAreaBase = @import("org/allbinary/game/layer/GeographicMapCellPositionAreaBase.zig").GeographicMapCellPositionAreaBase;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const RTSLayer2LogHelper = @import("org/allbinary/game/layer/RTSLayer2LogHelper.zig").RTSLayer2LogHelper;
const SelectionHudPaintable = @import("org/allbinary/game/layer/SelectionHudPaintable.zig").SelectionHudPaintable;
const WaypointBehaviorBase = @import("org/allbinary/game/layer/WaypointBehaviorBase.zig").WaypointBehaviorBase;

pub const NullPathFindingLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.NullPathFindingLayer";
    pub const java_interfaces = .{ PathFindingLayerInterface };
    // Implements PathFindingLayerInterface
    pub var NULL_PATH_FINDING_LAYER: ?*NullPathFindingLayer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_PATH_FINDING_LAYER = NullPathFindingLayer.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getEndGeographicMapCellPositionList(self: *Self) ?*BasicArrayList {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn shouldHandleStartSameAsEnd(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getGeographicMapCellPositionArea(self: *Self) ?*GeographicMapCellPositionAreaBase {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getHudPaintable(self: *Self) ?*SelectionHudPaintable {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn handleCost(self: *Self, ownerLayer: ?*PathFindingLayerInterface) void {
        _ = ownerLayer;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getParentLayer(self: *Self) ?*PathFindingLayerInterface {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getRTSLayer2LogHelper(self: *Self) ?*RTSLayer2LogHelper {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn setTarget(self: *Self, targetGameLayer: ?*PathFindingLayerInterface) void {
        _ = targetGameLayer;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn init(self: *Self, geographicMapCellHistory: ?*GeographicMapCellHistory, geographicMapCellPositionBasicArrayList: ?*BasicArrayList) void {
        _ = geographicMapCellHistory;
        _ = geographicMapCellPositionBasicArrayList;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getMoveOutOfBuildAreaPath(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*BasicArrayList {
        _ = geographicMapCellPosition;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn setClosestGeographicMapCellHistory(self: *Self, pathsList: ?*BasicArrayList) void {
        _ = pathsList;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn teleportTo(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        _ = geographicMapCellPosition;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn setLoad(self: *Self, resource: i32) void {
        _ = resource;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getSurroundingGeographicMapCellPositionList(self: *Self) ?*BasicArrayList {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn isSelected(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn shouldAddWaypointFromBuilding(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn isShowMoreCaptionStates(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn trackTo(self: *Self, reason: ?*String) void {
        _ = reason;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn trackToDXY(self: *Self, dx: i32, dy: i32) void {
        _ = dx;
        _ = dy;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn buildingChase(self: *Self, allbinaryLayer: ?*AllBinaryLayer, cellPosition: ?*GeographicMapCellPosition) bool {
        _ = allbinaryLayer;
        _ = cellPosition;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getTrackingEvent(self: *Self) ?*TrackingEvent {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn allStop(self: *Self) void {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn isWaypointListEmptyOrOnlyTargets(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getCurrentGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getTopLeftGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getCaptionAnimationHelper(self: *Self) ?*CaptionAnimationHelperBase {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getWaypointBehavior(self: *Self) ?*WaypointBehaviorBase {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getWaypointLogHelper(self: *Self) ?*WaypointLogHelper {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getWaypoint2LogHelper(self: *Self) ?*Waypoint2LogHelper {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getWaypointRunnableLogHelper(self: *Self) ?*WaypointRunnableLogHelper {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getGroupInterface(self: *Self) []?*Group {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn isDestroyed(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getSourceId(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

