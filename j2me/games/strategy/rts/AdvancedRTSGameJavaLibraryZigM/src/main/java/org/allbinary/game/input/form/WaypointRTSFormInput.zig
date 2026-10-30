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
// package org.allbinary.game.input.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const RTSPlayerGameInput = @import("org/allbinary/game/input/RTSPlayerGameInput.zig").RTSPlayerGameInput;
const AdvancedRTSGameLayer = @import("org/allbinary/game/layer/AdvancedRTSGameLayer.zig").AdvancedRTSGameLayer;
const AdvancedRTSPlayerLayerInterface = @import("org/allbinary/game/layer/AdvancedRTSPlayerLayerInterface.zig").AdvancedRTSPlayerLayerInterface;
const RTSGameStrings = @import("org/allbinary/game/layer/RTSGameStrings.zig").RTSGameStrings;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const RTSLayerEvent = @import("org/allbinary/game/layer/RTSLayerEvent.zig").RTSLayerEvent;
const RTSLayerUtil = @import("org/allbinary/game/layer/RTSLayerUtil.zig").RTSLayerUtil;
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;
const Capital = @import("org/allbinary/game/layer/capital/Capital.zig").Capital;
const WaypointCellPositionHistory = @import("org/allbinary/game/layer/waypoint/WaypointCellPositionHistory.zig").WaypointCellPositionHistory;
const WaypointLayer = @import("org/allbinary/game/layer/waypoint/WaypointLayer.zig").WaypointLayer;
const WaypointEventHandlerFactory = @import("org/allbinary/game/layer/waypoint/event/WaypointEventHandlerFactory.zig").WaypointEventHandlerFactory;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const GeographicMapCellPositionAreaBase = @import("org/allbinary/game/layer/GeographicMapCellPositionAreaBase.zig").GeographicMapCellPositionAreaBase;
const NullPathFindingLayer = @import("org/allbinary/game/layer/NullPathFindingLayer.zig").NullPathFindingLayer;
const NullRTSLayer = @import("org/allbinary/game/layer/NullRTSLayer.zig").NullRTSLayer;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const GameNotificationEvent = @import("org/allbinary/game/layer/hud/event/GameNotificationEvent.zig").GameNotificationEvent;
const GameNotificationEventHandler = @import("org/allbinary/game/layer/hud/event/GameNotificationEventHandler.zig").GameNotificationEventHandler;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const Layer = @import("org/allbinary/layer/Layer.zig").Layer;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const ErrorSound = @import("org/allbinary/media/audio/ErrorSound.zig").ErrorSound;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const DropCellPositionHistory = @import("org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory.zig").DropCellPositionHistory;
const RaceTrackGeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypeFactory.zig").RaceTrackGeographicMapCellTypeFactory;
const PrimaryWaypointHelper = @import("org/allbinary/game/input/form/PrimaryWaypointHelper.zig").PrimaryWaypointHelper;
const RTSFormInput = @import("org/allbinary/game/input/form/RTSFormInput.zig").RTSFormInput;

