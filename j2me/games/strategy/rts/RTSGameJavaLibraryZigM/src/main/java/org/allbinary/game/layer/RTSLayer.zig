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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const RTSFormInput = @import("org/allbinary/game/input/form/RTSFormInput.zig").RTSFormInput;
const MultiPlayerGameLayer = @import("org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer.zig").MultiPlayerGameLayer;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const NullIndexedAnimationFactory = @import("org/allbinary/animation/NullIndexedAnimationFactory.zig").NullIndexedAnimationFactory;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;
const RotationAnimation = @import("org/allbinary/animation/RotationAnimation.zig").RotationAnimation;
const CaptionAnimationHelperBase = @import("org/allbinary/animation/caption/CaptionAnimationHelperBase.zig").CaptionAnimationHelperBase;
const DestroyedLayerProcessor = @import("org/allbinary/game/combat/destroy/DestroyedLayerProcessor.zig").DestroyedLayerProcessor;
const Health = @import("org/allbinary/game/health/Health.zig").Health;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const GroupFactory = @import("org/allbinary/game/identification/GroupFactory.zig").GroupFactory;
const GameInputInterface = @import("org/allbinary/game/input/GameInputInterface.zig").GameInputInterface;
const GameInputProcessor = @import("org/allbinary/game/input/GameInputProcessor.zig").GameInputProcessor;
const GameInputProcessorUtil = @import("org/allbinary/game/input/GameInputProcessorUtil.zig").GameInputProcessorUtil;
const GameKeyEventSourceInterface = @import("org/allbinary/game/input/GameKeyEventSourceInterface.zig").GameKeyEventSourceInterface;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const NullRTSFormInputFactory = @import("org/allbinary/game/input/form/NullRTSFormInputFactory.zig").NullRTSFormInputFactory;
const Waypoint2LogHelper = @import("org/allbinary/game/layer/waypoint/Waypoint2LogHelper.zig").Waypoint2LogHelper;
const WaypointLogHelper = @import("org/allbinary/game/layer/waypoint/WaypointLogHelper.zig").WaypointLogHelper;
const WaypointRunnableLogHelper = @import("org/allbinary/game/layer/waypoint/WaypointRunnableLogHelper.zig").WaypointRunnableLogHelper;
const TickableInterface = @import("org/allbinary/game/tick/TickableInterface.zig").TickableInterface;
const TrackingEvent = @import("org/allbinary/game/tracking/TrackingEvent.zig").TrackingEvent;
const TileLayerPositionIntoViewPosition = @import("org/allbinary/game/view/TileLayerPositionIntoViewPosition.zig").TileLayerPositionIntoViewPosition;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const RectangleFactory = @import("org/allbinary/graphics/RectangleFactory.zig").RectangleFactory;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const ViewPositionEventHandler = @import("org/allbinary/view/event/ViewPositionEventHandler.zig").ViewPositionEventHandler;
const RemoteInfo = @import("org/allbinary/game/multiplayer/layer/RemoteInfo.zig").RemoteInfo;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const LayerDistanceUtil = @import("org/allbinary/math/LayerDistanceUtil.zig").LayerDistanceUtil;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const GeographicMapCellPositionArea = @import("org/allbinary/game/layer/GeographicMapCellPositionArea.zig").GeographicMapCellPositionArea;
const GeographicMapCellPositionAreaBase = @import("org/allbinary/game/layer/GeographicMapCellPositionAreaBase.zig").GeographicMapCellPositionAreaBase;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const RTSInterface = @import("org/allbinary/game/layer/RTSInterface.zig").RTSInterface;
const RTSLayer2LogHelper = @import("org/allbinary/game/layer/RTSLayer2LogHelper.zig").RTSLayer2LogHelper;
const RTSLayerUtil = @import("org/allbinary/game/layer/RTSLayerUtil.zig").RTSLayerUtil;
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;
const SelectionHudPaintable = @import("org/allbinary/game/layer/SelectionHudPaintable.zig").SelectionHudPaintable;
const WaypointBehaviorBase = @import("org/allbinary/game/layer/WaypointBehaviorBase.zig").WaypointBehaviorBase;

