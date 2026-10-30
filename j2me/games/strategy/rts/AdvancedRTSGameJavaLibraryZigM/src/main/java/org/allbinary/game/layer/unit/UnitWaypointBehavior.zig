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
// package org.allbinary.game.layer.unit

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PrimaryWaypointHelper = @import("org/allbinary/game/input/form/PrimaryWaypointHelper.zig").PrimaryWaypointHelper;
const AdvancedRTSGameLayer = @import("org/allbinary/game/layer/AdvancedRTSGameLayer.zig").AdvancedRTSGameLayer;
const RTSLayerEvent = @import("org/allbinary/game/layer/RTSLayerEvent.zig").RTSLayerEvent;
const SensorAction = @import("org/allbinary/game/layer/SensorAction.zig").SensorAction;
const SensorActionFactory = @import("org/allbinary/game/layer/SensorActionFactory.zig").SensorActionFactory;
const WaypointBehaviorBase = @import("org/allbinary/game/layer/WaypointBehaviorBase.zig").WaypointBehaviorBase;
const BuildingLayer = @import("org/allbinary/game/layer/building/BuildingLayer.zig").BuildingLayer;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const WaypointEventListenerInterface = @import("org/allbinary/game/layer/waypoint/event/WaypointEventListenerInterface.zig").WaypointEventListenerInterface;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const SimpleGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory.zig").SimpleGeographicMapCellPositionFactory;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const UnitLayer = @import("org/allbinary/game/layer/unit/UnitLayer.zig").UnitLayer;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const UnitWaypointBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.unit.UnitWaypointBehavior";
    base: WaypointBehaviorBase = undefined,
    commonSeps: ?*CommonSeps = null,
    longWeaponRange: i32 = 0,
    sensorAction: ?*SensorAction = null,
    completeTimeDelayHelper: ?*TimeDelayHelper = null,
    currentGeographicMapCellHistoryP: ?*GeographicMapCellHistory = null,
    lastPathGeographicMapCellPosition: ?*GeographicMapCellPosition = null,
    currentPathGeographicMapCellPosition: ?*GeographicMapCellPosition = null,
    FAKE_WAYPOINT_LAYER: ?*CollidableDestroyableDamageableLayer = null,
    targetList: ?*BasicArrayList = null,
    possibleTargetList: ?*BasicArrayList = null,
    associatedAdvancedRTSGameLayer: ?*UnitLayer = null,
    moving: bool = false,
    movingFromStopped: bool = false,
    waypointPathsListP: ?*BasicArrayList = null,
    currentTargetDistance: i32 = 0,
    currentTargetLayerInterfaceP: ?*CollidableDestroyableDamageableLayer = null,
    trackingWaypoint: bool = false,
    repeatedToLong: ?*TimeDelayHelper = null,
    // Implements WaypointEventListenerInterface
    const PATHING: ?*String = String.literal("Pathing");

    fn initFields(this: *Self) void {
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.longWeaponRange = 0;
        this.sensorAction = Inheritance.upcast(?*SensorAction, SensorActionFactory.getInstance().?.ATTACK);
        
        
        this.lastPathGeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        this.currentPathGeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        
        
        
        
        this.moving = false;
        this.movingFromStopped = false;
        this.waypointPathsListP = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
        this.currentTargetDistance = @as(i32, std.math.maxInt(i32));
        this.currentTargetLayerInterfaceP = Inheritance.upcast(?*CollidableDestroyableDamageableLayer, CollidableDestroyableDamageableLayer.getNullInstance());
        this.trackingWaypoint = false;
        this.repeatedToLong = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 22000 });
    }
    

    pub fn create2(associatedAdvancedRTSGameLayer: ?*UnitLayer, fakeWaypoint: ?*CollidableDestroyableDamageableLayer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = WaypointBehaviorBase.create().*;
        this.initFields();
        this.associatedAdvancedRTSGameLayer = associatedAdvancedRTSGameLayer;
        this.completeTimeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 30000 });
        this.targetList = Inheritance.upcast(@TypeOf(this.targetList), BasicArrayListD.create());
        this.possibleTargetList = Inheritance.upcast(@TypeOf(this.possibleTargetList), BasicArrayListD.create());
        _ = Inheritance.call(this, "setWaypointPathsList", .{ Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance() });
        this.currentGeographicMapCellHistoryP = GeographicMapCellHistory.create();
        this.FAKE_WAYPOINT_LAYER = fakeWaypoint;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initRange(self: *Self, weaponRange: i32) void {
        self.longWeaponRange = @divTrunc(weaponRange, 2);
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    // throws Exception
    pub fn onWaypointEvent(self: *Self, event: ?*RTSLayerEvent) void {
        const advancedRTSGameLayer: ?*AdvancedRTSGameLayer = Inheritance.cast(?*AdvancedRTSGameLayer, Inheritance.receiver(event.?, "getRtsLayer").getRtsLayer());
        _ = Inheritance.call(self.associatedAdvancedRTSGameLayer.?.waypointLogHelperP.?, "onWaypointEvent", .{ self.associatedAdvancedRTSGameLayer, advancedRTSGameLayer });
        if (Inheritance.receiver(self.associatedAdvancedRTSGameLayer.?, "isSelected").isSelected()) {
            _ = Inheritance.call(self, "addWaypointFromUser", .{ advancedRTSGameLayer });
        } else if (Inheritance.receiver(advancedRTSGameLayer.?, "shouldAddWaypointFromBuilding").shouldAddWaypointFromBuilding()) {
            _ = Inheritance.call(self, "addWaypointFromBuilding", .{ advancedRTSGameLayer });
        }
    }
    

    // throws Exception
    pub fn addWaypointFromUser(self: *Self, advancedRTSGameLayer: ?*AdvancedRTSGameLayer) void {
        _ = advancedRTSGameLayer;
        _ = self;
    }
    

    // throws Exception
    pub fn addWaypointFromBuilding(self: *Self, advancedRTSGameLayer: ?*AdvancedRTSGameLayer) void {
        if (Object.same(advancedRTSGameLayer, Inheritance.receiverOf(PrimaryWaypointHelper.getInstance().?, "getWaypointLayer").getWaypointLayer()) or Object.same(Inheritance.receiver(advancedRTSGameLayer.?, "getParentLayer").getParentLayer(), Inheritance.receiver(self.associatedAdvancedRTSGameLayer.?, "getParentLayer").getParentLayer())) {
            if (!Inheritance.call(self.targetList.?, "contains", .{ advancedRTSGameLayer })) {
                _ = Inheritance.call(self.associatedAdvancedRTSGameLayer.?.waypointLogHelperP.?, "addWaypointFromBuilding", .{ self.associatedAdvancedRTSGameLayer, advancedRTSGameLayer });
                if (Inheritance.receiver(advancedRTSGameLayer.?, "isDestroyed").isDestroyed()) {
                    std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Trying to add a dead: "), advancedRTSGameLayer); break :exception error.Exception; }});
                }
                _ = Inheritance.call(self.targetList.?, "add", .{ advancedRTSGameLayer });
                _ = Inheritance.call(self.associatedAdvancedRTSGameLayer.?.waypointLogHelperP.?, "addWaypointFromBuildingList", .{ self.associatedAdvancedRTSGameLayer, advancedRTSGameLayer, self.targetList });
            }
        }
    }
    

    pub fn isWaypointListEmptyOrOnlyTargets(self: *Self) bool {
        _ = self;
        return false;
    }
    

    // throws Exception
    pub fn insertWaypoint(self: *Self, index: i32, rtsLayer: ?*CollidableDestroyableDamageableLayer) bool {
        if (Inheritance.call(self, "canInsertWaypoint", .{ index, rtsLayer })) {
            _ = Inheritance.call(self.associatedAdvancedRTSGameLayer.?.waypointLogHelperP.?, "insertWaypoint", .{ self.associatedAdvancedRTSGameLayer, index, rtsLayer, Inheritance.receiver(self, "getName").getName() });
            if (Inheritance.receiver(rtsLayer.?, "isDestroyed").isDestroyed()) {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Trying to add a dead: "), rtsLayer); break :exception error.Exception; }});
            }
            _ = Inheritance.call(self.targetList.?, "addAt", .{ index, rtsLayer });
            _ = Inheritance.call(self.associatedAdvancedRTSGameLayer.?.waypointLogHelperP.?, "insertWaypointList", .{ self.associatedAdvancedRTSGameLayer, index, rtsLayer, Inheritance.receiver(self, "getName").getName(), self.targetList });
            return true;
        }
        return false;
    }
    

    pub fn move(self: *Self) void {
        if (self.isMoving()) {
            _ = Inheritance.call(self, "setMovingFromStopped", .{ false });
        } else {
            _ = Inheritance.call(self, "setMovingFromStopped", .{ true });
        }
        _ = Inheritance.call(self, "setMoving", .{ false });
    }
    

    // throws Exception
    pub fn setRandomGeographicMapCellHistory(self: *Self, pathsList: ?*BasicArrayList) void {
        const size: i32 = pathsList.?.size();
        _ = Inheritance.call(self.associatedAdvancedRTSGameLayer.?.waypointLogHelperP.?, "setRandomGeographicMapCellHistoryList", .{ self.associatedAdvancedRTSGameLayer, pathsList });
        if (size > 0) {
            const geographicMapCellPositionBasicArrayList: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, Inheritance.call(BasicArrayListUtil.getInstance().?, "getRandom", .{ pathsList }));
            _ = Inheritance.call(self, "setGeographicMapCellHistoryPath", .{ geographicMapCellPositionBasicArrayList });
        }
    }
    

    // throws Exception
    pub fn setGeographicMapCellHistoryPath(self: *Self, geographicMapCellPositionBasicArrayList: ?*BasicArrayList) void {
        self.lastPathGeographicMapCellPosition = Inheritance.upcast(@TypeOf(self.lastPathGeographicMapCellPosition), SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        if (self.associatedAdvancedRTSGameLayer.?.showMoreCaptionStates) {
            _ = Inheritance.call(Inheritance.receiver(self.associatedAdvancedRTSGameLayer.?, "getCaptionAnimationHelper").getCaptionAnimationHelper().?, "update", .{ UnitWaypointBehavior.PATHING, BasicColorFactory.getInstance().?.GREEN });
        }
        _ = self.currentGeographicMapCellHistoryP.?.init();
        _ = Inheritance.call(self.associatedAdvancedRTSGameLayer.?, "init", .{ self.currentGeographicMapCellHistoryP, geographicMapCellPositionBasicArrayList });
        _ = Inheritance.call(self, "setTrackingWaypoint", .{ true });
        _ = Inheritance.receiverOf(self.getCompleteTimeDelayHelper().?, "setStartTimeTNT").setStartTimeTNT();
    }
    

    pub fn canInsertWaypoint(self: *Self, index: i32, rtsLayer: ?*CollidableDestroyableDamageableLayer) bool {
        _ = index;
        if (self.targetList.?.size() > 4) {
        } else if (Inheritance.call(self.targetList.?, "contains", .{ rtsLayer })) {
        } else {
            return true;
        }
        return false;
    }
    

    // throws Exception
    pub fn addBuildingChase(self: *Self, allbinaryLayer: ?*AllBinaryLayer, cellPosition: ?*GeographicMapCellPosition) void {
        _ = allbinaryLayer;
        _ = cellPosition;
        _ = self;
    }
    

    // throws Exception
    pub fn moveAwayFromBuilding(self: *Self, buildingLayer: ?*BuildingLayer) void {
        const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.receiver(self.associatedAdvancedRTSGameLayer.?, "getCurrentGeographicMapCellPosition").getCurrentGeographicMapCellPosition());
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(buildingLayer.?.geographicMapCellPositionAreaBase.?, "getOccupyingGeographicMapCellPositionList").getOccupyingGeographicMapCellPositionList());
        if (Inheritance.call(list.?, "contains", .{ geographicMapCellPosition })) {
            if (Inheritance.call(self, "insertWaypoint", .{ 0, self.FAKE_WAYPOINT_LAYER })) {
                _ = Inheritance.call(self.associatedAdvancedRTSGameLayer.?.waypointLogHelperP.?, "moveAwayFromBuilding", .{ self.associatedAdvancedRTSGameLayer });
                _ = Inheritance.call(self, "setCurrentTargetLayerInterface", .{ Inheritance.cast(?*CollidableDestroyableDamageableLayer, self.FAKE_WAYPOINT_LAYER) });
                const pathsList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(buildingLayer.?, "getMoveOutOfBuildAreaPath", .{ geographicMapCellPosition }));
                _ = Inheritance.call(self.associatedAdvancedRTSGameLayer.?, "setClosestGeographicMapCellHistory", .{ pathsList });
            }
        }
    }
    

    pub fn needToMove(self: *Self) bool {
        _ = Inheritance.call(self.associatedAdvancedRTSGameLayer.?.waypointLogHelperP.?, "needToMove", .{ self.associatedAdvancedRTSGameLayer, self });
        if (self.isTrackingWaypoint() or Object.same(self.sensorAction, SensorActionFactory.getInstance().?.EVADE) or (!Object.same(self.currentTargetLayerInterfaceP, CollidableDestroyableDamageableLayer.getNullInstance()) and self.getCurrentTargetDistance() >= self.longWeaponRange + Inheritance.receiver(self.currentTargetLayerInterfaceP.?, "getHalfHeight").getHalfHeight())) {
            _ = self.repeatedToLong.?.setStartTimeTNT();
            return true;
        }
        if (self.repeatedToLong.?.isTimeTNT()) {
            const message: ?*String = Inheritance.upcast(?*String, String.plus(String.literal("Repeating too long: "), self.getMovementLogicAsString()));
            _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ message, self.associatedAdvancedRTSGameLayer });
        }
        return false;
    }
    

    pub fn getMovementLogicAsString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("isTrackingWaypoint: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isTrackingWaypoint() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" sensorAction: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.sensorAction.?.name });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" getCurrentTargetLayerInterface: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ self.currentTargetLayerInterfaceP }) });
        if (!Object.same(self.currentTargetLayerInterfaceP, CollidableDestroyableDamageableLayer.getNullInstance())) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Target Range: ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getCurrentTargetDistance() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" >= ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(self.longWeaponRange + Inheritance.receiver(self.currentTargetLayerInterfaceP.?, "getHalfHeight").getHalfHeight())) });
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn isMovingFromStopped(self: *Self) bool {
        return self.movingFromStopped;
    }
    

    pub fn setMovingFromStopped(self: *Self, movingFromStopped: bool) void {
        self.movingFromStopped = movingFromStopped;
    }
    

    pub fn setWaypointPathsList(self: *Self, waypointPathsList: ?*BasicArrayList) void {
        self.waypointPathsListP = waypointPathsList;
    }
    

    pub fn getWaypointPathsList(self: *Self) ?*BasicArrayList {
        return self.waypointPathsListP;
    }
    

    pub fn isMoving(self: *Self) bool {
        return self.moving;
    }
    

    pub fn setMoving(self: *Self, moving: bool) void {
        self.moving = moving;
    }
    

    pub fn isTrackingWaypoint(self: *Self) bool {
        return self.trackingWaypoint;
    }
    

    pub fn getPossibleTargetList(self: *Self) ?*BasicArrayList {
        return self.possibleTargetList;
    }
    

    pub fn setLastPathGeographicMapCellPosition(self: *Self, lastPathGeographicMapCellPosition: ?*GeographicMapCellPosition) void {
        self.lastPathGeographicMapCellPosition = lastPathGeographicMapCellPosition;
    }
    

    pub fn getLastPathGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        return self.lastPathGeographicMapCellPosition;
    }
    

    pub fn setCurrentPathGeographicMapCellPosition(self: *Self, currentPathGeographicMapCellPosition: ?*GeographicMapCellPosition) void {
        self.currentPathGeographicMapCellPosition = currentPathGeographicMapCellPosition;
    }
    

    pub fn getCurrentPathGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        return self.currentPathGeographicMapCellPosition;
    }
    

    pub fn setSensorAction(self: *Self, sensorAction: ?*SensorAction) void {
        self.sensorAction = sensorAction;
    }
    

    pub fn getSensorAction(self: *Self) ?*SensorAction {
        return self.sensorAction;
    }
    

    pub fn setCurrentTargetLayerInterface(self: *Self, currentTargetLayerInterface: ?*CollidableDestroyableDamageableLayer) void {
        self.currentTargetLayerInterfaceP = currentTargetLayerInterface;
    }
    

    pub fn getCurrentTargetLayerInterface(self: *Self) ?*CollidableDestroyableDamageableLayer {
        return self.currentTargetLayerInterfaceP;
    }
    

    pub fn setCurrentTargetDistance(self: *Self, currentTargetDistance: i32) void {
        self.currentTargetDistance = currentTargetDistance;
    }
    

    pub fn getCurrentTargetDistance(self: *Self) i32 {
        return self.currentTargetDistance;
    }
    

    pub fn getCompleteTimeDelayHelper(self: *Self) ?*TimeDelayHelper {
        return self.completeTimeDelayHelper;
    }
    

    pub fn getCurrentGeographicMapCellHistory(self: *Self) ?*GeographicMapCellHistory {
        return self.currentGeographicMapCellHistoryP;
    }
    

    pub fn setTrackingWaypoint(self: *Self, trackingWaypoint: bool) void {
        self.trackingWaypoint = trackingWaypoint;
    }
};

