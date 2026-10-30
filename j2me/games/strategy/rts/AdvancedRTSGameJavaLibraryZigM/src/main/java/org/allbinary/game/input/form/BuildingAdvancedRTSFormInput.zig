// 
// AllBinary Open License Version 1 
// Copyright (c) 2002 AllBinary 
//  
// By agreeing to this license you and any business entity you represent are 
// legally bound to the AllBinary Open License Version 1 legal agreement. 
//  
// You may obtain the AllBinary Open License Version 1 legal agreement from 
// AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
//  
// Created By: Travis Berthelot  
// Generated Code Do Not Modify
// package org.allbinary.game.input.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AdvancedPlayerOwnedRTSLayers = @import("org/allbinary/game/layer/AdvancedPlayerOwnedRTSLayers.zig").AdvancedPlayerOwnedRTSLayers;
const AdvancedRTSPlayerLayerInterface = @import("org/allbinary/game/layer/AdvancedRTSPlayerLayerInterface.zig").AdvancedRTSPlayerLayerInterface;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const RTSLayerEvent = @import("org/allbinary/game/layer/RTSLayerEvent.zig").RTSLayerEvent;
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;
const BuildingEventHandler = @import("org/allbinary/game/layer/building/event/BuildingEventHandler.zig").BuildingEventHandler;
const LocalPlayerBuildingEventHandler = @import("org/allbinary/game/layer/building/event/LocalPlayerBuildingEventHandler.zig").LocalPlayerBuildingEventHandler;
const WaypointCellPositionHistory = @import("org/allbinary/game/layer/waypoint/WaypointCellPositionHistory.zig").WaypointCellPositionHistory;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const NullPathFindingLayer = @import("org/allbinary/game/layer/NullPathFindingLayer.zig").NullPathFindingLayer;
const GameNotificationEvent = @import("org/allbinary/game/layer/hud/event/GameNotificationEvent.zig").GameNotificationEvent;
const GameNotificationEventHandler = @import("org/allbinary/game/layer/hud/event/GameNotificationEventHandler.zig").GameNotificationEventHandler;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const ErrorSound = @import("org/allbinary/media/audio/ErrorSound.zig").ErrorSound;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const DropCellPositionHistory = @import("org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory.zig").DropCellPositionHistory;
const BuildingRTSFormInput = @import("org/allbinary/game/input/form/BuildingRTSFormInput.zig").BuildingRTSFormInput;

pub const BuildingAdvancedRTSFormInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.form.BuildingAdvancedRTSFormInput";
    base: BuildingRTSFormInput = undefined,
    atLeastOneHouseGameNotificationEvent: ?*GameNotificationEvent = null,
    BUILD_BUILDING_RTS_LAYER_EVENT: ?*RTSLayerEvent = null,

    fn initFields(this: *Self) void {
        
        this.BUILD_BUILDING_RTS_LAYER_EVENT = Inheritance.callStatic(RTSLayerEvent, "create1", .{ NullPathFindingLayer.NULL_PATH_FINDING_LAYER });
    }
    

    pub fn create2(groupInterface: []?*Group, isUnitProducer: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BuildingRTSFormInput, "create2", .{ groupInterface, isUnitProducer }).*;
        this.initFields();
        const basicColorFactory: ?*BasicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        this.atLeastOneHouseGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, String.literal("Build At Least One House First"), Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 2 }), basicColorFactory.?.WHITE, BooleanFactory.getInstance().?.FALSE });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn setAllBinaryGameLayerManager(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) void {
        _ = Inheritance.call(&self.base, "setAllBinaryGameLayerManager", .{ allBinaryGameLayerManager });
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, allBinaryGameLayerManager);
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        _ = Inheritance.call(self.atLeastOneHouseGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
    }
    

    pub fn isPositionBlocked(self: *Self) bool {
        if (Inheritance.call(DropCellPositionHistory.getInstance().?, "isCellPositionWithDrop", .{ Inheritance.receiver(self, "getSelectedGeographicCellPosition").getSelectedGeographicCellPosition() }) or Inheritance.call(WaypointCellPositionHistory.getInstance().?, "isCellPositionWithDrop", .{ Inheritance.receiver(self, "getSelectedGeographicCellPosition").getSelectedGeographicCellPosition() })) {
            return true;
        } else {
            return false;
        }
    }
    

    // throws Exception
    pub fn isBuildAttemptValid(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerInterface: ?*RTSLayer) bool {
        const advancedRTSPlayerLayerInterface: ?*AdvancedRTSPlayerLayerInterface = Inheritance.cast(?*AdvancedRTSPlayerLayerInterface, rtsPlayerLayerInterface);
        const advancedPlayerOwnedRTSLayers: ?*AdvancedPlayerOwnedRTSLayers = Inheritance.upcast(?*AdvancedPlayerOwnedRTSLayers, Inheritance.receiver(advancedRTSPlayerLayerInterface.?, "getAdvancedPlayerOwnedRTSLayers").getAdvancedPlayerOwnedRTSLayers());
        const totalHouses: i32 = Inheritance.receiverOf(Inheritance.receiver(advancedPlayerOwnedRTSLayers.?, "getHouseList").getHouseList().?, "size").size();
        if (totalHouses < 1 and Inheritance.call(Inheritance.receiver(layerInterface.?, "getName").getName().?, "indexOf", .{ String.literal(" House") }) < 0) {
            _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ ErrorSound.getInstance() });
            if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.atLeastOneHouseGameNotificationEvent });
            }
            return false;
        }
        return Inheritance.call(&self.base, "isBuildAttemptValid", .{ rtsPlayerLayerInterface, layerInterface });
    }
    

    // throws Exception
    pub fn add(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, layerInterface: ?*RTSLayer) void {
        _ = Inheritance.call(self.BUILD_BUILDING_RTS_LAYER_EVENT.?, "setRtsLayer", .{ layerInterface });
        _ = Inheritance.call(BuildingEventHandler.getInstance().?, "fireEvent", .{ self.BUILD_BUILDING_RTS_LAYER_EVENT });
        if (Inheritance.receiverOf((Inheritance.cast(?*AdvancedRTSPlayerLayerInterface, rtsPlayerLayerInterface)).?, "isLocalPlayer").isLocalPlayer()) {
            _ = Inheritance.call(LocalPlayerBuildingEventHandler.getInstance().?, "fireEvent", .{ self.BUILD_BUILDING_RTS_LAYER_EVENT });
        }
        _ = Inheritance.call(&self.base, "add", .{ rtsPlayerLayerInterface, layerManager, layerInterface });
    }
};