pub const RTSLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.RTSLayer";
    pub const java_interfaces = .{ RTSInterface, PathFindingLayerInterface };
    base: MultiPlayerGameLayer = undefined,
    debug: bool = false,
    showMoreCaptionStates: bool = false,
    inputProcessorArray: []?*GameInputProcessor = &.{},
    rtsLayer2LogHelper: ?*RTSLayer2LogHelper = null,
    waypointLogHelperP: ?*WaypointLogHelper = null,
    waypoint2LogHelperP: ?*Waypoint2LogHelper = null,
    waypointRunnableLogHelperP: ?*WaypointRunnableLogHelper = null,
    rtsFormInput: ?*RTSFormInput = null,
    verticleBuildAnimationInterface: ?*IndexedAnimation = null,
    rangeAnimation: ?*Animation = null,
    initRangeAnimation: ?*Animation = null,
    sensorRangeAnimation: ?*Animation = null,
    initSensorRangeAnimation: ?*Animation = null,
    baseAnimationInterface: ?*Animation = null,
    buildFrameTimeHelper: ?*TimeDelayHelper = null,
    buildAnimationInterface: ?*Animation = null,
    animationInterface: ?*Animation = null,
    initAnimationInterface: ?*IndexedAnimation = null,
    indexedButShouldBeRotationAnimationInterface: ?*IndexedAnimation = null,
    emptyAnimationInterface: ?*IndexedAnimation = null,
    destroyAnimationInterface: ?*IndexedAnimation = null,
    fireTimeHelper: ?*TimeDelayHelper = null,
    rootName: ?*String = null,
    hashtable: ?*ABHashtable = null,
    BUILD_VALUE: i32 = 0,
    geographicMapCellPositionAreaBase: ?*GeographicMapCellPositionAreaBase = null,
    healthInterface: ?*Health = null,
    level: i32 = 0,
    maxLevel: i32 = 0,
    hackVerticleBuild: i32 = 0,
    slightAngle: i32 = 0,
    percentCompleteP: i32 = 0,
    destroyed: bool = false,
    selected: bool = false,
    rtsLayerUtil: ?*RTSLayerUtil = null,
    layerDistanceUtil: ?*LayerDistanceUtil = null,
    // Implements TickableInterface
    // Implements GameInputInterface
    // Implements GameKeyEventSourceInterface
    // Implements RTSInterface
    // Implements PathFindingLayerInterface
    const id: i32 = 0;
    pub const MAIN_INDEX: i32 = 0;
    pub const SECONDARY_INDEX: i32 = 1;

    fn initFields(this: *Self) void {
        this.debug = true;
        this.showMoreCaptionStates = this.debug;
        this.inputProcessorArray = array_N67482: { const array_N67482_array = allocator.alloc(?*GameInputProcessor, @intCast(InputFactory.getInstance().?.MAX)) catch unreachable; @memset(array_N67482_array, null); break :array_N67482 array_N67482_array; };
        this.rtsLayer2LogHelper = Inheritance.upcast(?*RTSLayer2LogHelper, RTSLayer2LogHelper.getInstance());
        this.waypointLogHelperP = Inheritance.upcast(?*WaypointLogHelper, WaypointLogHelper.getInstance());
        this.waypoint2LogHelperP = Inheritance.upcast(?*Waypoint2LogHelper, Waypoint2LogHelper.getInstance());
        this.waypointRunnableLogHelperP = Inheritance.upcast(?*WaypointRunnableLogHelper, WaypointRunnableLogHelper.getInstance());
        
        
        
        
        
        
        
        this.buildFrameTimeHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 50 });
        
        
        
        
        
        
        this.fireTimeHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 700 });
        
        this.hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        this.BUILD_VALUE = 63;
        
        this.healthInterface = Inheritance.upcast(?*Health, Health.NULL_HEALTH);
        this.level = 1;
        this.maxLevel = 1;
        this.hackVerticleBuild = this.BUILD_VALUE;
        this.slightAngle = 0;
        this.percentCompleteP = 0;
        this.destroyed = false;
        this.selected = false;
        this.rtsLayerUtil = Inheritance.upcast(?*RTSLayerUtil, RTSLayerUtil.getInstance());
        this.layerDistanceUtil = Inheritance.upcast(?*LayerDistanceUtil, LayerDistanceUtil.getInstance());
    }
    

    // throws Exception
    pub fn createSimulatedInstance(remoteInfo: ?*RemoteInfo) ?*RTSLayer {
        _ = remoteInfo;
        const nullAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface = Inheritance.upcast(?*AnimationInterfaceFactoryInterface, NullAnimationFactory.getFactoryInstance());
        const nullIndexedAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface = Inheritance.upcast(?*AnimationInterfaceFactoryInterface, NullIndexedAnimationFactory.getFactoryInstance());
        return Inheritance.callStatic(RTSLayer, "create16", .{ RemoteInfo.REMOTE_INFO, GroupFactory.getInstance().?.NULL_GROUP_ARRAY, StringUtil.getInstance().?.EMPTY_STRING, StringUtil.getInstance().?.EMPTY_STRING, Health.NULL_HEALTH, NullRTSFormInputFactory.getInstance(), nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, NullIndexedAnimationFactory.getFactoryInstance(), RectangleFactory.SINGLETON, 0, 0, TileLayerPositionIntoViewPosition.create() });
    }
    

    pub fn create16(remoteInfo: ?*RemoteInfo, groupInterface: []?*Group, rootName: ?*String, name: ?*String, healthInterface: ?*Health, rtsFormInput: ?*RTSFormInput, animationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface: ?*ProceduralAnimationInterfaceFactoryInterface, rectangle: ?*Rectangle, x: i32, y: i32, viewPosition: ?*ViewPositionBase) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(MultiPlayerGameLayer, "create5", .{ remoteInfo, groupInterface, name, rectangle, viewPosition }).*;
        this.initFields();
        _ = this.initInputProcessors();
        this.rootName = rootName;
        this.healthInterface = healthInterface;
        this.rtsFormInput = rtsFormInput;
        _ = Inheritance.call(this, "setPosition", .{ x, y, Inheritance.fieldPointer(this, "z").* });
        this.verticleBuildAnimationInterface = Inheritance.cast(?*IndexedAnimation, Inheritance.call(verticleBuildAnimationInterfaceFactoryInterface.?, "getInstance", .{ 0 }));
        this.buildAnimationInterface = Inheritance.upcast(@TypeOf(this.buildAnimationInterface), Inheritance.call(buildAnimationInterfaceFactoryInterface.?, "getInstance", .{ 0 }));
        this.baseAnimationInterface = Inheritance.upcast(@TypeOf(this.baseAnimationInterface), Inheritance.call(baseAnimationInterfaceFactoryInterface.?, "getInstance", .{ 0 }));
        this.emptyAnimationInterface = Inheritance.cast(?*IndexedAnimation, Inheritance.call(emptyAnimationInterfaceFactoryInterface.?, "getInstance", .{ 0 }));
        this.indexedButShouldBeRotationAnimationInterface = Inheritance.cast(?*IndexedAnimation, Inheritance.call(animationInterfaceFactoryInterface.?, "getInstance", .{ 0 }));
        this.initAnimationInterface = this.indexedButShouldBeRotationAnimationInterface;
        this.destroyAnimationInterface = Inheritance.cast(?*IndexedAnimation, Inheritance.call(proceduralAnimationInterfaceFactoryInterface.?, "getInstanceAnimation", .{ this.indexedButShouldBeRotationAnimationInterface }));
        const animation: ?*Animation = Inheritance.upcast(?*Animation, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
        this.rangeAnimation = animation;
        this.initRangeAnimation = animation;
        this.sensorRangeAnimation = animation;
        this.initSensorRangeAnimation = animation;
        this.animationInterface = Inheritance.upcast(@TypeOf(this.animationInterface), this.initAnimationInterface);
        this.geographicMapCellPositionAreaBase = Inheritance.upcast(@TypeOf(this.geographicMapCellPositionAreaBase), Inheritance.callStatic(GeographicMapCellPositionArea, "create1", .{ this }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn setAllBinaryGameLayerManager(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) void {
        _ = Inheritance.call(&self.base, "setAllBinaryGameLayerManager", .{ allBinaryGameLayerManager });
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, Inheritance.fieldPointer(self, "allBinaryGameLayerManagerP").*);
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        const tiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        const viewPosition2: ?*TileLayerPositionIntoViewPosition = Inheritance.cast(?*TileLayerPositionIntoViewPosition, Inheritance.receiver(self, "getViewPosition").getViewPosition());
        _ = Inheritance.call(viewPosition2.?, "setTiledLayer", .{ tiledLayer });
        _ = Inheritance.call(self, "updateWaypointBehavior", .{ geographicMapInterface });
    }
    

    // throws Exception
    pub fn updateWaypointBehavior(self: *Self, geographicMapInterface: ?*BasicGeographicMap) void {
        _ = Inheritance.call(self.geographicMapCellPositionAreaBase.?, "update", .{ geographicMapInterface });
    }
    

    // throws Exception
    pub fn construct(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface) void {
        _ = rtsPlayerLayerInterface;
        _ = Inheritance.call(ViewPositionEventHandler.getInstance().?, "addListener", .{ Inheritance.cast(?*AllBinaryLayer, self) });
        self.animationInterface = self.buildAnimationInterface;
        self.hackVerticleBuild = 0;
    }
    

    pub fn select(self: *Self) void {
        self.rangeAnimation = self.initRangeAnimation;
        self.sensorRangeAnimation = self.initSensorRangeAnimation;
        _ = Inheritance.call(self, "setSelected", .{ true });
    }
    

    pub fn deselect(self: *Self) void {
        const animation: ?*Animation = Inheritance.upcast(?*Animation, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
        self.rangeAnimation = animation;
        self.sensorRangeAnimation = animation;
        _ = Inheritance.call(self, "setSelected", .{ false });
    }
    

    pub fn setSelected(self: *Self, selected: bool) void {
        self.selected = selected;
    }
    

    pub fn isSelected(self: *Self) bool {
        return self.selected;
    }
    

    pub fn getPercentComplete(self: *Self) i32 {
        return self.percentCompleteP;
    }
    

    pub fn getScrollSelectionForm(self: *Self) ?*ScrollSelectionForm {
        _ = self;
        return Inheritance.upcast(?*ScrollSelectionForm, ScrollSelectionForm.getNullScrollSelectionForm());
    }
    

    pub fn initInputProcessors(self: *Self) void {
        _ = Inheritance.callStatic(GameInputProcessorUtil, "init", .{ self.inputProcessorArray });
    }
    

    // throws Exception
    pub fn processBuiltTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        self.animationInterface = Inheritance.upcast(@TypeOf(self.animationInterface), self.indexedButShouldBeRotationAnimationInterface);
    }
    

    pub fn processTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        { // try
            if (self.isCompleted()) {
                _ = Inheritance.call(self, "processBuiltTick", .{ allBinaryLayerManager });
            } else {
                _ = self.build();
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("processTick"), e });
    }
    

    // throws Exception
    pub fn processInput(self: *Self, layerManager: ?*AllBinaryLayerManager) void {
        _ = layerManager;
        _ = self;
    }
    

    pub fn reload(self: *Self) void {
        _ = self;
    }
    

    pub fn onMovement(self: *Self, trackingEvent: ?*TrackingEvent) void {
        _ = trackingEvent;
        _ = self;
    }
    

    // throws Exception
    pub fn onMovementFound(self: *Self, trackingEvent: ?*TrackingEvent) void {
        _ = trackingEvent;
        _ = self;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paintFirst", .{ graphics });
        const viewPosition: ?*ViewPositionBase = Inheritance.upcast(?*ViewPositionBase, Inheritance.receiver(self, "getViewPosition").getViewPosition());
        const viewX: i32 = Inheritance.receiver(viewPosition.?, "getX").getX();
        const viewY: i32 = Inheritance.receiver(viewPosition.?, "getY").getY();
        _ = Inheritance.call(self.getAnimationInterface().?, "paintXY", .{ graphics, viewX, viewY });
    }
    

    // throws Exception
    pub fn damage(self: *Self, damage_: i32, damageType: i32) void {
        _ = damage_;
        _ = damageType;
        _ = self;
    }
    

    pub fn getSourceId(self: *Self) i32 {
        _ = self;
        return RTSLayer.id;
    }
    

    pub fn downgrade(self: *Self) void {
        _ = Inheritance.call(self.rtsLayerUtil.?, "downgrade", .{ self });
    }
    

    pub fn upgrade(self: *Self) void {
        _ = Inheritance.call(self.rtsLayerUtil.?, "upgrade", .{ self });
    }
    

    pub fn isCompleted(self: *Self) bool {
        if (self.hackVerticleBuild < self.BUILD_VALUE) {
            return false;
        } else {
            return true;
        }
    }
    

    // throws Exception
    pub fn build(self: *Self) void {
        if (self.buildFrameTimeHelper.?.isTimeTNT()) {
            self.animationInterface = self.buildAnimationInterface;
            _ = Inheritance.receiver(self.verticleBuildAnimationInterface.?, "nextFrame").nextFrame();
            self.hackVerticleBuild += 1;
        }
        self.percentCompleteP = @divTrunc(100 * self.hackVerticleBuild, self.BUILD_VALUE);
        _ = Inheritance.receiverOf(self.getHudPaintable().?, "updateInfo").updateInfo();
    }
    

    pub fn isSelfUpgradeable(self: *Self) bool {
        _ = self;
        return true;
    }
    

    pub fn getCost(self: *Self) i32 {
        return Inheritance.call(self.rtsLayerUtil.?, "getCost", .{ self });
    }
    

    pub fn getDowngradeCost(self: *Self) i32 {
        return Inheritance.call(self.rtsLayerUtil.?, "getDowngradeCost", .{ self });
    }
    

    pub fn getUpgradeCost(self: *Self) i32 {
        return Inheritance.call(self.rtsLayerUtil.?, "getUpgradeCost", .{ self });
    }
    

    pub fn isUpgradeable(self: *Self) bool {
        if (self.getLevel() < self.getMaxLevel()) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn isDowngradeable(self: *Self) bool {
        if (self.getLevel() > 1) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn getLevel(self: *Self) i32 {
        return self.level;
    }
    

    pub fn setLevel(self: *Self, level: i32) void {
        self.level = level;
    }
    

    pub fn getVerticleBuildAnimationInterface(self: *Self) ?*Animation {
        return Inheritance.upcast(?*Animation, self.verticleBuildAnimationInterface);
    }
    

    pub fn getAnimationInterface(self: *Self) ?*Animation {
        return self.animationInterface;
    }
    

    pub fn setAnimationInterface(self: *Self, animationInterface: ?*Animation) void {
        self.animationInterface = animationInterface;
    }
    

    // throws Exception
    pub fn setTarget(self: *Self, targetGameLayer: ?*PathFindingLayerInterface) void {
        const anotherTargetDistance: i32 = Inheritance.call(self.layerDistanceUtil.?, "getDistance", .{ Inheritance.cast(?*AllBinaryLayer, self), Inheritance.cast(?*AllBinaryLayer, targetGameLayer) });
        const waypointBehaviorBase: ?*WaypointBehaviorBase = Inheritance.upcast(?*WaypointBehaviorBase, self.getWaypointBehavior());
        _ = Inheritance.call(waypointBehaviorBase.?, "setTargetWithDistance", .{ Inheritance.cast(?*PathFindingLayerInterface, targetGameLayer), anotherTargetDistance });
    }
    

    pub fn createHudPaintable(self: *Self) ?*SelectionHudPaintable {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getHudPaintable(self: *Self) ?*SelectionHudPaintable {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getMaxLevel(self: *Self) i32 {
        return self.maxLevel;
    }
    

    pub fn setMaxLevel(self: *Self, maxLevel: i32) void {
        self.maxLevel = maxLevel;
    }
    

    pub fn getHealthInterface(self: *Self) ?*Health {
        return self.healthInterface;
    }
    

    pub fn setHealthInterface(self: *Self, healthInterface: ?*Health) void {
        self.healthInterface = healthInterface;
    }
    

    pub fn getRTSFormInput(self: *Self) ?*RTSFormInput {
        return self.rtsFormInput;
    }
    

    // throws Exception
    pub fn isDestroyed(self: *Self) bool {
        return self.destroyed;
    }
    

    // throws Exception
    pub fn setDestroyed(self: *Self, destroyed: bool) void {
        self.destroyed = destroyed;
        if (self.isDestroyed()) {
            _ = Inheritance.call(DestroyedLayerProcessor.getInstance().?, "add", .{ self });
            _ = Inheritance.call(ViewPositionEventHandler.getInstance().?, "removeListener", .{ self });
        }
    }
    

    pub fn getEndGeographicMapCellPositionList(self: *Self) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, self.geographicMapCellPositionAreaBase.?.getOccupyingGeographicMapCellPositionList());
    }
    

    pub fn getGeographicMapCellPositionArea(self: *Self) ?*GeographicMapCellPositionAreaBase {
        return self.geographicMapCellPositionAreaBase;
    }
    

    pub fn shouldHandleStartSameAsEnd(self: *Self) bool {
        _ = self;
        return true;
    }
    

    // throws Exception
    pub fn handleCost(self: *Self, ownerLayer: ?*PathFindingLayerInterface) void {
        _ = ownerLayer;
        _ = self;
    }
    

    pub fn getWaypointBehavior(self: *Self) ?*WaypointBehaviorBase {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getParentLayer(self: *Self) ?*PathFindingLayerInterface {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getRTSLayer2LogHelper(self: *Self) ?*RTSLayer2LogHelper {
        return self.rtsLayer2LogHelper;
    }
    

    pub fn getWaypointLogHelper(self: *Self) ?*WaypointLogHelper {
        return self.waypointLogHelperP;
    }
    

    pub fn getWaypoint2LogHelper(self: *Self) ?*Waypoint2LogHelper {
        return self.waypoint2LogHelperP;
    }
    

    pub fn getWaypointRunnableLogHelper(self: *Self) ?*WaypointRunnableLogHelper {
        return self.waypointRunnableLogHelperP;
    }
    

    pub fn shouldAddWaypointFromBuilding(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getCaptionAnimationHelper(self: *Self) ?*CaptionAnimationHelperBase {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn isShowMoreCaptionStates(self: *Self) bool {
        return self.showMoreCaptionStates;
    }
    

    // throws Exception
    pub fn init(self: *Self, geographicMapCellHistory: ?*GeographicMapCellHistory, geographicMapCellPositionBasicArrayList: ?*BasicArrayList) void {
        _ = geographicMapCellHistory;
        _ = geographicMapCellPositionBasicArrayList;
        _ = self;
    }
    

    // throws Exception
    pub fn getCurrentGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getTopLeftGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getMoveOutOfBuildAreaPath(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*BasicArrayList {
        _ = geographicMapCellPosition;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn setClosestGeographicMapCellHistory(self: *Self, pathsList: ?*BasicArrayList) void {
        _ = pathsList;
        _ = self;
    }
    

    pub fn teleportTo(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        _ = geographicMapCellPosition;
        _ = self;
    }
    

    // throws Exception
    pub fn setLoad(self: *Self, resource: i32) void {
        _ = resource;
        _ = self;
    }
    

    // throws Exception
    pub fn getSurroundingGeographicMapCellPositionList(self: *Self) ?*BasicArrayList {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn trackTo(self: *Self, reason: ?*String) void {
        _ = reason;
        _ = self;
    }
    

    // throws Exception
    pub fn trackToDXY(self: *Self, dx: i32, dy: i32) void {
        _ = dx;
        _ = dy;
        _ = self;
    }
    

    pub fn isWaypointListEmptyOrOnlyTargets(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getTrackingEvent(self: *Self) ?*TrackingEvent {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn buildingChase(self: *Self, allbinaryLayer: ?*AllBinaryLayer, cellPosition: ?*GeographicMapCellPosition) bool {
        _ = allbinaryLayer;
        _ = cellPosition;
        _ = self;
        return false;
    }
    

    pub fn allStop(self: *Self) void {
        _ = self;
    }
    

    pub fn getMinStaticType() i32 {
        return 1;
    }
    

    pub fn getMaxStaticType() i32 {
        return 4;
    }
    

    pub fn isRTSLayer(layerInterface: ?*AllBinaryLayer) bool {
        if (Inheritance.receiver(layerInterface.?, "getType").getType() >= RTSLayer.getMinStaticType() and Inheritance.receiver(layerInterface.?, "getType").getType() <= RTSLayer.getMaxStaticType()) {
            return true;
        }
        return false;
    }
    

    pub fn implmentsTickableInterface(self: *Self) bool {
        _ = self;
        return true;
    }
    

    pub fn implmentsGameInputInterface(self: *Self) bool {
        _ = self;
        return true;
    }
    

    pub fn getRootName(self: *Self) ?*String {
        return self.rootName;
    }
    

    pub fn getRotationAnimationInterface(self: *Self) ?*RotationAnimation {
        return Inheritance.cast(?*RotationAnimation, self.indexedButShouldBeRotationAnimationInterface);
    }
    

    pub fn setFrame(self: *Self, index: i32) void {
        _ = Inheritance.call(self.getRotationAnimationInterface().?, "setFrame", .{ index });
    }
    

    pub fn setRotationAnimationInterface(self: *Self, rotationAnimationInterface: ?*RotationAnimation) void {
        self.indexedButShouldBeRotationAnimationInterface = Inheritance.upcast(@TypeOf(self.indexedButShouldBeRotationAnimationInterface), rotationAnimationInterface);
    }
};

