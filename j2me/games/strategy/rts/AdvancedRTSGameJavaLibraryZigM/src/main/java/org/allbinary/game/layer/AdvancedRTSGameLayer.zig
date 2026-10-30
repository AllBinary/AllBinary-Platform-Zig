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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const NullIndexedAnimationFactory = @import("org/allbinary/animation/NullIndexedAnimationFactory.zig").NullIndexedAnimationFactory;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;
const ShakeAnimationListener = @import("org/allbinary/animation/transition/shake/ShakeAnimationListener.zig").ShakeAnimationListener;
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const DirectionFactory = @import("org/allbinary/direction/DirectionFactory.zig").DirectionFactory;
const GameTypeFactory = @import("org/allbinary/game/GameTypeFactory.zig").GameTypeFactory;
const DestroyedEvent = @import("org/allbinary/game/combat/destroy/event/DestroyedEvent.zig").DestroyedEvent;
const DestroyedEventHandler = @import("org/allbinary/game/combat/destroy/event/DestroyedEventHandler.zig").DestroyedEventHandler;
const DestroyedEventListenerInterface = @import("org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface.zig").DestroyedEventListenerInterface;
const Health = @import("org/allbinary/game/health/Health.zig").Health;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const GroupFactory = @import("org/allbinary/game/identification/GroupFactory.zig").GroupFactory;
const GameKeyEventFactory = @import("org/allbinary/game/input/event/GameKeyEventFactory.zig").GameKeyEventFactory;
const NullRTSFormInputFactory = @import("org/allbinary/game/input/form/NullRTSFormInputFactory.zig").NullRTSFormInputFactory;
const RTSFormInput = @import("org/allbinary/game/input/form/RTSFormInput.zig").RTSFormInput;
const BuildingEventHandler = @import("org/allbinary/game/layer/building/event/BuildingEventHandler.zig").BuildingEventHandler;
const UnitLayer = @import("org/allbinary/game/layer/unit/UnitLayer.zig").UnitLayer;
const Waypoint2LogHelper = @import("org/allbinary/game/layer/waypoint/Waypoint2LogHelper.zig").Waypoint2LogHelper;
const Waypoint2SelectedLogHelper = @import("org/allbinary/game/layer/waypoint/Waypoint2SelectedLogHelper.zig").Waypoint2SelectedLogHelper;
const WaypointBase = @import("org/allbinary/game/layer/waypoint/WaypointBase.zig").WaypointBase;
const WaypointLogHelper = @import("org/allbinary/game/layer/waypoint/WaypointLogHelper.zig").WaypointLogHelper;
const WaypointRunnableLogHelper = @import("org/allbinary/game/layer/waypoint/WaypointRunnableLogHelper.zig").WaypointRunnableLogHelper;
const WaypointRunnableSelectedLogHelper = @import("org/allbinary/game/layer/waypoint/WaypointRunnableSelectedLogHelper.zig").WaypointRunnableSelectedLogHelper;
const WaypointSelectedLogHelper = @import("org/allbinary/game/layer/waypoint/WaypointSelectedLogHelper.zig").WaypointSelectedLogHelper;
const RemoteInfo = @import("org/allbinary/game/multiplayer/layer/RemoteInfo.zig").RemoteInfo;
const NullTickable = @import("org/allbinary/game/tick/NullTickable.zig").NullTickable;
const TickableInterface = @import("org/allbinary/game/tick/TickableInterface.zig").TickableInterface;
const TileLayerPositionIntoViewPosition = @import("org/allbinary/game/view/TileLayerPositionIntoViewPosition.zig").TileLayerPositionIntoViewPosition;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const RectangleFactory = @import("org/allbinary/graphics/RectangleFactory.zig").RectangleFactory;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const FrameUtil = @import("org/allbinary/math/FrameUtil.zig").FrameUtil;
const AllBinaryVibrationME = @import("org/allbinary/media/AllBinaryVibrationME.zig").AllBinaryVibrationME;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const GeographicMapDirectionUtil = @import("org/allbinary/media/graphics/geography/map/GeographicMapDirectionUtil.zig").GeographicMapDirectionUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const AdvancedRTSPlayerLayerInterface = @import("org/allbinary/game/layer/AdvancedRTSPlayerLayerInterface.zig").AdvancedRTSPlayerLayerInterface;
const AdvancedRTSProperties = @import("org/allbinary/game/layer/AdvancedRTSProperties.zig").AdvancedRTSProperties;
const NullPathFindingLayer = @import("org/allbinary/game/layer/NullPathFindingLayer.zig").NullPathFindingLayer;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const RTSLayerUtil = @import("org/allbinary/game/layer/RTSLayerUtil.zig").RTSLayerUtil;
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;
const WaypointBehaviorBase = @import("org/allbinary/game/layer/WaypointBehaviorBase.zig").WaypointBehaviorBase;

