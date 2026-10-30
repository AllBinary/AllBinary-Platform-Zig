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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const PositionStrings = @import("org/allbinary/math/PositionStrings.zig").PositionStrings;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Waypoint2LogHelper = @import("org/allbinary/game/layer/waypoint/Waypoint2LogHelper.zig").Waypoint2LogHelper;

pub const Waypoint2SelectedLogHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper";
    base: Waypoint2LogHelper = undefined,
    logUtil: ?*LogUtil = null,
    commonSeps: ?*CommonSeps = null,
    positionStrings: ?*PositionStrings = null,
    stringUtil: ?*StringUtil = null,
    ENEMY_POSSIBLE_TARGET: ?*String = null,
    CLOSE_RANGE: ?*String = null,
    SENSOR_RANGE: ?*String = null,
    ONLY_TARGETS: ?*String = null,
    SHORTER_THAN_CURRENT_TARGET_DISTANCE: ?*String = null,
    CURRENT_TARGET_DESTROYED: ?*String = null,
    CURRENT_TARGET_NOT_AVAILABLE: ?*String = null,
    PROCESS_POSSIBLE_TARGET: ?*String = null,
    var instanceC: ?*Waypoint2SelectedLogHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = Waypoint2SelectedLogHelper.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.positionStrings = Inheritance.upcast(?*PositionStrings, PositionStrings.getInstance());
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.ENEMY_POSSIBLE_TARGET = String.literal(" Enemy Possible Target: ");
        this.CLOSE_RANGE = String.literal("closeRange: ");
        this.SENSOR_RANGE = String.literal(" sensorRange: ");
        this.ONLY_TARGETS = String.literal(" Only Targets: ");
        this.SHORTER_THAN_CURRENT_TARGET_DISTANCE = String.literal(" isShorterThanCurrentTargetDistance: ");
        this.CURRENT_TARGET_DESTROYED = String.literal(" isCurrentTargetDestroyed: ");
        this.CURRENT_TARGET_NOT_AVAILABLE = String.literal(" isCurrentTargetNotAvailable: ");
        this.PROCESS_POSSIBLE_TARGET = String.literal("selected: processPossibleTarget1");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Waypoint2LogHelper.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*Waypoint2LogHelper {
        return Inheritance.upcast(?*Waypoint2LogHelper, Waypoint2SelectedLogHelper.instanceC);
    }
    

    pub fn initRange(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, closeRange: i32, sensorRange: i32) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.CLOSE_RANGE });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ closeRange });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.SENSOR_RANGE });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ sensorRange });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: initRange") });
    }
    

    pub fn processPossibleTarget(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, waypointBehaviorBase: ?*WaypointBehaviorBase, layerInterface: ?*PathFindingLayerInterface, anotherTargetDistance: i32, isShorterThanCurrentTargetDistance: bool, isCurrentTargetDestroyed: bool) void {
        if (waypointBehaviorBase.?.isWaypointListEmptyOrOnlyTargets() and Inheritance.call(waypointBehaviorBase.?, "isInSensorRange", .{ Inheritance.cast(?*CollidableDestroyableDamageableLayer, layerInterface), anotherTargetDistance })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.ONLY_TARGETS });
            _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ waypointBehaviorBase.?.isWaypointListEmptyOrOnlyTargets() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.SHORTER_THAN_CURRENT_TARGET_DISTANCE });
            _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ isShorterThanCurrentTargetDistance });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.CURRENT_TARGET_DESTROYED });
            _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ isCurrentTargetDestroyed });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.CURRENT_TARGET_NOT_AVAILABLE });
            _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ (waypointBehaviorBase.?.getCurrentTargetLayerInterface() == null) });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.PROCESS_POSSIBLE_TARGET });
        }
    }
    

    pub fn processSetTarget(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, waypointBehaviorBase: ?*WaypointBehaviorBase, layerInterface: ?*PathFindingLayerInterface, anotherTargetDistance: i32) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ waypointBehaviorBase.?.getCurrentTargetingStateString() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.ENEMY_POSSIBLE_TARGET });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(layerInterface.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" anotherTargetDistance: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ anotherTargetDistance });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: processPossibleTarget2") });
    }
    

    pub fn processPossibleTargetCloser(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, waypointBehaviorBase: ?*WaypointBehaviorBase, layerInterface: ?*PathFindingLayerInterface, anotherTargetDistance: i32) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ waypointBehaviorBase.?.getCurrentTargetingStateString() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.ENEMY_POSSIBLE_TARGET });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(layerInterface.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" anotherTargetDistance: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ anotherTargetDistance });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: processPossibleTarget3") });
    }
    

    pub fn setTarget(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, waypointBehaviorBase: ?*WaypointBehaviorBase, layerInterface: ?*PathFindingLayerInterface, anotherTargetDistance: i32) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ waypointBehaviorBase.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" targeting: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(layerInterface.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" at: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ anotherTargetDistance });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" instead of: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ waypointBehaviorBase.?.getCurrentTargetingStateString() });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: setTarget") });
    }
    

    pub fn setTargetPath(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = associatedAdvancedRTSGameLayer;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Target Destroyed"), self, String.literal("selected: setTargetPath") });
    }
    

    pub fn setTargetPathIgnoreNewPath(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, waypointBehaviorBase: ?*WaypointBehaviorBase) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Set Path To Target: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(waypointBehaviorBase.?.getCurrentTargetLayerInterface().?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ waypointBehaviorBase.?.getCurrentTargetLayerInterface() }) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: setTargetPath") });
    }
    

    pub fn processWaypoint(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, waypointBehaviorBase: ?*WaypointBehaviorBase, targetLayer: ?*PathFindingLayerInterface, size: i32) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Size: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ size });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Waypoint: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(targetLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Target: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ waypointBehaviorBase.?.getCurrentTargetLayerInterface() }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" isTrackingWaypoint: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ waypointBehaviorBase.?.isTrackingWaypoint() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" WaypointOverridesAttacking: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ waypointBehaviorBase.?.isWaypointOverridesAttacking() });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: processWaypoint") });
    }
    

    pub fn processWaypointTracked(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, waypointBehaviorBase: ?*WaypointBehaviorBase) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" currentPathGeographicMapCellPosition: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ waypointBehaviorBase.?.getCurrentPathGeographicMapCellPosition() }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" nextUnvisitedPathGeographicMapCellPosition: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ waypointBehaviorBase.?.getNextUnvisitedPathGeographicMapCellPosition() }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Tracked: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ Inheritance.receiverOf(waypointBehaviorBase.?.getCurrentGeographicMapCellHistory().?, "getTracked").getTracked() }) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: processWaypoint") });
    }
    

    pub fn processWaypointTrackedVisit(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Visited: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ geographicMapCellPosition }) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: processWaypoint") });
    }
    

    pub fn processWaypointTrackedWithoutProgress(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, reason: ?*String) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ reason }))), self, String.literal("turnTo") });
    }
    

    pub fn wander(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName(), self, String.literal("wander") });
    }
    

    pub fn targetDestroyed(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" Target Destroyed") }))), self, String.literal("selected: processTargeting") });
    }
    

    pub fn processTargeting(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, dx: i32, dy: i32) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.positionStrings.?.DX_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ dx });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.positionStrings.?.DY_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ dy });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: processTargeting") });
    }
    

    pub fn processTargetingNonWayPoint(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, dx: i32, dy: i32) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Targeting Non Waypoint ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.positionStrings.?.DX_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ dx });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.positionStrings.?.DY_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ dy });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: processTargeting") });
    }
    

    pub fn removeWaypoint(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, unitWaypointBehavior2: ?*WaypointBehaviorBase, waypointLayer: ?*PathFindingLayerInterface, reason: ?*String) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ unitWaypointBehavior2.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" remove: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(waypointLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" because: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ reason });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: removeWaypoint") });
    }
    

    pub fn removeWaypointList(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, unitWaypointBehavior2: ?*WaypointBehaviorBase, list: ?*BasicArrayList) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ unitWaypointBehavior2.?.getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Waypoints: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ list }) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: removeWaypoint") });
    }
    

    pub fn removeWaypointClear(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" Clearing removed waypoint") }))), self, String.literal("selected: removeWaypoint") });
    }
    

    pub fn clearTarget(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" Cleared Target") }))), self, String.literal("selected: clearTarget") });
    }
    

    pub fn addWaypointFromUser(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, advancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Adding Waypoint to Selected: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(advancedRTSGameLayer.?, "getName").getName() });
        if (Inheritance.receiver(advancedRTSGameLayer.?, "getParentLayer").getParentLayer() != null) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" With Parent: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.receiver(advancedRTSGameLayer.?, "getParentLayer").getParentLayer().?, "getName").getName() });
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: onWaypointEvent") });
    }
    

    pub fn targetMovedSoRetarget(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" - target moved so retargeting") }))), self, String.literal("turnTo") });
    }
};

