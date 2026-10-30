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
// package org.allbinary.game.input.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const RTSPlayerGameInput = @import("org/allbinary/game/input/RTSPlayerGameInput.zig").RTSPlayerGameInput;
const DemoLockedWithCostLayerInterfaceFactoryInterface = @import("org/allbinary/game/layer/DemoLockedWithCostLayerInterfaceFactoryInterface.zig").DemoLockedWithCostLayerInterfaceFactoryInterface;
const GeographicMapCellPositionAreaBase = @import("org/allbinary/game/layer/GeographicMapCellPositionAreaBase.zig").GeographicMapCellPositionAreaBase;
const RTSGameStrings = @import("org/allbinary/game/layer/RTSGameStrings.zig").RTSGameStrings;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;
const Capital = @import("org/allbinary/game/layer/capital/Capital.zig").Capital;
const LayerInterfaceFactoryImageItem = @import("org/allbinary/game/layer/item/LayerInterfaceFactoryImageItem.zig").LayerInterfaceFactoryImageItem;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const BuildingSound = @import("org/allbinary/media/audio/BuildingSound.zig").BuildingSound;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const LockedFeatureNotificationUtil = @import("org/allbinary/logic/system/security/licensing/LockedFeatureNotificationUtil.zig").LockedFeatureNotificationUtil;
const LockedUtil = @import("org/allbinary/logic/system/security/licensing/LockedUtil.zig").LockedUtil;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const GameNotificationEvent = @import("org/allbinary/game/layer/hud/event/GameNotificationEvent.zig").GameNotificationEvent;
const GameNotificationEventHandler = @import("org/allbinary/game/layer/hud/event/GameNotificationEventHandler.zig").GameNotificationEventHandler;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const ErrorSound = @import("org/allbinary/media/audio/ErrorSound.zig").ErrorSound;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const SimpleGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory.zig").SimpleGeographicMapCellPositionFactory;
const DropCellPositionHistory = @import("org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory.zig").DropCellPositionHistory;
const RaceTrackGeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypeFactory.zig").RaceTrackGeographicMapCellTypeFactory;
const RTSFormInput = @import("org/allbinary/game/input/form/RTSFormInput.zig").RTSFormInput;