pub const AdvancedRTSGameLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.AdvancedRTSGameLayer";
    base: RTSLayer = undefined,
    shakeListener: ?*ShakeAnimationListener = null,
    vibration: ?*AllBinaryVibrationME = null,
    duration: i32 = 0,
    parentLayer: ?*PathFindingLayerInterface = null,
    waypointBehaviorBase: ?*TickableInterface = null,
    // Implements DestroyedEventListenerInterface

    fn initFields(this: *Self) void {
        
        
        
        this.parentLayer = Inheritance.upcast(?*PathFindingLayerInterface, NullPathFindingLayer.NULL_PATH_FINDING_LAYER);
        this.waypointBehaviorBase = Inheritance.upcast(?*TickableInterface, NullTickable.getInstance());
    }
    

    // throws Exception
    pub fn createSimulated() ?*AdvancedRTSGameLayer {
        const nullAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface = Inheritance.upcast(?*AnimationInterfaceFactoryInterface, NullAnimationFactory.getFactoryInstance());
        const nullIndexedAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface = Inheritance.upcast(?*AnimationInterfaceFactoryInterface, NullIndexedAnimationFactory.getFactoryInstance());
        return Inheritance.callStatic(AdvancedRTSGameLayer, "create18", .{ RemoteInfo.REMOTE_INFO, NullPathFindingLayer.NULL_PATH_FINDING_LAYER, AdvancedRTSProperties.createPropertiesSimulated(), GroupFactory.getInstance().?.NULL_GROUP_ARRAY, StringUtil.getInstance().?.EMPTY_STRING, StringUtil.getInstance().?.EMPTY_STRING, Health.NULL_HEALTH, NullRTSFormInputFactory.getInstance(), nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, NullIndexedAnimationFactory.getFactoryInstance(), RectangleFactory.SINGLETON, 0, 0, TileLayerPositionIntoViewPosition.create() });
    }
    

    pub fn create18(remoteInfo: ?*RemoteInfo, parentLayer: ?*PathFindingLayerInterface, advancedRTSProperties: ?*AdvancedRTSProperties, groupInterface: []?*Group, rootName: ?*String, name: ?*String, healthInterface: ?*Health, rtsFormInput: ?*RTSFormInput, animationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface: ?*ProceduralAnimationInterfaceFactoryInterface, rectangle: ?*Rectangle, x: i32, y: i32, viewPosition: ?*ViewPositionBase) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RTSLayer, "create16", .{ remoteInfo, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition }).*;
        this.initFields();
        _ = Inheritance.call(this, "setVisible", .{ false });
        _ = Inheritance.call(this, "setWaypointBehavior", .{ WaypointBehaviorBase.create() });
        this.shakeListener = Inheritance.upcast(@TypeOf(this.shakeListener), advancedRTSProperties.?.shakeListener);
        this.vibration = Inheritance.upcast(@TypeOf(this.vibration), advancedRTSProperties.?.vibration);
        this.duration = advancedRTSProperties.?.duration;
        _ = Inheritance.call(this, "setParentLayer", .{ parentLayer });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn updateWaypointBehavior(self: *Self, geographicMapInterface: ?*BasicGeographicMap) void {
        _ = Inheritance.call(&self.base, "updateWaypointBehavior", .{ geographicMapInterface });
        _ = Inheritance.call(Inheritance.receiverOf(self.getWaypointBehavior().?, "getWaypoint").getWaypoint().?, "setAllBinaryGameLayerManager", .{ Inheritance.fieldPointer(self, "allBinaryGameLayerManagerP").* });
    }
    

    pub fn initVisibility(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface) void {
        const advancedRTSPlayerLayerInterface: ?*AdvancedRTSPlayerLayerInterface = Inheritance.cast(?*AdvancedRTSPlayerLayerInterface, rtsPlayerLayerInterface);
        if (Inheritance.receiver(advancedRTSPlayerLayerInterface.?, "isLocalPlayer").isLocalPlayer() or Object.same(Inheritance.receiver(advancedRTSPlayerLayerInterface.?, "getGameType").getGameType(), GameTypeFactory.getInstance().?.BOT)) {
            _ = Inheritance.call(self, "setVisible", .{ true });
        } else {
            _ = Inheritance.call(self, "setVisible", .{ false });
        }
    }
    

    // throws Exception
    pub fn construct(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface) void {
        _ = Inheritance.call(&self.base, "construct", .{ rtsPlayerLayerInterface });
        _ = Inheritance.call(self, "initVisibility", .{ rtsPlayerLayerInterface });
        _ = Inheritance.call(BuildingEventHandler.getInstance().?, "addListenerInterface", .{ Inheritance.receiverOf(self.getWaypointBehavior().?, "getWaypoint").getWaypoint() });
    }
    

    // throws Exception
    pub fn setDestroyed(self: *Self, destroyed: bool) void {
        _ = Inheritance.call(&self.base, "setDestroyed", .{ destroyed });
        if (Inheritance.receiver(self, "isDestroyed").isDestroyed()) {
            _ = Inheritance.call(BuildingEventHandler.getInstance().?, "removeListener", .{ Inheritance.receiverOf(self.getWaypointBehavior().?, "getWaypoint").getWaypoint() });
            _ = Inheritance.call(BuildingEventHandler.getInstance().?, "removeListener", .{ self });
            _ = Inheritance.call(DestroyedEventHandler.getInstance().?, "addListener", .{ self });
            _ = Inheritance.call(RTSLayerUtil.getInstance().?, "destroyAndClear", .{ Inheritance.receiverOf(self.getWaypointBehavior().?, "getOwnedWaypointList").getOwnedWaypointList() });
        }
    }
    

    pub fn getParentLayer(self: *Self) ?*PathFindingLayerInterface {
        return self.parentLayer;
    }
    

    pub fn setParentLayer(self: *Self, parentLayer: ?*PathFindingLayerInterface) void {
        self.parentLayer = parentLayer;
    }
    

    pub fn getWaypointBehavior(self: *Self) ?*WaypointBehaviorBase {
        return Inheritance.cast(?*WaypointBehaviorBase, self.waypointBehaviorBase);
    }
    

    pub fn setWaypointBehavior(self: *Self, unitWaypointHelper: ?*WaypointBehaviorBase) void {
        self.waypointBehaviorBase = Inheritance.upcast(@TypeOf(self.waypointBehaviorBase), unitWaypointHelper);
    }
    

    pub fn getWaypointLogHelper(self: *Self) ?*WaypointLogHelper {
        return Inheritance.upcast(?*WaypointLogHelper, Inheritance.fieldPointer(self, "waypointLogHelperP").*);
    }
    

    pub fn getWaypoint2LogHelper(self: *Self) ?*Waypoint2LogHelper {
        return Inheritance.upcast(?*Waypoint2LogHelper, Inheritance.fieldPointer(self, "waypoint2LogHelperP").*);
    }
    

    pub fn getWaypointRunnableLogHelper(self: *Self) ?*WaypointRunnableLogHelper {
        return Inheritance.upcast(?*WaypointRunnableLogHelper, Inheritance.fieldPointer(self, "waypointRunnableLogHelperP").*);
    }
    

    pub fn shouldAddWaypointFromBuilding(self: *Self) bool {
        if (!Object.same(self.parentLayer, NullPathFindingLayer.NULL_PATH_FINDING_LAYER)) {
            const parentAdvancedRTSGameLayer: ?*AdvancedRTSGameLayer = Inheritance.cast(?*AdvancedRTSGameLayer, self.parentLayer);
            if (!Object.same(Inheritance.receiver(parentAdvancedRTSGameLayer.?, "getType").getType(), UnitLayer.getStaticType())) {
                return true;
            }
        }
        return false;
    }
    

    pub fn isWaypointListEmptyOrOnlyTargets(self: *Self) bool {
        if (!Object.same(Inheritance.receiver(self, "getType").getType(), UnitLayer.getStaticType())) {
            return true;
        }
        return false;
    }
    

    // throws Exception
    pub fn buildingChase(self: *Self, allbinaryLayer: ?*AllBinaryLayer, cellPosition: ?*GeographicMapCellPosition) bool {
        _ = allbinaryLayer;
        const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.receiver(self, "getCurrentGeographicMapCellPosition").getCurrentGeographicMapCellPosition());
        const buildingDirection: ?*Direction = Inheritance.upcast(?*Direction, Inheritance.call(GeographicMapDirectionUtil.getInstance().?, "getDirectionFromCellPositionToAdjacentCellPosition", .{ geographicMapCellPosition, cellPosition }));
        const angleInfo: ?*AngleInfo = Inheritance.upcast(?*AngleInfo, Inheritance.receiverOf(Inheritance.receiver(self, "getRotationAnimationInterface").getRotationAnimationInterface().?, "getAngleInfoP").getAngleInfoP());
        const angle: i32 = Inheritance.call(FrameUtil.getInstance().?, "adjustAngleToFrameAngle", .{ angleInfo.?.getAngle() + 90 });
        const gameKeyEventFactory: ?*GameKeyEventFactory = Inheritance.upcast(?*GameKeyEventFactory, GameKeyEventFactory.getInstance());
        if (Object.same(buildingDirection, DirectionFactory.getInstance().?.UP)) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayer2LogHelper").*.?, "buildingAbove", .{ self });
            if (angle > 180 and angle < 360) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayer2LogHelper").*.?, "buildingChaseLeft", .{ self, angle });
                _ = Inheritance.call(Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList().?, "add", .{ Inheritance.call(gameKeyEventFactory.?, "getInstanceForKey", .{ self, Canvas.LEFT }) });
                if (angle <= 190) {
                    return true;
                }
            } else {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayer2LogHelper").*.?, "buildingChaseRight", .{ self, angle });
                _ = Inheritance.call(Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList().?, "add", .{ Inheritance.call(gameKeyEventFactory.?, "getInstanceForKey", .{ self, Canvas.RIGHT }) });
                if (angle >= 170) {
                    return true;
                }
            }
        } else if (Object.same(buildingDirection, DirectionFactory.getInstance().?.DOWN)) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayer2LogHelper").*.?, "buildingDown", .{ self });
            if (angle > 180 and angle < 360) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayer2LogHelper").*.?, "buildingChaseLeft", .{ self, angle });
                _ = Inheritance.call(Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList().?, "add", .{ Inheritance.call(gameKeyEventFactory.?, "getInstanceForKey", .{ self, Canvas.RIGHT }) });
                if (angle > 315) {
                    return true;
                }
            } else {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayer2LogHelper").*.?, "buildingChaseRight", .{ self, angle });
                _ = Inheritance.call(Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList().?, "add", .{ Inheritance.call(gameKeyEventFactory.?, "getInstanceForKey", .{ self, Canvas.LEFT }) });
                if (angle < 45) {
                    return true;
                }
            }
        } else if (Object.same(buildingDirection, DirectionFactory.getInstance().?.LEFT)) {
            _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "rtsLayer2LogHelper").*.?, "buildingLeft").buildingLeft();
            if (angle > 90 and angle < 270) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayer2LogHelper").*.?, "buildingChaseDown", .{ self, angle });
                _ = Inheritance.call(Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList().?, "add", .{ Inheritance.call(gameKeyEventFactory.?, "getInstanceForKey", .{ self, Canvas.LEFT }) });
                if (angle < 135) {
                    return true;
                }
            } else {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayer2LogHelper").*.?, "buildingChaseUp", .{ self, angle });
                _ = Inheritance.call(Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList().?, "add", .{ Inheritance.call(gameKeyEventFactory.?, "getInstanceForKey", .{ self, Canvas.RIGHT }) });
                if (angle > 45) {
                    return true;
                }
            }
        } else if (Object.same(buildingDirection, DirectionFactory.getInstance().?.RIGHT)) {
            _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "rtsLayer2LogHelper").*.?, "buildingRight").buildingRight();
            if (angle > 90 and angle < 270) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayer2LogHelper").*.?, "buildingChaseDown", .{ self, angle });
                _ = Inheritance.call(Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList().?, "add", .{ Inheritance.call(gameKeyEventFactory.?, "getInstanceForKey", .{ self, Canvas.RIGHT }) });
                if (angle > 225) {
                    return true;
                }
            } else {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayer2LogHelper").*.?, "buildingChaseUp", .{ self, angle });
                _ = Inheritance.call(Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList().?, "add", .{ Inheritance.call(gameKeyEventFactory.?, "getInstanceForKey", .{ self, Canvas.LEFT }) });
                if (angle < 315 and angle > 180) {
                    return true;
                }
            }
        } else {
            return true;
        }
        return false;
    }
    

    // throws Exception
    pub fn getSurroundingGeographicMapCellPositionList(self: *Self) ?*BasicArrayList {
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, Inheritance.fieldPointer(self, "allBinaryGameLayerManagerP").*);
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        _ = Inheritance.call(Inheritance.fieldPointer(self, "geographicMapCellPositionAreaBase").*.?, "update", .{ geographicMapInterface });
        return Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(Inheritance.fieldPointer(self, "geographicMapCellPositionAreaBase").*.?, "getSurroundingGeographicMapCellPositionList").getSurroundingGeographicMapCellPositionList());
    }
    

    pub fn setSelected(self: *Self, selected: bool) void {
        _ = Inheritance.call(&self.base, "setSelected", .{ selected });
        if (Inheritance.fieldPointer(self, "debug").*) {
            if (selected) {
                Inheritance.fieldPointer(self, "waypointLogHelperP").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "waypointLogHelperP").*), WaypointSelectedLogHelper.getInstance());
                Inheritance.fieldPointer(self, "waypoint2LogHelperP").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "waypoint2LogHelperP").*), Waypoint2SelectedLogHelper.getInstance());
                Inheritance.fieldPointer(self, "waypointRunnableLogHelperP").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "waypointRunnableLogHelperP").*), WaypointRunnableSelectedLogHelper.getInstance());
            } else {
                Inheritance.fieldPointer(self, "waypointLogHelperP").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "waypointLogHelperP").*), WaypointLogHelper.getInstance());
                Inheritance.fieldPointer(self, "waypoint2LogHelperP").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "waypoint2LogHelperP").*), Waypoint2LogHelper.getInstance());
                Inheritance.fieldPointer(self, "waypointRunnableLogHelperP").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "waypointRunnableLogHelperP").*), WaypointRunnableLogHelper.getInstance());
            }
        }
    }
    

    pub fn onDestroyed(self: *Self, destroyedEvent: ?*DestroyedEvent) void {
        { // try
            const layerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(destroyedEvent.?, "getLayerInterface").getLayerInterface());
            if (Object.same(layerInterface, self)) {
                _ = Inheritance.call(DestroyedEventHandler.getInstance().?, "removeListener", .{ self });
                const waypoint: ?*WaypointBase = Inheritance.cast(?*WaypointBase, Inheritance.receiverOf(self.getWaypointBehavior().?, "getWaypoint").getWaypoint());
                _ = waypoint.?.reset();
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("onDestroyed"), e });
    }
};

