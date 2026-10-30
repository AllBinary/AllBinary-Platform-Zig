// 
// AllBinary Open License Version 1 
// Copyright (c) 2003 AllBinary 
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
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const WaypointBase = @import("org/allbinary/game/layer/waypoint/WaypointBase.zig").WaypointBase;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const TickableInterface = @import("org/allbinary/game/tick/TickableInterface.zig").TickableInterface;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;

pub const WaypointBehaviorBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.WaypointBehaviorBase";
    ownedWaypointList: ?*BasicArrayList = null,
    waypointOverridesAttacking: bool = false,
    waypoint: ?*WaypointBase = null,
    steeringVisitorList: ?*BasicArrayList = null,
    // Implements TickableInterface

    fn initFields(this: *Self) void {
        
        this.waypointOverridesAttacking = true;
        this.waypoint = Inheritance.upcast(?*WaypointBase, WaypointBase.NULL_WAYPOINT_BASE);
        this.steeringVisitorList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.ownedWaypointList = Inheritance.upcast(@TypeOf(this.ownedWaypointList), Inheritance.callStatic(BasicArrayListS, "create1", .{ 1 }));
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name));
    }
    

    pub fn isRunning(self: *Self) bool {
        _ = self;
        return false;
    }
    

    // throws Exception
    pub fn processTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        _ = self;
    }
    

    pub fn getOwnedWaypointList(self: *Self) ?*BasicArrayList {
        return self.ownedWaypointList;
    }
    

    pub fn getWaypoint(self: *Self) ?*WaypointBase {
        return self.waypoint;
    }
    

    pub fn setWaypoint(self: *Self, waypoint: ?*WaypointBase) void {
        self.waypoint = waypoint;
    }
    

    pub fn getSteeringVisitorList(self: *Self) ?*BasicArrayList {
        return self.steeringVisitorList;
    }
    

    pub fn getMovementLogicAsString(self: *Self) ?*String {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn isWaypointListEmptyOrOnlyTargets(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn isInSensorRange(self: *Self, layerInterface: ?*CollidableDestroyableDamageableLayer, targetDistance: i32) bool {
        _ = layerInterface;
        _ = targetDistance;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getCurrentTargetLayerInterface(self: *Self) ?*CollidableDestroyableDamageableLayer {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getCurrentTargetingStateString(self: *Self) ?*String {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn isTrackingWaypoint(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getCurrentPathGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getCurrentGeographicMapCellHistory(self: *Self) ?*GeographicMapCellHistory {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn isWaypointOverridesAttacking(self: *Self) bool {
        return self.waypointOverridesAttacking;
    }
    

    pub fn getNextUnvisitedPathGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn needToMove(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn setWaypointPathsList(self: *Self, waypointPathsList: ?*BasicArrayList) void {
        _ = waypointPathsList;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getWaypointPathsList(self: *Self) ?*BasicArrayList {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn setTarget(self: *Self, layerInterface: ?*PathFindingLayerInterface) void {
        _ = layerInterface;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn setTargetWithDistance(self: *Self, layerInterface: ?*PathFindingLayerInterface, anotherTargetDistance: i32) void {
        _ = layerInterface;
        _ = anotherTargetDistance;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn clearTarget(self: *Self) void {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn updatePathOnTargetMove(self: *Self, reason: ?*String) void {
        _ = reason;
        _ = self;
    }
};

