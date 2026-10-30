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
// package org.allbinary.game.layer.building

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const ExplosionBasicSound = @import("org/allbinary/ag/weapon/media/audio/ExplosionBasicSound.zig").ExplosionBasicSound;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const NullIndexedAnimationFactory = @import("org/allbinary/animation/NullIndexedAnimationFactory.zig").NullIndexedAnimationFactory;
const GroupFactory = @import("org/allbinary/game/identification/GroupFactory.zig").GroupFactory;
const NullRTSFormInputFactory = @import("org/allbinary/game/input/form/NullRTSFormInputFactory.zig").NullRTSFormInputFactory;
const RTSFormInput = @import("org/allbinary/game/input/form/RTSFormInput.zig").RTSFormInput;
const VisibleCellPositionsSingleton = @import("org/allbinary/game/input/form/VisibleCellPositionsSingleton.zig").VisibleCellPositionsSingleton;
const AdvancedRTSGameLayer = @import("org/allbinary/game/layer/AdvancedRTSGameLayer.zig").AdvancedRTSGameLayer;
const AdvancedRTSPlayerLayerInterface = @import("org/allbinary/game/layer/AdvancedRTSPlayerLayerInterface.zig").AdvancedRTSPlayerLayerInterface;
const AdvancedRTSProperties = @import("org/allbinary/game/layer/AdvancedRTSProperties.zig").AdvancedRTSProperties;
const CollidableRTSBehavior = @import("org/allbinary/game/layer/CollidableRTSBehavior.zig").CollidableRTSBehavior;
const RTSLayerUtil = @import("org/allbinary/game/layer/RTSLayerUtil.zig").RTSLayerUtil;
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;
const SelectionHudPaintable = @import("org/allbinary/game/layer/SelectionHudPaintable.zig").SelectionHudPaintable;
const Waypoint = @import("org/allbinary/game/layer/waypoint/Waypoint.zig").Waypoint;
const TileLayerPositionIntoViewPosition = @import("org/allbinary/game/view/TileLayerPositionIntoViewPosition.zig").TileLayerPositionIntoViewPosition;
const RectangleFactory = @import("org/allbinary/graphics/RectangleFactory.zig").RectangleFactory;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;
const RotationAnimationInterfaceCompositeInterface = @import("org/allbinary/animation/RotationAnimationInterfaceCompositeInterface.zig").RotationAnimationInterfaceCompositeInterface;
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const DirectionFactory = @import("org/allbinary/direction/DirectionFactory.zig").DirectionFactory;
const DamageFloaters = @import("org/allbinary/game/combat/damage/DamageFloaters.zig").DamageFloaters;
const Health = @import("org/allbinary/game/health/Health.zig").Health;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const GeographicMapCellPositionAreaBase = @import("org/allbinary/game/layer/GeographicMapCellPositionAreaBase.zig").GeographicMapCellPositionAreaBase;
const NullPathFindingLayer = @import("org/allbinary/game/layer/NullPathFindingLayer.zig").NullPathFindingLayer;
const TrackingEvent = @import("org/allbinary/game/tracking/TrackingEvent.zig").TrackingEvent;
const TrackingEventHandler = @import("org/allbinary/game/tracking/TrackingEventHandler.zig").TrackingEventHandler;
const TrackingEventListenerInterface = @import("org/allbinary/game/tracking/TrackingEventListenerInterface.zig").TrackingEventListenerInterface;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const SecondaryPlayerQueueFactory = @import("org/allbinary/media/audio/SecondaryPlayerQueueFactory.zig").SecondaryPlayerQueueFactory;
const SelectSound = @import("org/allbinary/media/audio/SelectSound.zig").SelectSound;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapDirectionUtil = @import("org/allbinary/media/graphics/geography/map/GeographicMapDirectionUtil.zig").GeographicMapDirectionUtil;
const DropCellPositionHistory = @import("org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory.zig").DropCellPositionHistory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;
const RemoteInfo = @import("org/allbinary/game/multiplayer/layer/RemoteInfo.zig").RemoteInfo;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BuildingInfoHudPaintable = @import("org/allbinary/game/layer/building/BuildingInfoHudPaintable.zig").BuildingInfoHudPaintable;
const BuildingPropertiesFactory = @import("org/allbinary/game/layer/building/BuildingPropertiesFactory.zig").BuildingPropertiesFactory;
const SimulatedBuildingPropertiesFactory = @import("org/allbinary/game/layer/building/SimulatedBuildingPropertiesFactory.zig").SimulatedBuildingPropertiesFactory;

