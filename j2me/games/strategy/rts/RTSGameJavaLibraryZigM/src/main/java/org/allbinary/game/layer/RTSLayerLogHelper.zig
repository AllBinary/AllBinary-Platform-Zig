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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const NamedAngle = @import("org/allbinary/math/NamedAngle.zig").NamedAngle;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;

pub const RTSLayerLogHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.RTSLayerLogHelper";
    var instance: ?*RTSLayerLogHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = RTSLayerLogHelper.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*RTSLayerLogHelper {
        return Inheritance.upcast(?*RTSLayerLogHelper, RTSLayerLogHelper.instance);
    }
    

    pub fn setClosestGeographicMapCellHistory(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, pathsList: ?*BasicArrayList) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = pathsList;
        _ = self;
    }
    

    pub fn trackTo(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, nextUnvisitedPathGeographicMapCellPosition: ?*GeographicMapCellPosition, dx: i32, dy: i32, reason: ?*String) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = nextUnvisitedPathGeographicMapCellPosition;
        _ = dx;
        _ = dy;
        _ = reason;
        _ = self;
    }
    

    pub fn turnTo(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, dx: i32, dy: i32, angleInfo: ?*AngleInfo, angle: i32, movementAngle: ?*NamedAngle, evading: bool, targetAngle: i32) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = dx;
        _ = dy;
        _ = angleInfo;
        _ = angle;
        _ = movementAngle;
        _ = evading;
        _ = targetAngle;
        _ = self;
    }
    

    pub fn doneMoving(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn closeEnough(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn movingLeft(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn movingRight(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn movingUp(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn movingDown(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn currentMoveEnded(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn evade(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn rotateLeft(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn rotateRight(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn handle(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, movementAngle: ?*NamedAngle) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = movementAngle;
        _ = self;
    }
    

    pub fn noRotation(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = self;
    }
    

    pub fn notOnPath(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, geographicMapCellHistory: ?*GeographicMapCellHistory, currentGeographicMapCellPosition: ?*GeographicMapCellPosition, pathList: ?*BasicArrayList) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = geographicMapCellHistory;
        _ = currentGeographicMapCellPosition;
        _ = pathList;
        _ = self;
    }
};

