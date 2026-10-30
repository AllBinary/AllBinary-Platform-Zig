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
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const SteeringVisitor = @import("org/allbinary/game/layer/SteeringVisitor.zig").SteeringVisitor;
const AdvancedRTSGameLayer = @import("org/allbinary/game/layer/AdvancedRTSGameLayer.zig").AdvancedRTSGameLayer;
const MultipassWaypointPathRunnable = @import("org/allbinary/game/layer/MultipassWaypointPathRunnable.zig").MultipassWaypointPathRunnable;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const WaypointPathRunnable = @import("org/allbinary/game/layer/WaypointPathRunnable.zig").WaypointPathRunnable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const WaypointPathRunnableBase = @import("org/allbinary/game/layer/WaypointPathRunnableBase.zig").WaypointPathRunnableBase;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const WaypointBase = @import("org/allbinary/game/layer/waypoint/WaypointBase.zig").WaypointBase;
const TrackingEventHandler = @import("org/allbinary/game/tracking/TrackingEventHandler.zig").TrackingEventHandler;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const LayerDistanceUtil = @import("org/allbinary/math/LayerDistanceUtil.zig").LayerDistanceUtil;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const SimpleGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory.zig").SimpleGeographicMapCellPositionFactory;
const PathFindingThreadPool = @import("org/allbinary/thread/PathFindingThreadPool.zig").PathFindingThreadPool;
const ThreadPool = @import("org/allbinary/thread/ThreadPool.zig").ThreadPool;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const UnitLayer = @import("org/allbinary/game/layer/unit/UnitLayer.zig").UnitLayer;
const UnitWaypointBehavior = @import("org/allbinary/game/layer/unit/UnitWaypointBehavior.zig").UnitWaypointBehavior;
const UnitWaypointStrings = @import("org/allbinary/game/layer/unit/UnitWaypointStrings.zig").UnitWaypointStrings;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const UnitWaypointBehavior2 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.unit.UnitWaypointBehavior2";
    base: UnitWaypointBehavior = undefined,
    logUtil: ?*LogUtil = null,
    unitWaypointStrings: ?*UnitWaypointStrings = null,
    basicColorFactory: ?*BasicColorFactory = null,
    layerDistanceUtil: ?*LayerDistanceUtil = null,
    pathFindingThreadPool: ?*ThreadPool = null,
    progressTimeDelayHelper: ?*TimeDelayHelper = null,
    wanderPathsList: ?*BasicArrayList = null,
    waypointPathRunnable: ?*WaypointPathRunnableBase = null,
    sensorRange: i32 = 0,
    closeRange: i32 = 0,
    nextUnvisitedPathGeographicMapCellPosition: ?*GeographicMapCellPosition = null,
    afterNextUnvisitedPathGeographicMapCellPosition: ?*GeographicMapCellPosition = null,
    waitingOnTargetPath: bool = false,
    waitingOnWaypointPath: bool = false,
    targetWithoutCachedPathLayerInterface: ?*CollidableDestroyableDamageableLayer = null,
    buildingSteeringVisitor: ?*BuildingSteeringVisitor = null,
    var runningWaypointPathList: ?*BasicArrayList = undefined;
    const TARGET_DISTANCE: ?*String = String.literal("Target Distance");
    const TARGET_LAYER: ?*String = String.literal("Target Layer");

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        runningWaypointPathList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.unitWaypointStrings = Inheritance.upcast(?*UnitWaypointStrings, UnitWaypointStrings.getInstance());
        this.basicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        this.layerDistanceUtil = Inheritance.upcast(?*LayerDistanceUtil, LayerDistanceUtil.getInstance());
        this.pathFindingThreadPool = Inheritance.upcast(?*ThreadPool, PathFindingThreadPool.getInstance());
        
        
        
        this.sensorRange = 0;
        this.closeRange = 0;
        this.nextUnvisitedPathGeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        this.afterNextUnvisitedPathGeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        this.waitingOnTargetPath = false;
        this.waitingOnWaypointPath = false;
        this.targetWithoutCachedPathLayerInterface = Inheritance.upcast(?*CollidableDestroyableDamageableLayer, CollidableDestroyableDamageableLayer.getNullInstance());
        this.buildingSteeringVisitor = BuildingSteeringVisitor.create();
    }
    

    pub fn create2(ownerAdvancedRTSGameLayer: ?*UnitLayer, fakeWaypoint: ?*AdvancedRTSGameLayer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(UnitWaypointBehavior, "create2", .{ ownerAdvancedRTSGameLayer, fakeWaypoint }).*;
        this.initFields();
        this.progressTimeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 5000 });
        this.wanderPathsList = Inheritance.upcast(@TypeOf(this.wanderPathsList), BasicArrayListD.create());
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance()); _ = features;
        this.waypointPathRunnable = Inheritance.upcast(@TypeOf(this.waypointPathRunnable), (if (J2MEUtil.isHTML()) MultipassWaypointPathRunnable.create() else WaypointPathRunnable.create()));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initRange(self: *Self, weaponRange: i32) void {
        _ = Inheritance.call(&self.base, "initRange", .{ weaponRange });
        self.closeRange = weaponRange;
        self.sensorRange = weaponRange * 4;
        _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "initRange", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*, self.closeRange, self.sensorRange });
    }
    

    pub fn getNextUnvisitedPathGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        return self.nextUnvisitedPathGeographicMapCellPosition;
    }
    

    pub fn isRunning(self: *Self) bool {
        if (self.waypointPathRunnable.?.isRunning()) {
            return true;
        } else {
            return false;
        }
    }
    

    // throws Exception
    pub fn processTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        if (self.waypointPathRunnable.?.isRunning()) {
            if (!Object.same(Inheritance.fieldPointer(self, "waypointPathsListP").*, UnitWaypointBehavior2.runningWaypointPathList)) {
                _ = Inheritance.call(self.waypointPathRunnable.?, "setRunning", .{ false });
                if (self.waitingOnTargetPath) {
                    _ = self.setTargetPath();
                } else if (self.waitingOnWaypointPath) {
                    _ = Inheritance.call(self, "setWaypointPath", .{ Inheritance.cast(?*AdvancedRTSGameLayer, self.waypointPathRunnable.?.getTargetLayer()) });
                } else {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("Should not happen"); break :exception error.Exception; }});
                }
            } else {
                return;
            }
        }
        _ = self.processTargetList();
        if (!self.waypointPathRunnable.?.isRunning()) {
            _ = self.processWaypoint();
        } else {
            return;
        }
        if (!self.waypointPathRunnable.?.isRunning()) {
            _ = self.processTargeting();
        } else {
            return;
        }
        if (!self.waypointPathRunnable.?.isRunning()) {
            _ = self.teleportIfNoProgress();
        } else {
            return;
        }
    }
    

    // throws Exception
    pub fn onEnemyMovement(self: *Self, layerInterface: ?*AdvancedRTSGameLayer) void {
        const anotherTargetDistance: i32 = Inheritance.call(self.layerDistanceUtil.?, "getDistance", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*, layerInterface });
        if (Object.same(layerInterface, Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*)) {
            _ = Inheritance.call(self, "setCurrentTargetDistance", .{ anotherTargetDistance });
        } else {
            _ = Inheritance.call(self, "processPossibleTarget", .{ layerInterface, anotherTargetDistance });
        }
    }
    

    // throws Exception
    pub fn processPossibleTarget(self: *Self, layerInterface: ?*AdvancedRTSGameLayer, anotherTargetDistance: i32) void {
        const isShorterThanCurrentTargetDistance: bool = Inheritance.receiver(self, "getCurrentTargetDistance").getCurrentTargetDistance() > anotherTargetDistance;
        const isCurrentTargetDestroyed: bool = !Object.same(Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*, CollidableDestroyableDamageableLayer.getNullInstance()) and Inheritance.receiverOf(Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*.?, "isDestroyed").isDestroyed();
        _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "processPossibleTarget", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*, self, layerInterface, anotherTargetDistance, isShorterThanCurrentTargetDistance, isCurrentTargetDestroyed });
        if (self.isWaypointListEmptyOrOnlyTargets() and Inheritance.call(self, "isInSensorRange", .{ layerInterface, anotherTargetDistance }) and (isShorterThanCurrentTargetDistance or isCurrentTargetDestroyed)) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "processSetTarget", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*, self, layerInterface, anotherTargetDistance });
            _ = Inheritance.call(self, "setTarget", .{ layerInterface, anotherTargetDistance });
        } else if (Inheritance.call(self, "isCloseRange", .{ layerInterface, anotherTargetDistance }) and (isShorterThanCurrentTargetDistance or isCurrentTargetDestroyed)) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "processPossibleTargetCloser", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*, self, layerInterface, anotherTargetDistance });
            _ = Inheritance.call(self, "setTarget", .{ layerInterface, anotherTargetDistance });
        }
    }
    

    // throws Exception
    pub fn teleportIfNoProgress(self: *Self) void {
        if (Inheritance.receiver(self, "isTrackingWaypoint").isTrackingWaypoint() or Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getParentLayer").getParentLayer().?, "isDestroyed").isDestroyed()) {
            if (self.progressTimeDelayHelper.?.isTimeTNT() and !Object.same(self.nextUnvisitedPathGeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "teleportTo", .{ self.nextUnvisitedPathGeographicMapCellPosition });
            }
            if (Inheritance.receiverOf(Inheritance.receiver(self, "getCompleteTimeDelayHelper").getCompleteTimeDelayHelper().?, "isTimeTNT").isTimeTNT()) {
                const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "currentGeographicMapCellHistoryP").*.?, "getTracked").getTracked().?, "get", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "currentGeographicMapCellHistoryP").*.?, "getSize").getSize() - 1 }));
                _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "teleportTo", .{ geographicMapCellPosition });
            }
        }
    }
    

    // throws Exception
    pub fn setTarget(self: *Self, layerInterface: ?*AdvancedRTSGameLayer, anotherTargetDistance: i32) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "setTarget", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*, self, layerInterface, anotherTargetDistance });
        _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getCaptionAnimationHelper").getCaptionAnimationHelper().?, "update", .{ self.unitWaypointStrings.?.TARGET, BasicColorFactory.getInstance().?.GREEN });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "setLoad", .{ 0 });
        _ = Inheritance.call(self, "setCurrentTargetDistance", .{ anotherTargetDistance });
        _ = Inheritance.call(self, "setCurrentTargetLayerInterface", .{ layerInterface });
        _ = Inheritance.call(self, "setTrackingWaypoint", .{ false });
        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "targetList").*.?, "clear").clear();
        if (!Inheritance.call(self, "isCloseRange", .{ layerInterface, anotherTargetDistance }) and Inheritance.call(self, "canInsertWaypoint", .{ 0, Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").* })) {
            const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getCurrentGeographicMapCellPosition").getCurrentGeographicMapCellPosition());
            const pathFindingLayerInterface: ?*PathFindingLayerInterface = Inheritance.upcast(?*PathFindingLayerInterface, (Inheritance.cast(?*PathFindingLayerInterface, Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*)));
            const waypoint: ?*WaypointBase = Inheritance.upcast(?*WaypointBase, Inheritance.receiverOf(Inheritance.receiver(pathFindingLayerInterface.?, "getWaypointBehavior").getWaypointBehavior().?, "getWaypoint").getWaypoint());
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(waypoint.?, "getPathsListFromCacheOnly", .{ geographicMapCellPosition }));
            _ = Inheritance.call(self, "setWaypointPathsList", .{ list });
            if (Inheritance.fieldPointer(self, "waypointPathsListP").* == null) {
                self.targetWithoutCachedPathLayerInterface = Inheritance.upcast(@TypeOf(self.targetWithoutCachedPathLayerInterface), Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*);
            } else if (Inheritance.receiverOf(Inheritance.fieldPointer(self, "waypointPathsListP").*.?, "size").size() != 0) {
                _ = self.setTargetPath();
            }
        }
    }
    

    // throws Exception
    pub fn setTargetPath(self: *Self) void {
        if (!Object.same(Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*, CollidableDestroyableDamageableLayer.getNullInstance())) {
            if (Inheritance.receiverOf(Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*.?, "isDestroyed").isDestroyed()) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "setTargetPath", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").* });
                _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getCaptionAnimationHelper").getCaptionAnimationHelper().?, "update", .{ self.unitWaypointStrings.?.KILL, self.basicColorFactory.?.ORANGE });
                _ = self.clearTarget();
                return;
            }
            if (Object.same(Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*, self.waypointPathRunnable.?.getTargetLayer())) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "setTargetPathIgnoreNewPath", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*, self });
                _ = Inheritance.call(self, "insertWaypoint", .{ 0, Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").* });
                _ = Inheritance.call(self, "setRandomGeographicMapCellHistory", .{ Inheritance.fieldPointer(self, "waypointPathsListP").* });
            }
        }
    }
    

    // throws Exception
    pub fn setGeographicMapCellHistoryPath(self: *Self, geographicMapCellPositionBasicArrayList: ?*BasicArrayList) void {
        _ = Inheritance.call(self, "setCurrentPathGeographicMapCellPosition", .{ SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION });
        self.nextUnvisitedPathGeographicMapCellPosition = Inheritance.upcast(@TypeOf(self.nextUnvisitedPathGeographicMapCellPosition), SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        _ = Inheritance.call(&self.base, "setGeographicMapCellHistoryPath", .{ geographicMapCellPositionBasicArrayList });
    }
    

    // throws Exception
    pub fn processWaypoint(self: *Self) void {
        const size: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "targetList").*.?, "size").size();
        if (size > 0) {
            const targetLayer: ?*AdvancedRTSGameLayer = Inheritance.cast(?*AdvancedRTSGameLayer, Inheritance.call(Inheritance.fieldPointer(self, "targetList").*.?, "get", .{ 0 }));
            _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "processWaypoint", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*, self, targetLayer, size });
            if (Inheritance.receiver(targetLayer.?, "isDestroyed").isDestroyed()) {
                _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getCaptionAnimationHelper").getCaptionAnimationHelper().?, "update", .{ self.unitWaypointStrings.?.WAYPOINT_DESTROYED_SHORT, self.basicColorFactory.?.YELLOW });
                _ = Inheritance.call(self, "removeWaypoint", .{ targetLayer, self.unitWaypointStrings.?.WAYPOINT_DESTROYED });
            } else {
                const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getCurrentGeographicMapCellPosition").getCurrentGeographicMapCellPosition());
                if (Inheritance.receiver(self, "isTrackingWaypoint").isTrackingWaypoint()) {
                    _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "processWaypointTracked", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*, self });
                    if (Inheritance.call(self, "visitIfAtMidPoint", .{ geographicMapCellPosition })) {
                        _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "processWaypointTrackedVisit", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*, geographicMapCellPosition });
                    }
                    if (Inheritance.receiverOf(Inheritance.fieldPointer(self, "currentGeographicMapCellHistoryP").*.?, "isAllVisited2").isAllVisited2() and !Object.same(Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*, CollidableDestroyableDamageableLayer.getNullInstance())) {
                        const oldWaypointLayer: ?*AdvancedRTSGameLayer = Inheritance.cast(?*AdvancedRTSGameLayer, Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*);
                        _ = Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(oldWaypointLayer.?, "getWaypointBehavior").getWaypointBehavior().?, "getWaypoint").getWaypoint().?, "visit", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").* });
                        _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getCaptionAnimationHelper").getCaptionAnimationHelper().?, "update", .{ self.unitWaypointStrings.?.ALL_VISITED_SHORT, self.basicColorFactory.?.GREEN });
                        _ = Inheritance.call(self, "removeWaypoint", .{ Inheritance.cast(?*AdvancedRTSGameLayer, Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*), self.unitWaypointStrings.?.ALL_VISITED });
                    }
                } else if (Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").* == null or Inheritance.fieldPointer(self, "waypointOverridesAttacking").*) {
                    const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(targetLayer.?, "getWaypointBehavior").getWaypointBehavior().?, "getWaypoint").getWaypoint().?, "getPathsListFromCacheOnly", .{ geographicMapCellPosition }));
                    _ = Inheritance.call(self, "setWaypointPathsList", .{ list });
                    if (Inheritance.fieldPointer(self, "waypointPathsListP").* == null) {
                        self.waitingOnWaypointPath = true;
                        _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getCaptionAnimationHelper").getCaptionAnimationHelper().?, "update", .{ self.unitWaypointStrings.?.THINKING, self.basicColorFactory.?.GREEN });
                        _ = Inheritance.call(self, "runWaypointPathTask", .{ targetLayer });
                        return;
                    }
                    _ = Inheritance.call(self, "setWaypointPath", .{ targetLayer });
                }
            }
        }
    }
    

    // throws Exception
    pub fn wander(self: *Self) void {
        if (Inheritance.receiverOf(Inheritance.fieldPointer(self, "currentGeographicMapCellHistoryP").*.?, "isAllVisited2").isAllVisited2()) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "wander", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").* });
            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getCaptionAnimationHelper").getCaptionAnimationHelper().?, "update", .{ self.unitWaypointStrings.?.WANDERING, self.basicColorFactory.?.RED });
            _ = self.wanderPathsList.?.clear();
            _ = Inheritance.call(self.wanderPathsList.?, "add", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getSurroundingGeographicMapCellPositionList").getSurroundingGeographicMapCellPositionList() });
            _ = Inheritance.call(self, "setRandomGeographicMapCellHistory", .{ self.wanderPathsList });
        }
        _ = Inheritance.call(self, "visitIfAtMidPoint", .{ Inheritance.receiver(self, "getCurrentPathGeographicMapCellPosition").getCurrentPathGeographicMapCellPosition() });
        _ = self.updateCurrentPathGeographicMapCellPosition();
        _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "trackTo", .{ self.unitWaypointStrings.?.NEXT_PATH_NODE });
    }
    

    pub fn visitIfAtMidPoint(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) bool {
        const unitLayer: ?*UnitLayer = Inheritance.upcast(?*UnitLayer, Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*);
        if (!Object.same(geographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) and Object.same(self.nextUnvisitedPathGeographicMapCellPosition, geographicMapCellPosition)) {
            const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(geographicMapCellPosition.?, "getMidPoint").getMidPoint());
            const afterNextPoint: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(self.afterNextUnvisitedPathGeographicMapCellPosition.?, "getMidPoint").getMidPoint());
            var beyondMidPoint: bool = true;
            if (Object.same(Inheritance.receiver(geographicMapCellPosition.?, "getColumn").getColumn(), Inheritance.receiver(self.afterNextUnvisitedPathGeographicMapCellPosition.?, "getColumn").getColumn())) {
            } else if (point.?.getX() < afterNextPoint.?.getX()) {
                if (Inheritance.receiver(unitLayer.?, "getXP").getXP() + Inheritance.receiver(unitLayer.?, "getHalfWidth").getHalfWidth() < point.?.getX()) {
                    beyondMidPoint = false;
                }
            } else {
                if (Inheritance.receiver(unitLayer.?, "getXP").getXP() + Inheritance.receiver(unitLayer.?, "getHalfWidth").getHalfWidth() > point.?.getX()) {
                    beyondMidPoint = false;
                }
            }
            if (Object.same(Inheritance.receiver(geographicMapCellPosition.?, "getRow").getRow(), Inheritance.receiver(self.afterNextUnvisitedPathGeographicMapCellPosition.?, "getRow").getRow())) {
            } else if (point.?.getY() < afterNextPoint.?.getY()) {
                if (Inheritance.receiver(unitLayer.?, "getYP").getYP() + Inheritance.receiver(unitLayer.?, "getHalfHeight").getHalfHeight() < point.?.getY()) {
                    beyondMidPoint = false;
                }
            } else {
                if (Inheritance.receiver(unitLayer.?, "getYP").getYP() + Inheritance.receiver(unitLayer.?, "getHalfHeight").getHalfHeight() > point.?.getY()) {
                    beyondMidPoint = false;
                }
            }
            if (beyondMidPoint) {
                return Inheritance.call(Inheritance.fieldPointer(self, "currentGeographicMapCellHistoryP").*.?, "visit", .{ geographicMapCellPosition });
            }
        }
        return false;
    }
    

    // throws Exception
    pub fn processTargetList(self: *Self) void {
        self.targetWithoutCachedPathLayerInterface = Inheritance.upcast(@TypeOf(self.targetWithoutCachedPathLayerInterface), CollidableDestroyableDamageableLayer.getNullInstance());
        {
            var index: i32 = Inheritance.receiverOf(Inheritance.receiver(self, "getPossibleTargetList").getPossibleTargetList().?, "size").size() - 1;
            while (index >= 0) : (index -= 1) {
            const layerInterface: ?*AdvancedRTSGameLayer = Inheritance.cast(?*AdvancedRTSGameLayer, Inheritance.call(Inheritance.receiver(self, "getPossibleTargetList").getPossibleTargetList().?, "get", .{ index }));
            if (Inheritance.receiver(layerInterface.?, "isDestroyed").isDestroyed()) {
                _ = Inheritance.call(Inheritance.receiver(self, "getPossibleTargetList").getPossibleTargetList().?, "remove", .{ layerInterface });
            } else {
                _ = Inheritance.call(self, "onEnemyMovement", .{ layerInterface });
            }
            }
        }
        if (!Object.same(self.targetWithoutCachedPathLayerInterface, CollidableDestroyableDamageableLayer.getNullInstance())) {
            self.waitingOnTargetPath = true;
            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getCaptionAnimationHelper").getCaptionAnimationHelper().?, "update", .{ self.unitWaypointStrings.?.THINKING_ABOUT_TARGET, self.basicColorFactory.?.GREEN });
            _ = Inheritance.call(self, "runWaypointPathTask", .{ Inheritance.cast(?*AdvancedRTSGameLayer, Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*) });
        }
        _ = Inheritance.receiverOf(Inheritance.receiver(self, "getPossibleTargetList").getPossibleTargetList().?, "clear").clear();
    }
    

    // throws Exception
    pub fn processTargeting(self: *Self) void {
        if (!Object.same(Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*, CollidableDestroyableDamageableLayer.getNullInstance()) and (Inheritance.call(self, "isInSensorRange", .{ Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*, Inheritance.receiver(self, "getCurrentTargetDistance").getCurrentTargetDistance() }) or Inheritance.receiver(self, "isTrackingWaypoint").isTrackingWaypoint())) {
            if (Inheritance.receiverOf(Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*.?, "isDestroyed").isDestroyed()) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "targetDestroyed", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").* });
                _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getCaptionAnimationHelper").getCaptionAnimationHelper().?, "update", .{ self.unitWaypointStrings.?.KILL, self.basicColorFactory.?.ORANGE });
                _ = self.clearTarget();
                return;
            }
            var dx: i32 = 0;
            var dy: i32 = 0;
            if (Inheritance.receiver(self, "isTrackingWaypoint").isTrackingWaypoint()) {
                _ = self.updateCurrentPathGeographicMapCellPosition();
                const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(self.nextUnvisitedPathGeographicMapCellPosition.?, "getMidPoint").getMidPoint());
                dx = Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getXP").getXP() + Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getHalfWidth").getHalfWidth() - point.?.getX();
                dy = Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getYP").getYP() + Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getHalfHeight").getHalfHeight() - point.?.getY();
                _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "processTargeting", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*, dx, dy });
            } else {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "processTargetingNonWayPoint", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*, dx, dy });
                dx = (Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getXP").getXP() + Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getHalfWidth").getHalfWidth()) - (Inheritance.receiverOf(Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*.?, "getXP").getXP() + Inheritance.receiverOf(Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*.?, "getHalfWidth").getHalfWidth());
                dy = (Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getYP").getYP() + Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getHalfHeight").getHalfHeight()) - (Inheritance.receiverOf(Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*.?, "getYP").getYP() + Inheritance.receiverOf(Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*.?, "getHalfHeight").getHalfHeight());
            }
            _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "trackToDXY", .{ dx, dy });
        } else {
            if (Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getParentLayer").getParentLayer().?, "isDestroyed").isDestroyed()) {
                _ = self.wander();
            } else {
                if (Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.showMoreCaptionStates) {
                    _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getCaptionAnimationHelper").getCaptionAnimationHelper().?, "update", .{ self.unitWaypointStrings.?.STOP, self.basicColorFactory.?.YELLOW });
                }
                _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "allStop").allStop();
            }
        }
    }
    

    pub fn updateCurrentPathGeographicMapCellPosition(self: *Self) void {
        _ = Inheritance.call(self, "setLastPathGeographicMapCellPosition", .{ Inheritance.receiver(self, "getCurrentPathGeographicMapCellPosition").getCurrentPathGeographicMapCellPosition() });
        _ = Inheritance.call(self, "setCurrentPathGeographicMapCellPosition", .{ self.nextUnvisitedPathGeographicMapCellPosition });
        self.nextUnvisitedPathGeographicMapCellPosition = Inheritance.upcast(@TypeOf(self.nextUnvisitedPathGeographicMapCellPosition), Inheritance.receiverOf(Inheritance.fieldPointer(self, "currentGeographicMapCellHistoryP").*.?, "getFirstUnvisited").getFirstUnvisited());
        self.afterNextUnvisitedPathGeographicMapCellPosition = Inheritance.upcast(@TypeOf(self.afterNextUnvisitedPathGeographicMapCellPosition), Inheritance.call(Inheritance.fieldPointer(self, "currentGeographicMapCellHistoryP").*.?, "getAfterIfNotLast", .{ self.nextUnvisitedPathGeographicMapCellPosition }));
        if (!Object.same(Inheritance.receiver(self, "getCurrentPathGeographicMapCellPosition").getCurrentPathGeographicMapCellPosition(), self.nextUnvisitedPathGeographicMapCellPosition)) {
            _ = self.progressTimeDelayHelper.?.setStartTimeTNT();
        }
    }
    

    // throws Exception
    pub fn setWaypointPath(self: *Self, waypointLayer: ?*AdvancedRTSGameLayer) void {
        if (Inheritance.receiverOf(Inheritance.fieldPointer(self, "waypointPathsListP").*.?, "size").size() != 0) {
            _ = Inheritance.call(self, "setCurrentTargetLayerInterface", .{ waypointLayer });
            const MAX: i32 = @as(i32, std.math.maxInt(i32));
            _ = Inheritance.call(self, "setCurrentTargetDistance", .{ MAX });
            _ = Inheritance.call(self, "setRandomGeographicMapCellHistory", .{ Inheritance.fieldPointer(self, "waypointPathsListP").* });
        } else {
            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(waypointLayer.?, "getWaypointBehavior").getWaypointBehavior().?, "getWaypoint").getWaypoint().?, "visit", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").* });
            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getCaptionAnimationHelper").getCaptionAnimationHelper().?, "update", .{ self.unitWaypointStrings.?.ALREADY_THERE_SHORT, self.basicColorFactory.?.YELLOW });
            _ = Inheritance.call(self, "removeWaypoint", .{ waypointLayer, self.unitWaypointStrings.?.ALREADY_THERE });
        }
    }
    

    // throws Exception
    pub fn runWaypointPathTask(self: *Self, waypointLayer: ?*AdvancedRTSGameLayer) void {
        _ = Inheritance.call(self, "setWaypointPathsList", .{ UnitWaypointBehavior2.runningWaypointPathList });
        if (self.waypointPathRunnable.?.isRunning()) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Should never be running here"); break :exception error.Exception; }});
        }
        _ = Inheritance.call(self.waypointPathRunnable.?, "setRunning", .{ true });
        _ = Inheritance.call(self.waypointPathRunnable.?, "setUnitLayer", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").* });
        _ = Inheritance.call(self.waypointPathRunnable.?, "setTargetLayer", .{ waypointLayer });
        _ = Inheritance.call(self.pathFindingThreadPool.?, "runTask", .{ self.waypointPathRunnable });
    }
    

    // throws Exception
    pub fn removeWaypoint(self: *Self, waypointLayer: ?*RTSLayer, reason: ?*String) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "removeWaypoint", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*, self, waypointLayer, reason });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "targetList").*.?, "remove", .{ waypointLayer });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "removeWaypointList", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*, self, Inheritance.fieldPointer(self, "targetList").* });
        if (Object.same(Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*, waypointLayer)) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "removeWaypointClear", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").* });
            _ = self.clearTarget();
        }
    }
    

    // throws Exception
    pub fn clearTarget(self: *Self) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "clearTarget", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").* });
        _ = Inheritance.call(self, "setCurrentTargetLayerInterface", .{ CollidableDestroyableDamageableLayer.getNullInstance() });
        _ = Inheritance.call(self, "setTrackingWaypoint", .{ false });
        const MAX: i32 = @as(i32, std.math.maxInt(i32));
        _ = Inheritance.call(self, "setCurrentTargetDistance", .{ MAX });
        _ = Inheritance.call(TrackingEventHandler.getInstance().?, "fireEvent", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "getTrackingEvent").getTrackingEvent() });
    }
    

    pub fn isWaypointListEmptyOrOnlyTargets(self: *Self) bool {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.fieldPointer(self, "targetList").*);
        if (list.?.size() == 0) {
            return true;
        }
        {
            var index: i32 = list.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const layerInterface: ?*AdvancedRTSGameLayer = Inheritance.cast(?*AdvancedRTSGameLayer, Inheritance.call(list.?, "get", .{ index }));
            if (Inheritance.receiver(layerInterface.?, "isWaypointListEmptyOrOnlyTargets").isWaypointListEmptyOrOnlyTargets()) {
                return false;
            }
            }
        }
        return true;
    }
    

    pub fn isCloseRange(self: *Self, layerInterface: ?*AdvancedRTSGameLayer, targetDistance: i32) bool {
        return targetDistance < self.closeRange + Inheritance.receiver(layerInterface.?, "getHalfHeight").getHalfHeight();
    }
    

    pub fn isInSensorRange(self: *Self, layerInterface: ?*CollidableDestroyableDamageableLayer, targetDistance: i32) bool {
        return targetDistance < self.sensorRange + Inheritance.receiver(layerInterface.?, "getHalfHeight").getHalfHeight();
    }
    

    pub fn getCurrentTargetingStateString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        if (!Object.same(Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*, CollidableDestroyableDamageableLayer.getNullInstance())) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ UnitWaypointBehavior2.TARGET_LAYER });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "commonSeps").*.?.SPACE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "currentTargetLayerInterfaceP").*.?, "getName").getName() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" with ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ UnitWaypointBehavior2.TARGET_DISTANCE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "commonSeps").*.?.SPACE });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(self, "getCurrentTargetDistance").getCurrentTargetDistance())) });
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    // throws Exception
    pub fn addWaypointFromUser(self: *Self, advancedRTSGameLayer: ?*AdvancedRTSGameLayer) void {
        if (Inheritance.receiver(advancedRTSGameLayer.?, "isDestroyed").isDestroyed()) {
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Trying to add a dead: "), advancedRTSGameLayer); break :exception error.Exception; }});
        }
        _ = Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?.waypoint2LogHelperP.?, "addWaypointFromUser", .{ Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*, advancedRTSGameLayer });
        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "targetList").*.?, "clear").clear();
        _ = Inheritance.call(Inheritance.fieldPointer(self, "targetList").*.?, "add", .{ advancedRTSGameLayer });
        _ = self.clearTarget();
    }
    

    // throws Exception
    pub fn addBuildingChase(self: *Self, allbinaryLayer: ?*AllBinaryLayer, cellPosition: ?*GeographicMapCellPosition) void {
        if (!Inheritance.call(self.buildingSteeringVisitor.?.getList().?, "contains", .{ allbinaryLayer })) {
            _ = Inheritance.call(self.buildingSteeringVisitor.?.getList().?, "add", .{ allbinaryLayer });
            _ = Inheritance.call(self.buildingSteeringVisitor.?.getPositionList().?, "add", .{ cellPosition });
        }
        if (!Inheritance.call(Inheritance.receiver(self, "getSteeringVisitorList").getSteeringVisitorList().?, "contains", .{ self.buildingSteeringVisitor })) {
            _ = Inheritance.call(Inheritance.receiver(self, "getSteeringVisitorList").getSteeringVisitorList().?, "add", .{ self.buildingSteeringVisitor });
        }
    }
    

    // throws Exception
    pub fn buildingChase(self: *Self, allbinaryLayer: ?*AllBinaryLayer, cellPosition: ?*GeographicMapCellPosition) bool {
        return Inheritance.call(Inheritance.fieldPointer(self, "associatedAdvancedRTSGameLayer").*.?, "buildingChase", .{ allbinaryLayer, cellPosition });
    }
    pub const BuildingSteeringVisitor = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.game.layer.unit.BuildingSteeringVisitor";
        base: SteeringVisitor = undefined,
        positionList: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
            this.positionList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = SteeringVisitor.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
        

        pub fn visit(self: *Self, anyType: ?Object) ?Object {
            _ = anyType;
            const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
            { // try
                if (Inheritance.receiverOf(Inheritance.receiver(self, "getList").getList().?, "size").size() > 0) {
                    const allbinaryLayer: ?*AllBinaryLayer = Inheritance.cast(?*AllBinaryLayer, Inheritance.call(Inheritance.receiver(self, "getList").getList().?, "get", .{ 0 }));
                    const cellPosition: ?*GeographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(Inheritance.receiver(self, "getPositionList").getPositionList().?, "get", .{ 0 }));
                    const clear: bool = Inheritance.call(self, "buildingChase", .{ allbinaryLayer, cellPosition });
                    if (clear) {
                        _ = Inheritance.receiverOf(Inheritance.receiver(self, "getList").getList().?, "clear").clear();
                        _ = Inheritance.fieldPointer(self, "positionList").*.?.clear();
                        return Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
                    }
                    return Inheritance.upcast(?Object, BooleanFactory.getInstance().?.FALSE);
                }
                return Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
            }
            // catch (Exception e):
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("visit"), e });
//                 return Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
        }
        

        pub fn getPositionList(self: *Self) ?*BasicArrayList {
            return Inheritance.fieldPointer(self, "positionList").*;
        }
    };
};

