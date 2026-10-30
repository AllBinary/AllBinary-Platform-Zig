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
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AdvancedPlayerOwnedRTSLayers = @import("org/allbinary/game/layer/AdvancedPlayerOwnedRTSLayers.zig").AdvancedPlayerOwnedRTSLayers;
const AdvancedRTSGameLayer = @import("org/allbinary/game/layer/AdvancedRTSGameLayer.zig").AdvancedRTSGameLayer;
const AdvancedRTSPlayerLayerInterface = @import("org/allbinary/game/layer/AdvancedRTSPlayerLayerInterface.zig").AdvancedRTSPlayerLayerInterface;
const RTSGameStrings = @import("org/allbinary/game/layer/RTSGameStrings.zig").RTSGameStrings;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;
const Capital = @import("org/allbinary/game/layer/capital/Capital.zig").Capital;
const UnitLayer = @import("org/allbinary/game/layer/unit/UnitLayer.zig").UnitLayer;
const WorkWaypoint = @import("org/allbinary/game/layer/waypoint/WorkWaypoint.zig").WorkWaypoint;
const BuildingSound = @import("org/allbinary/media/audio/BuildingSound.zig").BuildingSound;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const GeographicMapCellPositionAreaBase = @import("org/allbinary/game/layer/GeographicMapCellPositionAreaBase.zig").GeographicMapCellPositionAreaBase;
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
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const AssignWaypointsUtil = @import("org/allbinary/game/input/form/AssignWaypointsUtil.zig").AssignWaypointsUtil;
const PlayersSingletonFactory = @import("org/allbinary/game/input/form/PlayersSingletonFactory.zig").PlayersSingletonFactory;
const RTSFormInput = @import("org/allbinary/game/input/form/RTSFormInput.zig").RTSFormInput;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const UnitRTSFormInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.form.UnitRTSFormInput";
    base: RTSFormInput = undefined,
    noMoneyGameNotificationEvent: ?*GameNotificationEvent = null,
    newUnitGameNotificationEvent: ?*GameNotificationEvent = null,
    pub var DECAL_ID: ?*Integer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        DECAL_ID = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 23 }));
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create1(groupInterface: []?*Group) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RTSFormInput, "create1", .{ groupInterface }).*;
        this.initFields();
        const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
        const basicColorFactory: ?*BasicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        this.noMoneyGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.NO_MONEY, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.WHITE, BooleanFactory.getInstance().?.FALSE });
        this.newUnitGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.NEW_UNIT, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.WHITE, BooleanFactory.getInstance().?.FALSE });
        _ = Inheritance.call(Inheritance.receiver(this, "getHashtable").getHashtable().?, "put", .{ WorkWaypoint.ID, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 50 }) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn setAllBinaryGameLayerManager(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) void {
        _ = Inheritance.call(&self.base, "setAllBinaryGameLayerManager", .{ allBinaryGameLayerManager });
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, allBinaryGameLayerManager);
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        _ = Inheritance.call(self.noMoneyGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.newUnitGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
    }
    

    // throws Exception
    pub fn processGameSpecific(self: *Self, associatedRtsLayer: ?*CollidableDestroyableDamageableLayer, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, item: ?*ABCustomItem, itemIndex: i32) void {
        _ = Inheritance.call(&self.base, "process", .{ layerManager });
        const associatedRtsLayer2: ?*RTSLayer = Inheritance.cast(?*RTSLayer, associatedRtsLayer);
        const geographicMapCellPositionArea: ?*GeographicMapCellPositionAreaBase = Inheritance.upcast(?*GeographicMapCellPositionAreaBase, associatedRtsLayer2.?.geographicMapCellPositionAreaBase);
        const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, geographicMapCellPositionArea.?.getNextSurroundingGeographicMapCellPosition());
        _ = Inheritance.call(Inheritance.receiver(self, "getHashtable").getHashtable().?, "put", .{ Layer.ID, associatedRtsLayer });
        _ = Inheritance.call(Inheritance.receiver(self, "getHashtable").getHashtable().?, "put", .{ UnitRTSFormInput.DECAL_ID, Inheritance.receiverOf((Inheritance.cast(?*AdvancedRTSPlayerLayerInterface, rtsPlayerLayerInterface)).?, "getDecalBasicColor").getDecalBasicColor() });
        if (Object.same(Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)], CollidableDestroyableDamageableLayer.getNullInstance())) {
            Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)]), Inheritance.call(self, "getInstance", .{ layerManager, item, geographicMapCellPosition }));
        } else {
            const cellPoint: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(geographicMapCellPosition.?, "getPoint").getPoint());
            const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)]);
            _ = Inheritance.call(rtsLayer.?, "setPosition", .{ cellPoint.?.getX(), cellPoint.?.getY(), Inheritance.receiver(rtsLayer.?, "getZP").getZP() });
            const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, rtsLayer.?.allBinaryGameLayerManagerP);
            const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
            _ = Inheritance.call(rtsLayer.?.geographicMapCellPositionAreaBase.?, "update", .{ geographicMapInterface });
        }
        const cellPoint: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(geographicMapCellPosition.?, "getMidPoint").getMidPoint());
        const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, Inheritance.fieldPointer(self, "newUnconstructedRTSLayerInterfaceArray").*[@intCast(itemIndex)]);
        _ = Inheritance.call(rtsLayer.?, "setPosition", .{ cellPoint.?.getX() - Inheritance.receiver(rtsLayer.?, "getHalfWidth").getHalfWidth(), cellPoint.?.getY() - Inheritance.receiver(rtsLayer.?, "getHalfHeight").getHalfHeight(), Inheritance.receiver(rtsLayer.?, "getZP").getZP() });
        _ = Inheritance.call(self, "attemptBuild", .{ associatedRtsLayer2, rtsPlayerLayerInterface, layerManager, Inheritance.cast(?*RTSLayer, rtsLayer), itemIndex });
    }
    

    // throws Exception
    pub fn attemptBuild(self: *Self, associatedRtsLayer: ?*RTSLayer, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, layerInterface: ?*RTSLayer, itemIndex: i32) void {
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
            _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ BuildingSound.getInstance() });
            _ = Inheritance.call(capital.?, "removeMoney", .{ cost });
            _ = Inheritance.call(AssignWaypointsUtil.getInstance().?, "set", .{ Inheritance.cast(?*UnitLayer, layerInterface), Inheritance.cast(?*AdvancedRTSGameLayer, associatedRtsLayer) });
            _ = Inheritance.call(layerManager.?, "appendAt", .{ layerInterface, PlayersSingletonFactory.total });
            const advancedRTSPlayerLayerInterface: ?*AdvancedRTSPlayerLayerInterface = Inheritance.cast(?*AdvancedRTSPlayerLayerInterface, rtsPlayerLayerInterface);
            const advancedPlayerOwnedRTSLayers: ?*AdvancedPlayerOwnedRTSLayers = Inheritance.upcast(?*AdvancedPlayerOwnedRTSLayers, Inheritance.receiver(advancedRTSPlayerLayerInterface.?, "getAdvancedPlayerOwnedRTSLayers").getAdvancedPlayerOwnedRTSLayers());
            _ = Inheritance.call(advancedPlayerOwnedRTSLayers.?, "addUnit", .{ layerInterface });
            if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.newUnitGameNotificationEvent });
            }
        } else {
            _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ ErrorSound.getInstance() });
            if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.noMoneyGameNotificationEvent });
            }
        }
    }
};