pub const BuildingRTSFormInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.form.BuildingRTSFormInput";
    base: RTSFormInput = undefined,
    isUnitProducer: bool = false,
    buildOnPathGameNotificationEvent: ?*GameNotificationEvent = null,
    spotTakenGameNotificationEvent: ?*GameNotificationEvent = null,
    selectBuildSpotGameNotificationEvent: ?*GameNotificationEvent = null,
    roadCollisionGameNotificationEvent: ?*GameNotificationEvent = null,
    noMoneyGameNotificationEvent: ?*GameNotificationEvent = null,
    buildingCollisionGameNotificationEvent: ?*GameNotificationEvent = null,
    structureToCloseCollisionGameNotificationEvent: ?*GameNotificationEvent = null,
    buildingGameNotificationEvent: ?*GameNotificationEvent = null,
    mapEdgeGameNotificationEvent: ?*GameNotificationEvent = null,
    dropCellPositionHistory: ?*DropCellPositionHistory = null,

    fn initFields(this: *Self) void {
        
        
        
        
        
        
        
        
        
        
        this.dropCellPositionHistory = Inheritance.upcast(?*DropCellPositionHistory, DropCellPositionHistory.getInstance());
    }
    

    pub fn create2(groupInterface: []?*Group, isUnitProducer: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RTSFormInput, "create1", .{ groupInterface }).*;
        this.initFields();
        this.isUnitProducer = isUnitProducer;
        const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
        const basicColorFactory: ?*BasicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        this.buildOnPathGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.BUILD_ON_PATH, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.PINK, BooleanFactory.getInstance().?.FALSE });
        this.spotTakenGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.SPOT_TAKEN, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.PINK, BooleanFactory.getInstance().?.FALSE });
        this.selectBuildSpotGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.SELECT_BUILD_SPOT, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.PINK, BooleanFactory.getInstance().?.FALSE });
        this.roadCollisionGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.ROAD_COLLISION, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.PINK, BooleanFactory.getInstance().?.FALSE });
        this.noMoneyGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.NO_MONEY, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.PINK, BooleanFactory.getInstance().?.FALSE });
        this.buildingCollisionGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.BUILDING_COLLISION, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.PINK, BooleanFactory.getInstance().?.FALSE });
        this.structureToCloseCollisionGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.STRUCTURE_TO_CLOSE, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.PINK, BooleanFactory.getInstance().?.FALSE });
        this.buildingGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.BUILDING, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.PINK, BooleanFactory.getInstance().?.FALSE });
        this.mapEdgeGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.MAP_EDGE, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.PINK, BooleanFactory.getInstance().?.FALSE });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn setAllBinaryGameLayerManager(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) void {
        _ = Inheritance.call(&self.base, "setAllBinaryGameLayerManager", .{ allBinaryGameLayerManager });
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, allBinaryGameLayerManager);
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        _ = Inheritance.call(self.buildOnPathGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.spotTakenGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.selectBuildSpotGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.roadCollisionGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.noMoneyGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.buildingCollisionGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.structureToCloseCollisionGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.buildingGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.mapEdgeGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
    }
    

    // throws Exception
    pub fn processGameSpecific(self: *Self, associatedRtsLayer: ?*CollidableDestroyableDamageableLayer, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, item: ?*ABCustomItem, itemIndex: i32) void {
        _ = associatedRtsLayer;
        _ = Inheritance.call(&self.base, "process", .{ layerManager });
        _ = Inheritance.call(self, "buildFromMotionInput", .{ rtsPlayerLayerInterface, layerManager, item, itemIndex });
    }
    

    pub fn isPositionBlocked(self: *Self) bool {
        return Inheritance.call(self.dropCellPositionHistory.?, "isCellPositionWithDrop", .{ Inheritance.receiver(self, "getSelectedGeographicCellPosition").getSelectedGeographicCellPosition() });
    }
    

    pub fn isDemoLocked(self: *Self, item: ?*ABCustomItem) bool {
        _ = self;
        const factoryItem: ?*LayerInterfaceFactoryImageItem = Inheritance.cast(?*LayerInterfaceFactoryImageItem, item);
        const layerInterfaceFactoryInterface: ?*DemoLockedWithCostLayerInterfaceFactoryInterface = Inheritance.cast(?*DemoLockedWithCostLayerInterfaceFactoryInterface, Inheritance.receiver(factoryItem.?, "getLayerInterfaceFactoryInterface").getLayerInterfaceFactoryInterface());
        if (Inheritance.receiverOf(LockedUtil.getInstance().?, "isLocked").isLocked() and Inheritance.receiver(layerInterfaceFactoryInterface.?, "isDemoLocked").isDemoLocked()) {
            return true;
        } else {
            return false;
        }
    }
    

    // throws Exception
    pub fn buildFromMotionInput(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, item: ?*ABCustomItem, itemIndex: i32) void {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ commonStrings.?.START, self, String.literal("buildFromMotionInput") });
        if (layerManager == null) {
            std.debug.panic("{any}", .{error.RuntimeException});
        }
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, layerManager);
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        if (Inheritance.call(self, "isDemoLocked", .{ item })) {
            _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ ErrorSound.getInstance() });
            _ = Inheritance.call(LockedFeatureNotificationUtil.getInstance().?, "fireWithColor", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
            return;
        }
        const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.receiver(self, "getSelectedGeographicCellPosition").getSelectedGeographicCellPosition());
        if (!Object.same(geographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
            if (!self.isPositionBlocked()) {
                const geographicMapCellType: ?*GeographicMapCellType = Inheritance.upcast(?*GeographicMapCellType, Inheritance.call(geographicMapInterface.?, "getCellTypeAt", .{ geographicMapCellPosition }));
                const raceTrackGeographicMapCellTypeFactory: ?*RaceTrackGeographicMapCellTypeFactory = Inheritance.cast(?*RaceTrackGeographicMapCellTypeFactory, Inheritance.receiver(geographicMapInterface.?, "getGeographicMapCellTypeFactory").getGeographicMapCellTypeFactory());
                if (!Inheritance.call(raceTrackGeographicMapCellTypeFactory.?, "isPath", .{ geographicMapCellType })) {
                    if (Object.same(Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)], CollidableDestroyableDamageableLayer.getNullInstance())) {
                        Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)]), Inheritance.call(self, "getInstance", .{ layerManager, item, geographicMapCellPosition }));
                    } else {
                        const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)]);
                        const cellPoint: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(geographicMapCellPosition.?, "getPoint").getPoint());
                        _ = Inheritance.call(rtsLayer.?, "setPosition", .{ cellPoint.?.getX(), cellPoint.?.getY(), cellPoint.?.getZ() });
                        _ = Inheritance.call(rtsLayer.?.geographicMapCellPositionAreaBase.?, "update", .{ geographicMapInterface });
                    }
                    const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)]);
                    _ = Inheritance.call(self, "attemptBuild", .{ rtsPlayerLayerInterface, layerManager, rtsLayer, itemIndex });
                } else {
                    _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ ErrorSound.getInstance() });
                    if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                        _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.buildOnPathGameNotificationEvent });
                    }
                }
            } else {
                _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ ErrorSound.getInstance() });
                if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                    _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.spotTakenGameNotificationEvent });
                }
            }
        } else {
            _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ ErrorSound.getInstance() });
            if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.selectBuildSpotGameNotificationEvent });
            }
        }
    }
    

    // throws Exception
    pub fn attemptBuild(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, layerInterface: ?*RTSLayer, itemIndex: i32) bool {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Layer: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ layerInterface }) }))), self, String.literal("attemptBuild") });
        const geographicMapCellPositionArea: ?*GeographicMapCellPositionAreaBase = Inheritance.upcast(?*GeographicMapCellPositionAreaBase, layerInterface.?.geographicMapCellPositionAreaBase);
        const occupyList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, geographicMapCellPositionArea.?.getOccupyingGeographicMapCellPositionList());
        if (!Inheritance.call(self, "isBuildAttemptValid", .{ rtsPlayerLayerInterface, layerInterface })) {
            return false;
        }
        var geographicMapCellType: ?*GeographicMapCellType = null;
        {
            var index: i32 = occupyList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, layerManager);
            const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
            geographicMapCellType = Inheritance.upcast(@TypeOf(geographicMapCellType), Inheritance.call(geographicMapInterface.?, "getCellTypeAt", .{ Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(occupyList.?, "get", .{ index })) }));
            const raceTrackGeographicMapCellTypeFactory: ?*RaceTrackGeographicMapCellTypeFactory = Inheritance.cast(?*RaceTrackGeographicMapCellTypeFactory, Inheritance.receiver(geographicMapInterface.?, "getGeographicMapCellTypeFactory").getGeographicMapCellTypeFactory());
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
            _ = Inheritance.call(self, "add", .{ rtsPlayerLayerInterface, layerManager, layerInterface });
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
    pub fn isBuildAttemptValid(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerInterface: ?*RTSLayer) bool {
        const geographicMapCellPositionArea: ?*GeographicMapCellPositionAreaBase = Inheritance.upcast(?*GeographicMapCellPositionAreaBase, layerInterface.?.geographicMapCellPositionAreaBase);
        const occupyList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, geographicMapCellPositionArea.?.getOccupyingGeographicMapCellPositionList());
        if (Inheritance.call(self.dropCellPositionHistory.?, "anyCellPositionWithDrop", .{ occupyList })) {
            _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ ErrorSound.getInstance() });
            if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.buildingCollisionGameNotificationEvent });
            }
            return false;
        }
        if (self.isUnitProducer and Inheritance.call(self.dropCellPositionHistory.?, "anyCellPositionWithDrop", .{ geographicMapCellPositionArea.?.getSurroundingGeographicMapCellPositionList() })) {
            _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ ErrorSound.getInstance() });
            if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.structureToCloseCollisionGameNotificationEvent });
            }
            return false;
        } else {
            if (Inheritance.call(self, "isSurroundingCellsOffMap", .{ layerInterface })) {
                _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ ErrorSound.getInstance() });
                if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                    _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.mapEdgeGameNotificationEvent });
                }
                return false;
            }
        }
        return true;
    }
    

    // throws Exception
    pub fn add(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, layerInterface: ?*RTSLayer) void {
        const geographicMapCellPositionArea: ?*GeographicMapCellPositionAreaBase = Inheritance.upcast(?*GeographicMapCellPositionAreaBase, layerInterface.?.geographicMapCellPositionAreaBase);
        const occupyList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, geographicMapCellPositionArea.?.getOccupyingGeographicMapCellPositionList());
        _ = Inheritance.call(self.dropCellPositionHistory.?, "addAll", .{ occupyList, layerInterface });
        const rtsPlayerGameInput: ?*RTSPlayerGameInput = Inheritance.cast(?*RTSPlayerGameInput, Inheritance.receiver(rtsPlayerLayerInterface.?, "getPlayerGameInput").getPlayerGameInput());
        _ = Inheritance.call(rtsPlayerGameInput.?, "setSelectedRTSLayer", .{ layerInterface, Inheritance.receiver(self, "getSelectedGeographicCellPosition").getSelectedGeographicCellPosition() });
        _ = Inheritance.call(layerManager.?, "append", .{ layerInterface });
        _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ BuildingSound.getInstance() });
        if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
            _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.buildingGameNotificationEvent });
        }
    }
    

    pub fn isSurroundingCellsOffMap(self: *Self, layerInterface: ?*RTSLayer) bool {
        const geographicMapCellPositionArea: ?*GeographicMapCellPositionAreaBase = Inheritance.upcast(?*GeographicMapCellPositionAreaBase, layerInterface.?.geographicMapCellPositionAreaBase);
        const occupyList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, geographicMapCellPositionArea.?.getOccupyingGeographicMapCellPositionList());
        const surroundList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, geographicMapCellPositionArea.?.getSurroundingGeographicMapCellPositionList());
        const occupySize: i32 = occupyList.?.size();
        const surroundSize: i32 = surroundList.?.size();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("occupySize: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ occupySize });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" surroundSize: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ surroundSize });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" surroundList: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ surroundList }) });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("isSurroundingCellsOffMap") });
        var isSurroundOffMap: bool = false;
        if (occupySize == 1 and surroundSize != 8) {
            isSurroundOffMap = true;
        } else if (occupySize == 4 and surroundSize != 12) {
            isSurroundOffMap = true;
        }
        if (occupySize == 0 or isSurroundOffMap) {
            return true;
        } else {
            return false;
        }
    }
};

