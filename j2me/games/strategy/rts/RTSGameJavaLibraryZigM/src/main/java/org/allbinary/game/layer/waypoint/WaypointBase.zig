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
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventListenerInterface = @import("org/allbinary/logic/util/event/EventListenerInterface.zig").EventListenerInterface;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const NoSound = @import("org/allbinary/media/audio/NoSound.zig").NoSound;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const MultipassState = @import("org/allbinary/media/graphics/geography/pathfinding/MultipassState.zig").MultipassState;
const PathFindingInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo.zig").PathFindingInfo;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const WaypointBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.WaypointBase";
    connectedWaypointList: ?*BasicArrayList = null,
    sound: ?*Sound = null,
    allBinaryGameLayerManagerP: ?*AllBinaryGameLayerManager = null,
    // Implements EventListenerInterface
    pub var NULL_WAYPOINT_BASE: ?*WaypointBase = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_WAYPOINT_BASE = Inheritance.callStatic(WaypointBase, "create1", .{ NoSound.getInstance() });
    }

    fn initFields(this: *Self) void {
        this.connectedWaypointList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        
        this.allBinaryGameLayerManagerP = Inheritance.upcast(?*AllBinaryGameLayerManager, AllBinaryGameLayerManager.getNullInstance());
    }
    

    pub fn create1(sound: ?*Sound) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.sound = sound;
        return this;
    }
    

    pub fn getSound(self: *Self) ?*Sound {
        return self.sound;
    }
    

    // throws Exception
    pub fn setAllBinaryGameLayerManager(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) void {
        self.allBinaryGameLayerManagerP = allBinaryGameLayerManager;
    }
    

    pub fn getConnectedWaypointList(self: *Self) ?*BasicArrayList {
        return self.connectedWaypointList;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    // throws Exception
    pub fn getPathFindingInfo(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*PathFindingInfo {
        _ = geographicMapCellPosition;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getPathsList(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition, pathFindingInfo: ?*PathFindingInfo, multipassState: ?*MultipassState) ?*BasicArrayList {
        _ = geographicMapCellPosition;
        _ = pathFindingInfo;
        _ = multipassState;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getPathsListRunnable(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*BasicArrayList {
        _ = geographicMapCellPosition;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getPathsListFromCacheOnly(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*BasicArrayList {
        _ = geographicMapCellPosition;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn visit(self: *Self, unitLayer: ?*PathFindingLayerInterface) void {
        _ = unitLayer;
        _ = self;
    }
    

    pub fn reset(self: *Self) void {
        _ = self;
    }
    

    pub fn getType(self: *Self) i32 {
        _ = self;
        return 0;
    }
};