pub const BuildingLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.building.BuildingLayer";
    base: AdvancedRTSGameLayer = undefined,
    buildingLevelCost: i32 = 0,
    productivity: i32 = 0,
    efficiency: i32 = 0,
    efficiencyPerLevel: i32 = 0,
    trackingEvent: ?*TrackingEvent = null,
    damageFloaters: ?*DamageFloaters = null,
    damageFloatersPaintableInterface: ?*Paintable = null,
    healthBar: ?*Paintable = null,
    pathsHashtable: ?*ABHashtable = null,
    local: bool = false,
    timeDelayHelper: ?*TimeDelayHelper = null,
    // Implements RotationAnimationInterfaceCompositeInterface
    // Implements TrackingEventListenerInterface

    fn initFields(this: *Self) void {
        this.buildingLevelCost = 0;
        this.productivity = 0;
        
        
        
        
        
        
        
        this.local = false;
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 3000 });
    }
    

    // throws Exception
    pub fn createSimulated() ?*BuildingLayer {
        const nullAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface = Inheritance.upcast(?*AnimationInterfaceFactoryInterface, NullAnimationFactory.getFactoryInstance());
        const nullIndexedAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface = Inheritance.upcast(?*AnimationInterfaceFactoryInterface, NullIndexedAnimationFactory.getFactoryInstance());
        return Inheritance.callStatic(BuildingLayer, "create17", .{ RemoteInfo.REMOTE_INFO, SimulatedBuildingPropertiesFactory.getInstance(), AdvancedRTSProperties.createPropertiesSimulated(), GroupFactory.getInstance().?.NULL_GROUP_ARRAY, StringUtil.getInstance().?.EMPTY_STRING, StringUtil.getInstance().?.EMPTY_STRING, Health.NULL_HEALTH, NullRTSFormInputFactory.getInstance(), nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, NullIndexedAnimationFactory.getFactoryInstance(), RectangleFactory.SINGLETON, 0, 0 });
    }
    

    pub fn create17(remoteInfo: ?*RemoteInfo, buildingPropertiesFactory: ?*BuildingPropertiesFactory, advancedRTSProperties: ?*AdvancedRTSProperties, groupInterface: []?*Group, rootName: ?*String, name: ?*String, healthInterface: ?*Health, rtsFormInput: ?*RTSFormInput, animationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface: ?*ProceduralAnimationInterfaceFactoryInterface, rectangle: ?*Rectangle, x: i32, y: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AdvancedRTSGameLayer, "create18", .{ remoteInfo, NullPathFindingLayer.NULL_PATH_FINDING_LAYER, advancedRTSProperties, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, TileLayerPositionIntoViewPosition.create() }).*;
        this.initFields();
        _ = Inheritance.call(this, "setCollidableInferface", .{ Inheritance.callStatic(CollidableRTSBehavior, "create1", .{ true }) });
        _ = Inheritance.call(Inheritance.receiver(this, "getWaypointBehavior").getWaypointBehavior().?, "setWaypoint", .{ Inheritance.callStatic(Waypoint, "create2", .{ this, SelectSound.getInstance() }) });
        this.damageFloaters = Inheritance.upcast(@TypeOf(this.damageFloaters), Inheritance.call(buildingPropertiesFactory.?, "getDamageFloaters", .{ this }));
        this.damageFloatersPaintableInterface = Inheritance.upcast(@TypeOf(this.damageFloatersPaintableInterface), buildingPropertiesFactory.?.damageFloatersPaintableInterface);
        this.healthBar = Inheritance.upcast(@TypeOf(this.healthBar), Inheritance.call(buildingPropertiesFactory.?, "getHealthBar", .{ this }));
        this.pathsHashtable = Inheritance.upcast(@TypeOf(this.pathsHashtable), buildingPropertiesFactory.?.getHashtable());
        _ = Inheritance.call(this, "setMaxLevel", .{ 30 });
        _ = Inheritance.call(this, "setProductivity", .{ 1 });
        _ = Inheritance.call(this, "setEfficiency", .{ this.calculateEfficiency() });
        this.efficiencyPerLevel = Inheritance.call(buildingPropertiesFactory.?, "getEfficiencyPerLevel", .{ this });
        this.efficiency = this.efficiencyPerLevel;
        _ = this.generateMoveOutOfBuildAreaPaths();
        this.trackingEvent = Inheritance.upcast(@TypeOf(this.trackingEvent), Inheritance.call(buildingPropertiesFactory.?, "getTrackingEvent", .{ this }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initVisibility(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface) void {
        const advancedRTSPlayerLayerInterface: ?*AdvancedRTSPlayerLayerInterface = Inheritance.cast(?*AdvancedRTSPlayerLayerInterface, rtsPlayerLayerInterface);
        if (Inheritance.receiver(advancedRTSPlayerLayerInterface.?, "isLocalPlayer").isLocalPlayer()) {
            self.local = true;
            _ = self.addVisibility();
        } else {
            self.local = false;
        }
        _ = Inheritance.call(&self.base, "initVisibility", .{ rtsPlayerLayerInterface });
    }
    

    // throws Exception
    pub fn construct(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface) void {
        _ = Inheritance.call(&self.base, "construct", .{ rtsPlayerLayerInterface });
        _ = Inheritance.call(TrackingEventHandler.getInstance().?, "addListenerInterface", .{ self });
    }
    

    pub fn onMovement(self: *Self, trackingEvent: ?*TrackingEvent) void {
        { // try
            const layerInterface: ?*AdvancedRTSGameLayer = Inheritance.cast(?*AdvancedRTSGameLayer, Inheritance.receiver(trackingEvent.?, "getLayerInterface").getLayerInterface());
            if (!Object.same(Inheritance.receiver(layerInterface.?, "getGroupInterface").getGroupInterface()[@intCast(0)], Inheritance.receiver(self, "getGroupInterface").getGroupInterface()[@intCast(0)])) {
                _ = Inheritance.call(layerInterface.?, "onMovementFound", .{ self.trackingEvent });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("onMovement"), e });
    }
    

    // throws Exception
    pub fn processBuiltTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        if (Inheritance.receiverOf(Inheritance.receiver(self, "getHealthInterface").getHealthInterface().?, "isDamaged").isDamaged()) {
            _ = Inheritance.call(self, "setAnimationInterface", .{ Inheritance.fieldPointer(self, "destroyAnimationInterface").* });
        }
        if (!Inheritance.receiverOf(Inheritance.receiver(self, "getHealthInterface").getHealthInterface().?, "isAlive").isAlive()) {
            if (Inheritance.receiver(self, "isReadyForExplosion").isReadyForExplosion()) {
                const currentFrame: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "destroyAnimationInterface").*.?, "getFrame").getFrame();
                const size: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "destroyAnimationInterface").*.?, "getSize").getSize() - 1;
                if (currentFrame == size and !self.timeDelayHelper.?.isTimeTNT()) {
                    if (!Inheritance.receiverOf(Inheritance.receiver(self, "getHealthInterface").getHealthInterface().?, "isAlive").isAlive()) {
                        _ = Inheritance.call(self, "setDestroyed", .{ true });
                    }
                } else {
                    _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "destroyAnimationInterface").*.?, "nextFrame").nextFrame();
                }
            } else {
                _ = Inheritance.call(self, "setAnimationInterface", .{ Inheritance.fieldPointer(self, "destroyAnimationInterface").* });
                _ = Inheritance.call(SecondaryPlayerQueueFactory.getInstance().?, "add", .{ ExplosionBasicSound.getInstance() });
                _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "shakeListener").*.?, "onSmallShakeEvent").onSmallShakeEvent();
                _ = Inheritance.call(Inheritance.fieldPointer(self, "vibration").*.?, "vibrate", .{ Inheritance.fieldPointer(self, "duration").*, 0, 0 });
                _ = self.timeDelayHelper.?.setStartTimeTNT();
                _ = Inheritance.call(self, "setReadyForExplosion", .{ true });
            }
        } else {
            _ = Inheritance.call(&self.base, "processBuiltTick", .{ allBinaryLayerManager });
        }
        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "indexedButShouldBeRotationAnimationInterface").*.?, "nextFrame").nextFrame();
    }
    

    pub fn calculateEfficiency(self: *Self) i32 {
        return self.efficiencyPerLevel;
    }
    

    pub fn getCost(self: *Self) i32 {
        const total: i64 = Inheritance.call(RTSLayerUtil.getInstance().?, "getCostExponential", .{ @as(i64, @intCast((Inheritance.receiver(self, "getLevel").getLevel() * self.getBuildingLevelCost()))) });
        return @as(i32, @intCast(total));
    }
    

    pub fn getDowngradeCost(self: *Self) i32 {
        const downgradeCost: i64 = Inheritance.call(RTSLayerUtil.getInstance().?, "getCostExponential", .{ @as(i64, @intCast(((Inheritance.receiver(self, "getLevel").getLevel() - 1) * self.getBuildingLevelCost()))) });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.plus(String.literal("Cost: "), downgradeCost), self, String.literal("getDowngradeCost") });
        return @divTrunc(@as(i32, @intCast(downgradeCost)) * 9, 10);
    }
    

    pub fn getUpgradeCost(self: *Self) i32 {
        const upgradeCost: i64 = Inheritance.call(RTSLayerUtil.getInstance().?, "getCostExponential", .{ @as(i64, @intCast(((Inheritance.receiver(self, "getLevel").getLevel() + 1) * self.getBuildingLevelCost()))) });
        return @as(i32, @intCast(upgradeCost));
    }
    

    pub fn downgrade(self: *Self) void {
        _ = self.base.downgrade();
        _ = Inheritance.call(self, "setProductivity", .{ self.getProductivity() - 1 });
        _ = Inheritance.call(self, "setEfficiency", .{ self.getEfficiency() - self.calculateEfficiency() });
        _ = Inheritance.call(Inheritance.receiver(self, "getHealthInterface").getHealthInterface().?, "setMaxHealth", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getHealthInterface").getHealthInterface().?, "getMaxHealth").getMaxHealth() - ((Inheritance.receiver(self, "getLevel").getLevel() + 1) * 100) });
    }
    

    pub fn upgrade(self: *Self) void {
        _ = self.base.upgrade();
        _ = Inheritance.call(self, "setProductivity", .{ self.getProductivity() + 1 });
        _ = Inheritance.call(self, "setEfficiency", .{ self.getEfficiency() + self.calculateEfficiency() });
        _ = Inheritance.call(Inheritance.receiver(self, "getHealthInterface").getHealthInterface().?, "setMaxHealth", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getHealthInterface").getHealthInterface().?, "getMaxHealth").getMaxHealth() + (Inheritance.receiver(self, "getLevel").getLevel() * 100) });
    }
    

    pub fn getBuildingLevelCost(self: *Self) i32 {
        return self.buildingLevelCost;
    }
    

    pub fn setBuildingLevelCost(self: *Self, buildingLevelCost: i32) void {
        self.buildingLevelCost = buildingLevelCost;
    }
    

    pub fn getProductivity(self: *Self) i32 {
        return self.productivity;
    }
    

    pub fn setProductivity(self: *Self, productivity: i32) void {
        self.productivity = productivity;
    }
    

    pub fn getEfficiency(self: *Self) i32 {
        return self.efficiency;
    }
    

    pub fn setEfficiency(self: *Self, efficiency: i32) void {
        self.efficiency = efficiency;
    }
    

    // throws Exception
    pub fn generateMoveOutOfBuildAreaPaths(self: *Self) void {
        const occupyList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(Inheritance.fieldPointer(self, "geographicMapCellPositionAreaBase").*.?, "getOccupyingGeographicMapCellPositionList").getOccupyingGeographicMapCellPositionList());
        const surroundList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(Inheritance.fieldPointer(self, "geographicMapCellPositionAreaBase").*.?, "getSurroundingGeographicMapCellPositionList").getSurroundingGeographicMapCellPositionList());
        const NO_DIRECTION: ?*Direction = Inheritance.upcast(?*Direction, DirectionFactory.getInstance().?.NO_DIRECTION);
        const geographicMapDirectionUtil: ?*GeographicMapDirectionUtil = Inheritance.upcast(?*GeographicMapDirectionUtil, GeographicMapDirectionUtil.getInstance());
        var pathsList: ?*BasicArrayList = null;
        var occupyGeographicMapCellPosition: ?*GeographicMapCellPosition = null;
        var surroundGeographicMapCellPosition: ?*GeographicMapCellPosition = null;
        var list: ?*BasicArrayList = null;
        {
            var index2: i32 = occupyList.?.size() - 1;
            while (index2 >= 0) : (index2 -= 1) {
            pathsList = Inheritance.upcast(@TypeOf(pathsList), BasicArrayListD.create());
            occupyGeographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(occupyList.?, "get", .{ index2 }));
            {
                var index: i32 = surroundList.?.size() - 1;
                while (index >= 0) : (index -= 1) {
                surroundGeographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(surroundList.?, "get", .{ index }));
                if (!Object.same(Inheritance.call(geographicMapDirectionUtil.?, "getEightDirectionFromCellPositionToAdjacentCellPosition", .{ surroundGeographicMapCellPosition, occupyGeographicMapCellPosition }), NO_DIRECTION)) {
                    list = Inheritance.upcast(@TypeOf(list), Inheritance.callStatic(BasicArrayListS, "create1", .{ 1 }));
                    _ = Inheritance.call(list.?, "add", .{ surroundGeographicMapCellPosition });
                    _ = Inheritance.call(pathsList.?, "add", .{ list });
                }
                }
            }
            _ = Inheritance.call(self.pathsHashtable.?, "put", .{ occupyGeographicMapCellPosition, pathsList });
            }
        }
    }
    

    pub fn getMoveOutOfBuildAreaPath(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*BasicArrayList {
        const pathsList: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, Inheritance.call(self.pathsHashtable.?, "get", .{ geographicMapCellPosition }));
        return pathsList;
    }
    

    pub fn getEndGeographicMapCellPositionList(self: *Self) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(Inheritance.fieldPointer(self, "geographicMapCellPositionAreaBase").*.?, "getSurroundingGeographicMapCellPositionList").getSurroundingGeographicMapCellPositionList());
    }
    

    pub fn shouldHandleStartSameAsEnd(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        if (Inheritance.receiver(self, "isVisible").isVisible()) {
            _ = Inheritance.call(&self.base, "paint", .{ graphics });
            _ = Inheritance.call(self.damageFloatersPaintableInterface.?, "paint", .{ graphics });
            _ = Inheritance.call(self.healthBar.?, "paint", .{ graphics });
        }
    }
    

    // throws Exception
    pub fn damage(self: *Self, damage_: i32, damageType: i32) void {
        _ = Inheritance.call(&self.base, "damage", .{ damage_, damageType });
        _ = Inheritance.call(self.damageFloaters.?, "add", .{ damage_ });
        if (damage_ > 0) {
            _ = Inheritance.call(Inheritance.receiver(self, "getHealthInterface").getHealthInterface().?, "damage", .{ damage_ });
        }
    }
    

    // throws Exception
    pub fn getDamage(self: *Self, damageType: i32) i32 {
        _ = damageType;
        _ = self;
        return 0;
    }
    

    pub fn addVisibility(self: *Self) void {
        const geographicMapCellPositionArea: ?*GeographicMapCellPositionAreaBase = Inheritance.upcast(?*GeographicMapCellPositionAreaBase, Inheritance.fieldPointer(self, "geographicMapCellPositionAreaBase").*);
        const occupyList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, geographicMapCellPositionArea.?.getOccupyingGeographicMapCellPositionList());
        _ = Inheritance.call(VisibleCellPositionsSingleton.getInstance().?, "addStationaryCellPositions", .{ occupyList });
        const surroundList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, geographicMapCellPositionArea.?.getSurroundingGeographicMapCellPositionList());
        _ = Inheritance.call(VisibleCellPositionsSingleton.getInstance().?, "addStationaryCellPositions", .{ surroundList });
    }
    

    pub fn removeVisibility(self: *Self) void {
        const occupyList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(Inheritance.fieldPointer(self, "geographicMapCellPositionAreaBase").*.?, "getOccupyingGeographicMapCellPositionList").getOccupyingGeographicMapCellPositionList());
        _ = Inheritance.call(VisibleCellPositionsSingleton.getInstance().?, "removeStationaryCellPositions", .{ occupyList });
        const surroundList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(Inheritance.fieldPointer(self, "geographicMapCellPositionAreaBase").*.?, "getSurroundingGeographicMapCellPositionList").getSurroundingGeographicMapCellPositionList());
        _ = Inheritance.call(VisibleCellPositionsSingleton.getInstance().?, "removeStationaryCellPositions", .{ surroundList });
    }
    

    // throws Exception
    pub fn setDestroyed(self: *Self, destroyed: bool) void {
        _ = Inheritance.call(&self.base, "setDestroyed", .{ destroyed });
        if (Inheritance.receiver(self, "isDestroyed").isDestroyed()) {
            _ = Inheritance.call(DropCellPositionHistory.getInstance().?, "removeAll", .{ self });
            _ = Inheritance.call(TrackingEventHandler.getInstance().?, "removeListener", .{ self });
            if (self.local) {
                _ = self.removeVisibility();
            }
            if (!Inheritance.receiverOf(Inheritance.receiver(self, "getHealthInterface").getHealthInterface().?, "isAlive").isAlive()) {
                const damage_: i32 = Inheritance.receiverOf(Inheritance.receiver(self, "getHealthInterface").getHealthInterface().?, "getMaxHealth").getMaxHealth();
                if (damage_ > 10) {
                    _ = Inheritance.call(SecondaryPlayerQueueFactory.getInstance().?, "add", .{ ExplosionBasicSound.getInstance() });
                    if (damage_ < 100) {
                        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "shakeListener").*.?, "onSmallShakeEvent").onSmallShakeEvent();
                        _ = Inheritance.call(Inheritance.fieldPointer(self, "vibration").*.?, "vibrate", .{ Inheritance.fieldPointer(self, "duration").*, 0, 0 });
                    } else if (damage_ < 1000) {
                        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "shakeListener").*.?, "onMediumShakeEvent").onMediumShakeEvent();
                        _ = Inheritance.call(Inheritance.fieldPointer(self, "vibration").*.?, "vibrate", .{ Inheritance.fieldPointer(self, "duration").* * 2, 0, 0 });
                    } else if (damage_ < 3000) {
                        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "shakeListener").*.?, "onLargeShakeEvent").onLargeShakeEvent();
                        _ = Inheritance.call(Inheritance.fieldPointer(self, "vibration").*.?, "vibrate", .{ Inheritance.fieldPointer(self, "duration").* * 4, 0, 0 });
                    }
                }
            }
        }
    }
    

    pub fn createHudPaintable(self: *Self) ?*SelectionHudPaintable {
        const buildingInfoHudPaintable: ?*BuildingInfoHudPaintable = Inheritance.upcast(?*BuildingInfoHudPaintable, BuildingInfoHudPaintable.getInstance());
        _ = Inheritance.call(buildingInfoHudPaintable.?, "setBasicColorP", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "allBinaryGameLayerManagerP").*.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(buildingInfoHudPaintable.?, "setRtsLayer", .{ self });
        return Inheritance.upcast(?*SelectionHudPaintable, buildingInfoHudPaintable);
    }
    

    pub fn getHudPaintable(self: *Self) ?*SelectionHudPaintable {
        _ = self;
        const buildingInfoHudPaintable: ?*BuildingInfoHudPaintable = Inheritance.upcast(?*BuildingInfoHudPaintable, BuildingInfoHudPaintable.getInstance());
        return Inheritance.upcast(?*SelectionHudPaintable, buildingInfoHudPaintable);
    }
    

    pub fn getType(self: *Self) i32 {
        _ = self;
        return BuildingLayer.getStaticType();
    }
    

    pub fn getStaticType() i32 {
        return 2;
    }
};