pub const WaypointRTSFormInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.form.WaypointRTSFormInput";
    base: RTSFormInput = undefined,
    WAYPOINT_EVENT: ?*RTSLayerEvent = null,
    dragToSpotGameNotificationEvent: ?*GameNotificationEvent = null,
    spotTakenGameNotificationEvent: ?*GameNotificationEvent = null,
    buildingCollisionGameNotificationEvent: ?*GameNotificationEvent = null,
    roadCollisionGameNotificationEvent: ?*GameNotificationEvent = null,
    newWaypointGameNotificationEvent: ?*GameNotificationEvent = null,
    noMoneyGameNotificationEvent: ?*GameNotificationEvent = null,
    isPrimaryWaypointCreator: bool = false,
    stickyAssociatedRtsLayer: ?*PathFindingLayerInterface = null,

    fn initFields(this: *Self) void {
        this.WAYPOINT_EVENT = Inheritance.callStatic(RTSLayerEvent, "create1", .{ NullRTSLayer.NULL_RTS_LAYER });
        
        
        
        
        
        
        
        this.stickyAssociatedRtsLayer = Inheritance.upcast(?*PathFindingLayerInterface, NullPathFindingLayer.NULL_PATH_FINDING_LAYER);
    }
    

    pub fn create2(groupInterface: []?*Group, isPrimaryWaypointCreator: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RTSFormInput, "create1", .{ groupInterface }).*;
        this.initFields();
        this.isPrimaryWaypointCreator = isPrimaryWaypointCreator;
        const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
        const basicColorFactory: ?*BasicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        this.dragToSpotGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.DRAG_TO_SPOT, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.WHITE, BooleanFactory.getInstance().?.FALSE });
        this.spotTakenGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.SPOT_TAKEN, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.WHITE, BooleanFactory.getInstance().?.FALSE });
        this.buildingCollisionGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.BUILDING_COLLISION, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.WHITE, BooleanFactory.getInstance().?.FALSE });
        this.roadCollisionGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.ROAD_COLLISION, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.WHITE, BooleanFactory.getInstance().?.FALSE });
        this.newWaypointGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.NEW_WAYPOINT, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.WHITE, BooleanFactory.getInstance().?.FALSE });
        this.noMoneyGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.NO_MONEY, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.WHITE, BooleanFactory.getInstance().?.FALSE });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn setAllBinaryGameLayerManager(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) void {
        _ = Inheritance.call(&self.base, "setAllBinaryGameLayerManager", .{ allBinaryGameLayerManager });
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, allBinaryGameLayerManager);
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        _ = Inheritance.call(self.dragToSpotGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.spotTakenGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.buildingCollisionGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.roadCollisionGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.newWaypointGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.noMoneyGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
    }
    

    // throws Exception
    pub fn processAtPoint(self: *Self, associatedRtsLayer: ?*CollidableDestroyableDamageableLayer, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, point: ?*GPoint) void {
        _ = Inheritance.call(&self.base, "process", .{ layerManager });
        if (Inheritance.receiver(self, "isStickyItemSelected").isStickyItemSelected() or Object.same(associatedRtsLayer, CollidableDestroyableDamageableLayer.getNullInstance())) {
            if (Inheritance.receiver(self, "isStickyItemSelected").isStickyItemSelected() and Object.same(associatedRtsLayer, CollidableDestroyableDamageableLayer.getNullInstance())) {
                const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, layerManager);
                const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
                const allBinaryTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
                const x: i32 = point.?.getX() + Inheritance.receiver(allBinaryTiledLayer.?, "getXP").getXP();
                const y: i32 = point.?.getY() + Inheritance.receiver(allBinaryTiledLayer.?, "getYP").getYP();
                const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterface.?, "getCellPositionAtXY", .{ x, y }));
                _ = Inheritance.call(self, "processCellPosition", .{ rtsPlayerLayerInterface, layerManager, geographicMapCellPosition });
            } else {
                if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                    _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.dragToSpotGameNotificationEvent });
                }
            }
        } else {
            if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.spotTakenGameNotificationEvent });
            }
        }
    }
    

    // throws Exception
    pub fn processCellPosition(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        const itemIndex: i32 = Inheritance.receiver(self, "getSelectedStickyItemIndex").getSelectedStickyItemIndex();
        if (Object.same(Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)], CollidableDestroyableDamageableLayer.getNullInstance())) {
            Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)]), Inheritance.call(self, "getInstance", .{ layerManager, Inheritance.receiver(self, "getSelectedStickyItem").getSelectedStickyItem(), geographicMapCellPosition }));
        } else {
            const cellPoint: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(geographicMapCellPosition.?, "getPoint").getPoint());
            const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)]);
            _ = Inheritance.call(rtsLayer.?, "setPosition", .{ cellPoint.?.getX(), cellPoint.?.getY(), Inheritance.receiver(rtsLayer.?, "getZP").getZP() });
            const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, rtsLayer.?.allBinaryGameLayerManagerP);
            const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
            _ = Inheritance.call(rtsLayer.?.geographicMapCellPositionAreaBase.?, "update", .{ geographicMapInterface });
        }
        _ = Inheritance.call(self, "attemptBuild", .{ rtsPlayerLayerInterface, layerManager, Inheritance.cast(?*RTSLayer, Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)]), itemIndex });
    }
    

    // throws Exception
    pub fn processStickyGameSpecific(self: *Self, associatedRtsLayer: ?*CollidableDestroyableDamageableLayer, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, item: ?*ABCustomItem, index: i32) void {
        _ = rtsPlayerLayerInterface;
        _ = layerManager;
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.plus(String.literal("Set Sticking Item: "), item), self, String.literal("processSticky") });
        _ = Inheritance.call(self, "setSelectedStickyItem", .{ item });
        _ = Inheritance.call(self, "setSelectedStickyItemIndex", .{ index });
        _ = Inheritance.call(self, "setStickyItemSelected", .{ true });
        self.stickyAssociatedRtsLayer = Inheritance.cast(?*RTSLayer, associatedRtsLayer);
        _ = Inheritance.call(Inheritance.receiver(self, "getHashtable").getHashtable().?, "put", .{ Layer.ID, associatedRtsLayer });
    }
    

    // throws Exception
    pub fn attemptBuild(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, layerInterface: ?*RTSLayer, itemIndex: i32) bool {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.plus(String.literal("Layer: "), layerInterface), self, String.literal("attemptBuild") });
        if (layerInterface == null) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ String.literal("Layer was null"), self, String.literal("attemptBuild"), error.Exception });
            return false;
        }
        const geographicMapCellPositionArea: ?*GeographicMapCellPositionAreaBase = Inheritance.upcast(?*GeographicMapCellPositionAreaBase, layerInterface.?.geographicMapCellPositionAreaBase);
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, geographicMapCellPositionArea.?.getOccupyingGeographicMapCellPositionList());
        if (Inheritance.call(DropCellPositionHistory.getInstance().?, "anyCellPositionWithDrop", .{ list }) or Inheritance.call(WaypointCellPositionHistory.getInstance().?, "anyCellPositionWithDrop", .{ list })) {
            _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ ErrorSound.getInstance() });
            if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.buildingCollisionGameNotificationEvent });
            }
            return false;
        }
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, layerManager);
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        const raceTrackGeographicMapCellTypeFactory: ?*RaceTrackGeographicMapCellTypeFactory = Inheritance.cast(?*RaceTrackGeographicMapCellTypeFactory, Inheritance.receiver(geographicMapInterface.?, "getGeographicMapCellTypeFactory").getGeographicMapCellTypeFactory());
        var geographicMapCellType: ?*GeographicMapCellType = null;
        {
            var index: i32 = list.?.size();
            while (value_N71433: { index -= 1; break :value_N71433 index; } >= 0) {
            geographicMapCellType = Inheritance.upcast(@TypeOf(geographicMapCellType), Inheritance.call(geographicMapInterface.?, "getCellTypeAt", .{ Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(list.?, "get", .{ index })) }));
            if (Inheritance.call(raceTrackGeographicMapCellTypeFactory.?, "isPath", .{ geographicMapCellType })) {
                _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ ErrorSound.getInstance() });
                if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                    _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.roadCollisionGameNotificationEvent });
                }
                return false;
            }
            }
        }
        const cost: i32 = Inheritance.receiver(layerInterface.?, "getCost").getCost();
        const capital: ?*Capital = Inheritance.upcast(?*Capital, Inheritance.receiver(rtsPlayerLayerInterface.?, "getCapital").getCapital());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Trying to Build: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(layerInterface.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" for: $") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ cost });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" with ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(capital.?.getTotalMoney())) });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("attemptBuild") });
        if (cost <= capital.?.getTotalMoney()) {
            _ = Inheritance.call(layerInterface.?, "construct", .{ rtsPlayerLayerInterface });
            Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)]), CollidableDestroyableDamageableLayer.getNullInstance());
            _ = Inheritance.call(capital.?, "removeMoney", .{ cost });
            _ = Inheritance.call(WaypointCellPositionHistory.getInstance().?, "addList", .{ list, layerInterface });
            const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterface.?, "getCellPositionAtXY", .{ Inheritance.receiver(layerInterface.?, "getXP").getXP(), Inheritance.receiver(layerInterface.?, "getYP").getYP() }));
            const waypointLayer: ?*WaypointLayer = Inheritance.cast(?*WaypointLayer, layerInterface);
            _ = Inheritance.call(self, "addWayPoint", .{ waypointLayer });
            const rtsPlayerGameInput: ?*RTSPlayerGameInput = Inheritance.cast(?*RTSPlayerGameInput, Inheritance.receiver(rtsPlayerLayerInterface.?, "getPlayerGameInput").getPlayerGameInput());
            _ = Inheritance.call(rtsPlayerGameInput.?, "setSelectedRTSLayer", .{ layerInterface, geographicMapCellPosition });
            const advancedRTSPlayerLayerInterface: ?*AdvancedRTSPlayerLayerInterface = Inheritance.cast(?*AdvancedRTSPlayerLayerInterface, rtsPlayerLayerInterface);
            _ = Inheritance.call(Inheritance.receiver(advancedRTSPlayerLayerInterface.?, "getAdvancedPlayerOwnedRTSLayers").getAdvancedPlayerOwnedRTSLayers().?, "addWaypoint", .{ layerInterface });
            _ = Inheritance.call(layerManager.?, "append", .{ layerInterface });
            const waypointAvancedRTSGameLayer: ?*AdvancedRTSGameLayer = Inheritance.cast(?*AdvancedRTSGameLayer, waypointLayer);
            _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.receiver(waypointAvancedRTSGameLayer.?, "getWaypointBehavior").getWaypointBehavior().?, "getWaypoint").getWaypoint().?, "getSound").getSound() });
            if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.newWaypointGameNotificationEvent });
            }
            return true;
        } else {
            _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ ErrorSound.getInstance() });
            if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.noMoneyGameNotificationEvent });
            }
            return false;
        }
    }
    

    // throws Exception
    pub fn addWayPoint(self: *Self, layerInterface: ?*WaypointLayer) void {
        const stickyAssociatedAdvandedRtsLayer: ?*AdvancedRTSGameLayer = Inheritance.cast(?*AdvancedRTSGameLayer, self.stickyAssociatedRtsLayer);
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(Inheritance.receiver(stickyAssociatedAdvandedRtsLayer.?, "getWaypointBehavior").getWaypointBehavior().?, "getOwnedWaypointList").getOwnedWaypointList());
        _ = Inheritance.call(RTSLayerUtil.getInstance().?, "destroyAndClear", .{ list });
        _ = Inheritance.call(list.?, "add", .{ layerInterface });
        if (self.isPrimaryWaypointCreator) {
            _ = Inheritance.call(PrimaryWaypointHelper.getInstance().?, "setWaypointLayer", .{ layerInterface });
        }
        _ = Inheritance.call(self.WAYPOINT_EVENT.?, "setRtsLayer", .{ layerInterface });
        _ = Inheritance.call(Inheritance.callStatic(WaypointEventHandlerFactory, "getInstance", .{ Inheritance.receiver(layerInterface.?, "getGroupInterface").getGroupInterface()[@intCast(0)] }).?, "fireEvent", .{ self.WAYPOINT_EVENT });
    }
};

