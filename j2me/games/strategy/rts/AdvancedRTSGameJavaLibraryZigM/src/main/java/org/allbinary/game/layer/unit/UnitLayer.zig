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
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const ExplosionBasicSound = @import("org/allbinary/ag/weapon/media/audio/ExplosionBasicSound.zig").ExplosionBasicSound;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const FeaturedAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.zig").FeaturedAnimationInterfaceFactoryInterfaceFactory;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const NullIndexedAnimationFactory = @import("org/allbinary/animation/NullIndexedAnimationFactory.zig").NullIndexedAnimationFactory;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;
const RotationAnimation = @import("org/allbinary/animation/RotationAnimation.zig").RotationAnimation;
const CaptionAnimationHelper = @import("org/allbinary/animation/caption/CaptionAnimationHelper.zig").CaptionAnimationHelper;
const CaptionAnimationHelperBase = @import("org/allbinary/animation/caption/CaptionAnimationHelperBase.zig").CaptionAnimationHelperBase;
const AdjustedCircleAnimation = @import("org/allbinary/animation/vector/AdjustedCircleAnimation.zig").AdjustedCircleAnimation;
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const DamageFloaters = @import("org/allbinary/game/combat/damage/DamageFloaters.zig").DamageFloaters;
const PtsDamageFloaters = @import("org/allbinary/game/combat/damage/PtsDamageFloaters.zig").PtsDamageFloaters;
const WeaponProperties = @import("org/allbinary/game/combat/weapon/WeaponProperties.zig").WeaponProperties;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureFactory = @import("org/allbinary/game/configuration/feature/GameFeatureFactory.zig").GameFeatureFactory;
const BasicHudFactory = @import("org/allbinary/game/graphics/hud/BasicHudFactory.zig").BasicHudFactory;
const Health = @import("org/allbinary/game/health/Health.zig").Health;
const HealthBar = @import("org/allbinary/game/health/HealthBar.zig").HealthBar;
const HealthBarTwodAnimation = @import("org/allbinary/game/health/HealthBarTwodAnimation.zig").HealthBarTwodAnimation;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const GroupCommonFactory = @import("org/allbinary/game/identification/GroupCommonFactory.zig").GroupCommonFactory;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const GameKeyEventFactory = @import("org/allbinary/game/input/event/GameKeyEventFactory.zig").GameKeyEventFactory;
const GameKeyEventUtil = @import("org/allbinary/game/input/event/GameKeyEventUtil.zig").GameKeyEventUtil;
const VisibleCellPositionsSingleton = @import("org/allbinary/game/input/form/VisibleCellPositionsSingleton.zig").VisibleCellPositionsSingleton;
const WaypointRTSFormInput = @import("org/allbinary/game/input/form/WaypointRTSFormInput.zig").WaypointRTSFormInput;
const AdvancedRTSGameLayer = @import("org/allbinary/game/layer/AdvancedRTSGameLayer.zig").AdvancedRTSGameLayer;
const AdvancedRTSProperties = @import("org/allbinary/game/layer/AdvancedRTSProperties.zig").AdvancedRTSProperties;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const CaptionResources = @import("org/allbinary/game/layer/CaptionResources.zig").CaptionResources;
const LinePathRelativeAnimation = @import("org/allbinary/game/layer/LinePathRelativeAnimation.zig").LinePathRelativeAnimation;
const PathAnimation = @import("org/allbinary/game/layer/PathAnimation.zig").PathAnimation;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const RTSLayer2LogHelper = @import("org/allbinary/game/layer/RTSLayer2LogHelper.zig").RTSLayer2LogHelper;
const RTSLayer2SelectedLogHelper = @import("org/allbinary/game/layer/RTSLayer2SelectedLogHelper.zig").RTSLayer2SelectedLogHelper;
const RTSLayerEvent = @import("org/allbinary/game/layer/RTSLayerEvent.zig").RTSLayerEvent;
const RTSLayerHudPaintable = @import("org/allbinary/game/layer/RTSLayerHudPaintable.zig").RTSLayerHudPaintable;
const RTSLayerLogHelper = @import("org/allbinary/game/layer/RTSLayerLogHelper.zig").RTSLayerLogHelper;
const RTSLayerSelectedLogHelper = @import("org/allbinary/game/layer/RTSLayerSelectedLogHelper.zig").RTSLayerSelectedLogHelper;
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;
const SelectionHudPaintable = @import("org/allbinary/game/layer/SelectionHudPaintable.zig").SelectionHudPaintable;
const SensorActionFactory = @import("org/allbinary/game/layer/SensorActionFactory.zig").SensorActionFactory;
const SteeringVisitor = @import("org/allbinary/game/layer/SteeringVisitor.zig").SteeringVisitor;
const TiledLayerUtil = @import("org/allbinary/game/layer/TiledLayerUtil.zig").TiledLayerUtil;
const VehicleFrictionProperties = @import("org/allbinary/game/layer/VehicleFrictionProperties.zig").VehicleFrictionProperties;
const VehicleProperties = @import("org/allbinary/game/layer/VehicleProperties.zig").VehicleProperties;
const WaypointBehaviorBase = @import("org/allbinary/game/layer/WaypointBehaviorBase.zig").WaypointBehaviorBase;
const BuildingLayer = @import("org/allbinary/game/layer/building/BuildingLayer.zig").BuildingLayer;
const BuildingEventHandler = @import("org/allbinary/game/layer/building/event/BuildingEventHandler.zig").BuildingEventHandler;
const BuildingEventListenerInterface = @import("org/allbinary/game/layer/building/event/BuildingEventListenerInterface.zig").BuildingEventListenerInterface;
const CapitalEvent = @import("org/allbinary/game/layer/capital/event/CapitalEvent.zig").CapitalEvent;
const CapitalEventHandlerFactory = @import("org/allbinary/game/layer/capital/event/CapitalEventHandlerFactory.zig").CapitalEventHandlerFactory;
const LayerPartialCellPositionsUtil = @import("org/allbinary/game/layer/geographic/map/LayerPartialCellPositionsUtil.zig").LayerPartialCellPositionsUtil;
const SpecialDownGameInputProcessor = @import("org/allbinary/game/layer/special/SpecialDownGameInputProcessor.zig").SpecialDownGameInputProcessor;
const SpecialFireGameInputProcessor = @import("org/allbinary/game/layer/special/SpecialFireGameInputProcessor.zig").SpecialFireGameInputProcessor;
const SpecialLeftGameInputProcessor = @import("org/allbinary/game/layer/special/SpecialLeftGameInputProcessor.zig").SpecialLeftGameInputProcessor;
const SpecialRightGameInputProcessor = @import("org/allbinary/game/layer/special/SpecialRightGameInputProcessor.zig").SpecialRightGameInputProcessor;
const SpecialUpGameInputProcessor = @import("org/allbinary/game/layer/special/SpecialUpGameInputProcessor.zig").SpecialUpGameInputProcessor;
const MultipassNoCacheWaypoint = @import("org/allbinary/game/layer/waypoint/MultipassNoCacheWaypoint.zig").MultipassNoCacheWaypoint;
const NoCacheWaypoint = @import("org/allbinary/game/layer/waypoint/NoCacheWaypoint.zig").NoCacheWaypoint;
const WaypointBase = @import("org/allbinary/game/layer/waypoint/WaypointBase.zig").WaypointBase;
const WaypointEventHandlerFactory = @import("org/allbinary/game/layer/waypoint/event/WaypointEventHandlerFactory.zig").WaypointEventHandlerFactory;
const RemoteInfo = @import("org/allbinary/game/multiplayer/layer/RemoteInfo.zig").RemoteInfo;
const BasicWeaponPart = @import("org/allbinary/game/part/weapon/BasicWeaponPart.zig").BasicWeaponPart;
const SalvoInterface = @import("org/allbinary/game/part/weapon/SalvoInterface.zig").SalvoInterface;
const VelocityProperties = @import("org/allbinary/game/physics/velocity/VelocityProperties.zig").VelocityProperties;
const TrackingEvent = @import("org/allbinary/game/tracking/TrackingEvent.zig").TrackingEvent;
const TrackingEventHandler = @import("org/allbinary/game/tracking/TrackingEventHandler.zig").TrackingEventHandler;
const TrackingEventListenerInterface = @import("org/allbinary/game/tracking/TrackingEventListenerInterface.zig").TrackingEventListenerInterface;
const CellPositionFactory = @import("org/allbinary/graphics/CellPositionFactory.zig").CellPositionFactory;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const Layer = @import("org/allbinary/layer/Layer.zig").Layer;
const LayerInterfaceFactoryInterface = @import("org/allbinary/layer/LayerInterfaceFactoryInterface.zig").LayerInterfaceFactoryInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const FrameUtil = @import("org/allbinary/math/FrameUtil.zig").FrameUtil;
const LayerDistanceUtil = @import("org/allbinary/math/LayerDistanceUtil.zig").LayerDistanceUtil;
const NamedAngle = @import("org/allbinary/math/NamedAngle.zig").NamedAngle;
const AttackSound = @import("org/allbinary/media/audio/AttackSound.zig").AttackSound;
const SecondaryPlayerQueueFactory = @import("org/allbinary/media/audio/SecondaryPlayerQueueFactory.zig").SecondaryPlayerQueueFactory;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const SimpleGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory.zig").SimpleGeographicMapCellPositionFactory;
const DropCellPositionHistory = @import("org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory.zig").DropCellPositionHistory;
const RaceTrackGeographicMap = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap.zig").RaceTrackGeographicMap;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const CollidableUnitBehavior = @import("org/allbinary/game/layer/unit/CollidableUnitBehavior.zig").CollidableUnitBehavior;
const UnitWaypointBehavior = @import("org/allbinary/game/layer/unit/UnitWaypointBehavior.zig").UnitWaypointBehavior;
const UnitWaypointBehavior2 = @import("org/allbinary/game/layer/unit/UnitWaypointBehavior2.zig").UnitWaypointBehavior2;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const UnitLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.unit.UnitLayer";
    base: AdvancedRTSGameLayer = undefined,
    basicColorFactory: ?*BasicColorFactory = null,
    groupCommonFactory: ?*GroupCommonFactory = null,
    layerPartialCellPositionsUtil: ?*LayerPartialCellPositionsUtil = null,
    layerDistanceUtil: ?*LayerDistanceUtil = null,
    angleFactory: ?*AngleFactory = null,
    cellPositionFactory: ?*CellPositionFactory = null,
    maxResourceLoad: i16 = 0,
    vehicleProperties: ?*VehicleProperties = null,
    accelerationBasicDecimal: ?*BasicDecimal = null,
    decelerationBasicDecimal: ?*BasicDecimal = null,
    trackingEvent: ?*TrackingEvent = null,
    damageFloaters: ?*DamageFloaters = null,
    damageFloatersPaintableInterface: ?*Paintable = null,
    healthBar: ?*Paintable = null,
    moveSoundInterface: ?*Sound = null,
    initResourceAnimation: ?*RotationAnimation = null,
    resourceAnimation: ?*IndexedAnimation = null,
    initPathAnimation: ?*PathAnimation = null,
    pathAnimation: ?*Animation = null,
    captionAnimationHelper: ?*CaptionAnimationHelperBase = null,
    decalAnimation: ?*RotationAnimation = null,
    waypointLayerInterfaceFactoryInterface: ?*LayerInterfaceFactoryInterface = null,
    resourceLoad: i32 = 0,
    weaponRange: i32 = 0,
    rtsLogHelper: ?*RTSLayerLogHelper = null,
    rotationAnimationInterfaceP: ?*RotationAnimation = null,
    movementAngle: ?*NamedAngle = null,
    steeringInsideGeographicMapCellPosition: ?*GeographicMapCellPosition = null,
    sensorGeographicMapCellPositionList: ?*BasicArrayList = null,
    CAPITAL_EVENT: ?*CapitalEvent = null,
    // Implements BuildingEventListenerInterface
    // Implements TrackingEventListenerInterface
    var partialPositionList: ?*BasicArrayList = undefined;
    const SENSOR_RANGE_MULTIPLIER: i32 = 6;
    const MOVE: ?*String = String.literal("Moving");

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        partialPositionList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(BasicArrayListS, "create1", .{ 4 }));
    }

    fn initFields(this: *Self) void {
        this.basicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        this.groupCommonFactory = Inheritance.upcast(?*GroupCommonFactory, GroupCommonFactory.getInstance());
        this.layerPartialCellPositionsUtil = Inheritance.upcast(?*LayerPartialCellPositionsUtil, LayerPartialCellPositionsUtil.getInstance());
        this.layerDistanceUtil = Inheritance.upcast(?*LayerDistanceUtil, LayerDistanceUtil.getInstance());
        this.angleFactory = Inheritance.upcast(?*AngleFactory, AngleFactory.getInstance());
        this.cellPositionFactory = Inheritance.upcast(?*CellPositionFactory, CellPositionFactory.getInstance());
        
        
        this.accelerationBasicDecimal = Inheritance.callStatic(BasicDecimal, "create1", .{ 1600 });
        this.decelerationBasicDecimal = Inheritance.callStatic(BasicDecimal, "create1", .{ -1000 });
        
        this.damageFloaters = null;
        this.damageFloatersPaintableInterface = null;
        this.healthBar = null;
        
        
        this.resourceAnimation = Inheritance.cast(?*IndexedAnimation, Inheritance.call(NullIndexedAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
        
        this.pathAnimation = Inheritance.upcast(?*Animation, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
        this.captionAnimationHelper = Inheritance.upcast(?*CaptionAnimationHelperBase, Inheritance.callStatic(CaptionAnimationHelper, "create5", .{ Inheritance.call(Inheritance.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().?, "get", .{ CaptionResources.getInstance().?.RESOURCE }).?, "getInstance", .{ 0 }), -23, -25, 6, 0 }));
        
        
        this.resourceLoad = 0;
        this.weaponRange = 0;
        this.rtsLogHelper = Inheritance.upcast(?*RTSLayerLogHelper, RTSLayerLogHelper.getInstance());
        
        this.movementAngle = Inheritance.upcast(?*NamedAngle, this.angleFactory.?.NOT_ANGLE);
        this.steeringInsideGeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        this.sensorGeographicMapCellPositionList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.CAPITAL_EVENT = Inheritance.callStatic(CapitalEvent, "create1", .{ this });
    }
    

    pub fn create25(remoteInfo: ?*RemoteInfo, parentLayer: ?*PathFindingLayerInterface, advancedRTSProperties: ?*AdvancedRTSProperties, groupInterface: []?*Group, rootName: ?*String, name: ?*String, vehicleProperties: ?*VehicleProperties, healthInterface: ?*Health, maxResourceLoad: ?*Integer, moveSoundInterface: ?*Sound, waypointLayerInterfaceFactoryInterface: ?*LayerInterfaceFactoryInterface, animationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, decalAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, resourceAnimationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface: ?*ProceduralAnimationInterfaceFactoryInterface, rectangle: ?*Rectangle, direction: ?*Direction, x: i32, y: i32, z: i32, viewPosition: ?*ViewPositionBase) *Self {
        _ = z;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AdvancedRTSGameLayer, "create18", .{ remoteInfo, parentLayer, advancedRTSProperties, groupInterface, rootName, name, healthInterface, Inheritance.callStatic(WaypointRTSFormInput, "create2", .{ groupInterface, true }), animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition }).*;
        this.initFields();
        _ = Inheritance.call(this, "setCollidableInferface", .{ Inheritance.callStatic(CollidableUnitBehavior, "create1", .{ true }) });
        this.waypointLayerInterfaceFactoryInterface = waypointLayerInterfaceFactoryInterface;
        this.maxResourceLoad = maxResourceLoad.?.shortValue();
        this.moveSoundInterface = moveSoundInterface;
        if (Inheritance.call(Features.getInstance().?, "isFeature", .{ GameFeatureFactory.getInstance().?.DAMAGE_FLOATERS })) {
            this.damageFloaters = Inheritance.upcast(@TypeOf(this.damageFloaters), Inheritance.callStatic(PtsDamageFloaters, "create1", .{ this }));
            this.damageFloatersPaintableInterface = Inheritance.upcast(@TypeOf(this.damageFloatersPaintableInterface), this.damageFloaters);
        } else {
            this.damageFloatersPaintableInterface = Inheritance.upcast(@TypeOf(this.damageFloatersPaintableInterface), NullPaintable.getInstance());
            this.damageFloaters = DamageFloaters.create();
        }
        if (Inheritance.call(Features.getInstance().?, "isFeature", .{ GameFeatureFactory.getInstance().?.HEALTH_BARS })) {
            this.healthBar = Inheritance.upcast(@TypeOf(this.healthBar), Inheritance.callStatic(HealthBar, "create4", .{ this, Inheritance.receiver(this, "getHealthInterface").getHealthInterface(), Inheritance.callStatic(HealthBarTwodAnimation, "create2", .{ Inheritance.cast(?*AllBinaryLayer, this), BasicHudFactory.getInstance().?.BOTTOMLEFT }), -1 }));
        } else {
            this.healthBar = Inheritance.upcast(@TypeOf(this.healthBar), NullPaintable.getInstance());
        }
        this.decalAnimation = Inheritance.cast(?*RotationAnimation, Inheritance.call(decalAnimationInterfaceFactoryInterface.?, "getInstance", .{ 0 }));
        this.initResourceAnimation = Inheritance.cast(?*RotationAnimation, Inheritance.call(resourceAnimationInterfaceFactoryInterface.?, "getInstance", .{ 0 }));
        _ = Inheritance.call(this.initResourceAnimation.?, "setFrameByDirection", .{ direction });
        _ = Inheritance.call(this.decalAnimation.?, "setFrameByDirection", .{ direction });
        this.rotationAnimationInterfaceP = Inheritance.cast(?*RotationAnimation, Inheritance.fieldPointer(this, "indexedButShouldBeRotationAnimationInterface").*);
        _ = Inheritance.call(this.rotationAnimationInterfaceP.?, "setFrameByDirection", .{ direction });
        _ = Inheritance.call(this, "setMaxLevel", .{ 12 });
        this.vehicleProperties = vehicleProperties;
        this.trackingEvent = Inheritance.callStatic(TrackingEvent, "create1", .{ this });
        this.initPathAnimation = Inheritance.callStatic(PathAnimation, "create2", .{ this, LinePathRelativeAnimation.getInstance() });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn setAllBinaryGameLayerManager(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) void {
        _ = Inheritance.call(&self.base, "setAllBinaryGameLayerManager", .{ allBinaryGameLayerManager });
        _ = Inheritance.call(self.initPathAnimation.?, "setAllBinaryGameLayerManager", .{ allBinaryGameLayerManager });
    }
    

    // throws Exception
    pub fn updateWaypointBehavior(self: *Self, geographicMapInterface: ?*BasicGeographicMap) void {
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        _ = Inheritance.call(hashtable.?, "put", .{ self.groupCommonFactory.?.ID, Inheritance.receiver(self, "getGroupInterface").getGroupInterface() });
        _ = Inheritance.call(hashtable.?, "put", .{ Layer.ID, self });
        _ = Inheritance.call(hashtable.?, "put", .{ AllBinaryGameLayerManager.ID, Inheritance.fieldPointer(self, "allBinaryGameLayerManagerP").* });
        _ = Inheritance.call(self, "setWaypointBehavior", .{ Inheritance.callStatic(UnitWaypointBehavior2, "create2", .{ self, Inheritance.cast(?*AdvancedRTSGameLayer, Inheritance.call(self.waypointLayerInterfaceFactoryInterface.?, "getNextInstance", .{ hashtable, Inheritance.fieldPointer(self, "x").*, Inheritance.fieldPointer(self, "y").*, Inheritance.fieldPointer(self, "z").* })) }) });
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance()); _ = features;
        const waypoint: ?*WaypointBase = Inheritance.upcast(?*WaypointBase, (if (J2MEUtil.isHTML()) Inheritance.callStatic(MultipassNoCacheWaypoint, "create2", .{ self, AttackSound.getInstance() }) else Inheritance.callStatic(NoCacheWaypoint, "create2", .{ self, AttackSound.getInstance() })));
        _ = Inheritance.call(Inheritance.receiver(self, "getWaypointBehavior").getWaypointBehavior().?, "setWaypoint", .{ waypoint });
        _ = Inheritance.call(&self.base, "updateWaypointBehavior", .{ geographicMapInterface });
        _ = self.initRangeHack();
    }
    

    // throws Exception
    pub fn construct(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface) void {
        _ = Inheritance.call(&self.base, "construct", .{ rtsPlayerLayerInterface });
        _ = Inheritance.call(TrackingEventHandler.getInstance().?, "addListenerInterface", .{ self });
        _ = Inheritance.call(Inheritance.callStatic(WaypointEventHandlerFactory, "getInstance", .{ Inheritance.receiver(self, "getGroupInterface").getGroupInterface()[@intCast(0)] }).?, "addListenerInterface", .{ self.getUnitWaypointBehavior() });
        _ = Inheritance.call(BuildingEventHandler.getInstance().?, "addListenerInterface", .{ self });
        _ = Inheritance.call(self.getUnitWaypointBehavior().?, "setCurrentPathGeographicMapCellPosition", .{ self.getCurrentGeographicMapCellPosition() });
        _ = self.updateSensorGeographicMapCellPositionList();
        _ = Inheritance.call(self.getUnitWaypointBehavior().?, "setLastPathGeographicMapCellPosition", .{ Inheritance.receiverOf(self.getUnitWaypointBehavior().?, "getCurrentPathGeographicMapCellPosition").getCurrentPathGeographicMapCellPosition() });
    }
    

    // throws Exception
    pub fn updateSensorGeographicMapCellPositionList(self: *Self) void {
        if (Inheritance.receiverOf(VisibleCellPositionsSingleton.getInstance().?, "shouldProcess").shouldProcess()) {
            const currentGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, self.getCurrentGeographicMapCellPosition());
            _ = self.sensorGeographicMapCellPositionList.?.clear();
            _ = Inheritance.call(self.sensorGeographicMapCellPositionList.?, "add", .{ currentGeographicMapCellPosition });
            const sensorRange: i32 = self.weaponRange * UnitLayer.SENSOR_RANGE_MULTIPLIER;
            const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, Inheritance.fieldPointer(self, "allBinaryGameLayerManagerP").*);
            const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
            const tiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
            const totalCells: i32 = (divide_N73736: { const left_N73736 = (@divTrunc(sensorRange, Inheritance.receiver(tiledLayer.?, "getCellHeight").getCellHeight())); const right_N73736 = 2; break :divide_N73736 if (comptime @typeInfo(@TypeOf(left_N73736)) == .int or @TypeOf(left_N73736) == comptime_int) @divTrunc(left_N73736, right_N73736) else left_N73736 / right_N73736; });
            const geographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, Inheritance.receiver(geographicMapInterface.?, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory());
            const column: i32 = Inheritance.receiver(currentGeographicMapCellPosition.?, "getColumn").getColumn();
            const row: i32 = Inheritance.receiver(currentGeographicMapCellPosition.?, "getRow").getRow();
            var lastColumn: i32 = column + totalCells;
            var lastRow: i32 = row + totalCells;
            if (lastColumn > Inheritance.receiver(tiledLayer.?, "getColumns").getColumns()) {
                lastColumn = Inheritance.receiver(tiledLayer.?, "getColumns").getColumns();
            }
            if (lastRow > Inheritance.receiver(tiledLayer.?, "getRows").getRows()) {
                lastRow = Inheritance.receiver(tiledLayer.?, "getRows").getRows();
            }
            var firstColumn: i32 = column - totalCells;
            var firstRow: i32 = row - totalCells;
            if (firstColumn < 0) {
                firstColumn = 0;
            }
            if (firstRow < 0) {
                firstRow = 0;
            }
            {
                var index: i32 = lastColumn - 1;
                while (index >= firstColumn) : (index -= 1) {
                {
                    var index2: i32 = lastRow - 1;
                    while (index2 >= firstRow) : (index2 -= 1) {
                    const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ index, index2 }));
                    if (!Inheritance.call(self.sensorGeographicMapCellPositionList.?, "contains", .{ geographicMapCellPosition })) {
                        _ = Inheritance.call(self.sensorGeographicMapCellPositionList.?, "add", .{ geographicMapCellPosition });
                    }
                    }
                }
                }
            }
        }
    }
    

    pub fn getSensorGeographicMapCellPositionList(self: *Self) ?*BasicArrayList {
        return self.sensorGeographicMapCellPositionList;
    }
    

    pub fn select(self: *Self) void {
        self.pathAnimation = Inheritance.upcast(@TypeOf(self.pathAnimation), self.initPathAnimation);
        _ = self.base.select();
    }
    

    pub fn deselect(self: *Self) void {
        self.pathAnimation = Inheritance.upcast(@TypeOf(self.pathAnimation), Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
        _ = self.base.deselect();
    }
    

    pub fn setSelected(self: *Self, selected: bool) void {
        _ = Inheritance.call(&self.base, "setSelected", .{ selected });
        if (selected) {
            if (Inheritance.fieldPointer(self, "debug").*) {
                self.rtsLogHelper = Inheritance.upcast(@TypeOf(self.rtsLogHelper), RTSLayerSelectedLogHelper.getInstance());
            }
            Inheritance.fieldPointer(self, "rtsLayer2LogHelper").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "rtsLayer2LogHelper").*), RTSLayer2SelectedLogHelper.getInstance());
        } else {
            if (Inheritance.fieldPointer(self, "debug").*) {
                self.rtsLogHelper = Inheritance.upcast(@TypeOf(self.rtsLogHelper), RTSLayerLogHelper.getInstance());
            }
            Inheritance.fieldPointer(self, "rtsLayer2LogHelper").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "rtsLayer2LogHelper").*), RTSLayer2LogHelper.getInstance());
        }
    }
    

    // throws Exception
    pub fn setClosestGeographicMapCellHistory(self: *Self, pathsList: ?*BasicArrayList) void {
        _ = Inheritance.call(self.rtsLogHelper.?, "setClosestGeographicMapCellHistory", .{ self, pathsList });
        var closestIndex: i32 = -1;
        var shortestDistance: i32 = @as(i32, std.math.maxInt(i32));
        var currentDistance: i32 = @as(i32, std.math.maxInt(i32));
        {
            var index: i32 = pathsList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const geographicMapCellPositionBasicArrayList: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, Inheritance.call(pathsList.?, "get", .{ index }));
            const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(geographicMapCellPositionBasicArrayList.?, "get", .{ geographicMapCellPositionBasicArrayList.?.size() - 1 }));
            currentDistance = Inheritance.call(self.layerDistanceUtil.?, "getDistanceAt", .{ self, Inheritance.receiver(geographicMapCellPosition.?, "getMidPoint").getMidPoint() });
            if (currentDistance < shortestDistance) {
                shortestDistance = currentDistance;
                closestIndex = index;
            }
            }
        }
        if (closestIndex >= 0) {
            const geographicMapCellPositionBasicArrayList: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, Inheritance.call(pathsList.?, "get", .{ closestIndex }));
            const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(geographicMapCellPositionBasicArrayList.?, "get", .{ 0 }));
            _ = Inheritance.call(self, "teleportTo", .{ geographicMapCellPosition });
        }
    }
    

    // throws Exception
    pub fn init(self: *Self, geographicMapCellHistory: ?*GeographicMapCellHistory, geographicMapCellPositionBasicArrayList: ?*BasicArrayList) void {
        _ = self;
        _ = Inheritance.call(geographicMapCellHistory.?, "trackAll", .{ geographicMapCellPositionBasicArrayList });
    }
    

    pub fn onMovement(self: *Self, trackingEvent: ?*TrackingEvent) void {
        { // try
            const layerInterface: ?*AdvancedRTSGameLayer = Inheritance.cast(?*AdvancedRTSGameLayer, Inheritance.receiver(trackingEvent.?, "getLayerInterface").getLayerInterface());
            if (!Object.same(Inheritance.receiver(layerInterface.?, "getGroupInterface").getGroupInterface()[@intCast(0)], Inheritance.receiver(self, "getGroupInterface").getGroupInterface()[@intCast(0)])) {
                _ = Inheritance.call(Inheritance.receiverOf(self.getUnitWaypointBehavior().?, "getPossibleTargetList").getPossibleTargetList().?, "add", .{ layerInterface });
                _ = Inheritance.call(layerInterface.?, "onMovementFound", .{ self.getTrackingEvent() });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("onMovement"), e });
    }
    

    // throws Exception
    pub fn onMovementFound(self: *Self, trackingEvent: ?*TrackingEvent) void {
        const layerInterface: ?*AdvancedRTSGameLayer = Inheritance.cast(?*AdvancedRTSGameLayer, Inheritance.receiver(trackingEvent.?, "getLayerInterface").getLayerInterface());
        if (!Object.same(Inheritance.receiver(layerInterface.?, "getGroupInterface").getGroupInterface()[@intCast(0)], Inheritance.receiver(self, "getGroupInterface").getGroupInterface()[@intCast(0)])) {
            _ = Inheritance.call(Inheritance.receiverOf(self.getUnitWaypointBehavior().?, "getPossibleTargetList").getPossibleTargetList().?, "add", .{ layerInterface });
        }
    }
    

    pub fn initRangeHack(self: *Self) void {
        const basicWeaponPart: ?*BasicWeaponPart = Inheritance.cast(?*BasicWeaponPart, Inheritance.receiver(self, "getPartInterfaceArray").getPartInterfaceArray()[@intCast(0)]);
        const weaponProperties: ?*WeaponProperties = Inheritance.upcast(?*WeaponProperties, basicWeaponPart.?.getWeaponProperties());
        self.weaponRange = Inheritance.receiver(weaponProperties.?, "getRange").getRange();
        Inheritance.fieldPointer(self, "initRangeAnimation").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "initRangeAnimation").*), Inheritance.callStatic(AdjustedCircleAnimation, "createW", .{ self.weaponRange, self.weaponRange, Inheritance.receiver(self, "getWidth").getWidth(), self.basicColorFactory.?.GREEN }));
        const sensorRange: i32 = self.weaponRange * UnitLayer.SENSOR_RANGE_MULTIPLIER;
        Inheritance.fieldPointer(self, "initSensorRangeAnimation").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "initSensorRangeAnimation").*), Inheritance.callStatic(AdjustedCircleAnimation, "createW", .{ sensorRange, sensorRange, Inheritance.receiver(self, "getWidth").getWidth(), self.basicColorFactory.?.RED }));
        _ = Inheritance.call(self.getUnitWaypointBehavior().?, "initRange", .{ self.weaponRange });
        Inheritance.fieldPointer(self, "fireTimeHelper").*.?.delay = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "fireTimeHelper").*.?.delay), (@as(i32, @intCast(Inheritance.receiver(weaponProperties.?, "getReloadTime").getReloadTime()))));
    }
    

    // throws Exception
    pub fn processBuiltTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        if (!Inheritance.receiverOf(Inheritance.receiver(self, "getHealthInterface").getHealthInterface().?, "isAlive").isAlive()) {
            if (Inheritance.receiver(self, "isReadyForExplosion").isReadyForExplosion()) {
                const currentFrame: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "destroyAnimationInterface").*.?, "getFrame").getFrame();
                const size: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "destroyAnimationInterface").*.?, "getSize").getSize() - 1;
                if (currentFrame == size) {
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
                _ = Inheritance.call(self, "setReadyForExplosion", .{ true });
            }
        } else {
            _ = Inheritance.call(&self.base, "processBuiltTick", .{ allBinaryLayerManager });
        }
        _ = Inheritance.receiver(self.captionAnimationHelper.?, "tick").tick();
        _ = Inheritance.call(self.getUnitWaypointBehavior().?, "processTick", .{ allBinaryLayerManager });
    }
    

    pub fn teleportTo(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(geographicMapCellPosition.?, "getMidPoint").getMidPoint());
        _ = Inheritance.call(self, "setPosition", .{ point.?.getX() - Inheritance.receiver(self, "getHalfWidth").getHalfWidth(), point.?.getY() - Inheritance.receiver(self, "getHalfHeight").getHalfHeight(), Inheritance.fieldPointer(self, "z").* });
    }
    

    // throws Exception
    pub fn getCurrentGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, Inheritance.fieldPointer(self, "allBinaryGameLayerManagerP").*);
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterface.?, "getCellPositionAtXY", .{ Inheritance.fieldPointer(self, "x").* + Inheritance.receiver(self, "getHalfWidth").getHalfWidth(), Inheritance.fieldPointer(self, "y").* + Inheritance.receiver(self, "getHalfHeight").getHalfHeight() }));
        const raceTrackGeographicMap: ?*RaceTrackGeographicMap = Inheritance.cast(?*RaceTrackGeographicMap, geographicMapInterface);
        if (!Inheritance.call(raceTrackGeographicMap.?, "isValid", .{ geographicMapCellPosition })) {
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Position is not really on the map: "), geographicMapCellPosition); break :exception error.Exception; }});
        }
        return geographicMapCellPosition;
    }
    

    // throws Exception
    pub fn fire(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = gameKeyEvent;
        if (Inheritance.receiverOf(Inheritance.fieldPointer(self, "fireTimeHelper").*.?, "isTimeTNT").isTimeTNT()) {
            _ = Inheritance.call(self, "fireAll", .{ layerManager });
        } else {
            _ = Inheritance.receiver(self, "reload").reload();
        }
    }
    

    // throws Exception
    pub fn left(self: *Self) void {
        _ = Inheritance.receiver(self.initResourceAnimation.?, "previousRotation").previousRotation();
        _ = Inheritance.receiver(self.decalAnimation.?, "previousRotation").previousRotation();
        _ = Inheritance.receiver(self.rotationAnimationInterfaceP.?, "previousRotation").previousRotation();
    }
    

    // throws Exception
    pub fn right(self: *Self) void {
        _ = Inheritance.receiver(self.initResourceAnimation.?, "nextRotation").nextRotation();
        _ = Inheritance.receiver(self.decalAnimation.?, "nextRotation").nextRotation();
        _ = Inheritance.receiver(self.rotationAnimationInterfaceP.?, "nextRotation").nextRotation();
    }
    

    pub fn down(self: *Self) void {
        const velocityProperties: ?*VelocityProperties = Inheritance.upcast(?*VelocityProperties, Inheritance.receiverOf(self.getVehicleProperties().?, "getVelocityProperties").getVelocityProperties());
        if (!Inheritance.receiver(velocityProperties.?, "isOverXYMaxForwardVelocity").isOverXYMaxForwardVelocity()) {
            _ = Inheritance.call(self, "accelerate", .{ self.decelerationBasicDecimal });
        }
    }
    

    pub fn up(self: *Self) void {
        const velocityProperties: ?*VelocityProperties = Inheritance.upcast(?*VelocityProperties, Inheritance.receiverOf(self.getVehicleProperties().?, "getVelocityProperties").getVelocityProperties());
        if (!Inheritance.receiver(velocityProperties.?, "isOverXYMaxForwardVelocity").isOverXYMaxForwardVelocity()) {
            _ = Inheritance.call(self, "accelerate", .{ self.accelerationBasicDecimal });
        }
    }
    

    pub fn initInputProcessors(self: *Self) void {
        Inheritance.fieldPointer(self, "inputProcessorArray").*[@intCast(Canvas.RIGHT)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "inputProcessorArray").*[@intCast(Canvas.RIGHT)]), Inheritance.callStatic(SpecialRightGameInputProcessor, "create1", .{ self }));
        Inheritance.fieldPointer(self, "inputProcessorArray").*[@intCast(Canvas.LEFT)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "inputProcessorArray").*[@intCast(Canvas.LEFT)]), Inheritance.callStatic(SpecialLeftGameInputProcessor, "create1", .{ self }));
        Inheritance.fieldPointer(self, "inputProcessorArray").*[@intCast(Canvas.KEY_NUM0)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "inputProcessorArray").*[@intCast(Canvas.KEY_NUM0)]), Inheritance.callStatic(SpecialFireGameInputProcessor, "create1", .{ self }));
        Inheritance.fieldPointer(self, "inputProcessorArray").*[@intCast(Canvas.KEY_POUND)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "inputProcessorArray").*[@intCast(Canvas.KEY_POUND)]), Inheritance.fieldPointer(self, "inputProcessorArray").*[@intCast(Canvas.KEY_NUM0)]);
        Inheritance.fieldPointer(self, "inputProcessorArray").*[@intCast(Canvas.DOWN)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "inputProcessorArray").*[@intCast(Canvas.DOWN)]), Inheritance.callStatic(SpecialDownGameInputProcessor, "create1", .{ self }));
        Inheritance.fieldPointer(self, "inputProcessorArray").*[@intCast(Canvas.UP)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "inputProcessorArray").*[@intCast(Canvas.UP)]), Inheritance.callStatic(SpecialUpGameInputProcessor, "create1", .{ self }));
        _ = self.base.initInputProcessors();
    }
    

    // throws Exception
    pub fn processInput(self: *Self, layerManager: ?*AllBinaryLayerManager) void {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList());
        const size: i32 = list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(list.?, "get", .{ index }));
            const key: i32 = Inheritance.callStatic(GameKeyEventUtil, "getKey", .{ anyType });
            _ = Inheritance.call(Inheritance.fieldPointer(self, "inputProcessorArray").*[@intCast(key)].?, "processEvent", .{ layerManager, GameKeyEvent.NONE });
            }
        }
        _ = list.?.clear();
        _ = self.groundFriction();
        _ = self.move();
    }
    

    pub fn accelerate(self: *Self, accelerate_: ?*BasicDecimal) void {
        _ = Inheritance.call(Inheritance.receiverOf(self.getVehicleProperties().?, "getVelocityProperties").getVelocityProperties().?, "addVelocityi", .{ accelerate_.?.getUnscaled(), @as(i32, @intCast(Inheritance.receiverOf(Inheritance.receiver(self.rotationAnimationInterfaceP.?, "getAngleInfoP").getAngleInfoP().?, "getAngle").getAngle())), 90 });
    }
    

    // throws Exception
    pub fn fireAll(self: *Self, layerManager: ?*AllBinaryLayerManager) void {
        const angleInfo: ?*AngleInfo = Inheritance.upcast(?*AngleInfo, Inheritance.receiver(self.rotationAnimationInterfaceP.?, "getAngleInfoP").getAngleInfoP());
        const angle: i32 = @as(i32, @intCast((angleInfo.?.getAngle() + Inheritance.fieldPointer(self, "slightAngle").*)));
        _ = Inheritance.call(Inheritance.fieldPointer(self, "hashtable").*.?, "put", .{ Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 1 }), Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ @as(i32, @intCast(Inheritance.receiverOf(Inheritance.call(AngleFactory.getInstance().?, "getAt", .{ angle }).?, "getValue").getValue())) }) });
        const salvoInterface: ?*SalvoInterface = Inheritance.cast(?*SalvoInterface, Inheritance.receiver(self, "getPartInterfaceArray").getPartInterfaceArray()[@intCast(0)]);
        _ = Inheritance.call(salvoInterface.?, "process", .{ layerManager, @as(i16, @intCast(angle)), @as(i16, @intCast(90)) });
    }
    

    pub fn downgrade(self: *Self) void {
        if (Inheritance.receiver(self, "getLevel").getLevel() > 1) {
            _ = self.base.downgrade();
        }
    }
    

    pub fn upgrade(self: *Self) void {
        _ = self.base.upgrade();
        _ = self.initRangeHack();
    }
    

    pub fn groundFriction(self: *Self) void {
        const vehicleFrictionProperties: ?*VehicleFrictionProperties = Inheritance.upcast(?*VehicleFrictionProperties, Inheritance.receiverOf(self.getVehicleProperties().?, "getVehicleFrictionProperties").getVehicleFrictionProperties());
        _ = Inheritance.call(Inheritance.receiverOf(self.getVehicleProperties().?, "getVehicleFrictionProperties").getVehicleFrictionProperties().?, "friction", .{ Inheritance.receiverOf(self.getVehicleProperties().?, "getVelocityProperties").getVelocityProperties(), Inheritance.receiver(vehicleFrictionProperties.?, "getTireFrictionNominator").getTireFrictionNominator() });
    }
    

    // throws Exception
    pub fn trackTo(self: *Self, reason: ?*String) void {
        const waypointBehaviorBase: ?*WaypointBehaviorBase = Inheritance.cast(?*WaypointBehaviorBase, Inheritance.fieldPointer(self, "waypointBehaviorBase").*);
        const nextUnvisitedPathGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, waypointBehaviorBase.?.getNextUnvisitedPathGeographicMapCellPosition());
        const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(nextUnvisitedPathGeographicMapCellPosition.?, "getMidPoint").getMidPoint());
        const dx: i32 = (Inheritance.receiver(self, "getXP").getXP() + Inheritance.receiver(self, "getHalfWidth").getHalfWidth()) - point.?.getX();
        const dy: i32 = (Inheritance.receiver(self, "getYP").getYP() + Inheritance.receiver(self, "getHalfHeight").getHalfHeight()) - point.?.getY();
        _ = Inheritance.call(self.rtsLogHelper.?, "trackTo", .{ self, nextUnvisitedPathGeographicMapCellPosition, dx, dy, reason });
        _ = Inheritance.call(self, "trackToDXY", .{ dx, dy });
    }
    

    // throws Exception
    pub fn trackToDXY(self: *Self, dx: i32, dy: i32) void {
        const angleOfTarget: i32 = 0;
        _ = Inheritance.call(self, "trackToDXYTargetAngle", .{ dx, dy, angleOfTarget });
    }
    

    // throws Exception
    pub fn turnTo(self: *Self, dx: i32, dy: i32, targetAngleParameter: i32) bool {
        var targetAngle = targetAngleParameter;
        const waypointBehaviorBase: ?*WaypointBehaviorBase = Inheritance.cast(?*WaypointBehaviorBase, Inheritance.fieldPointer(self, "waypointBehaviorBase").*);
        const nextUnvisitedPathGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, waypointBehaviorBase.?.getNextUnvisitedPathGeographicMapCellPosition());
        var evading: bool = false;
        if (Object.same(Inheritance.receiverOf(self.getUnitWaypointBehavior().?, "getSensorAction").getSensorAction(), SensorActionFactory.getInstance().?.EVADE)) {
            _ = Inheritance.call(self.rtsLogHelper.?, "evade", .{ self });
            evading = true;
            targetAngle += 180;
        }
        const angleInfo: ?*AngleInfo = Inheritance.upcast(?*AngleInfo, Inheritance.receiver(self.rotationAnimationInterfaceP.?, "getAngleInfoP").getAngleInfoP());
        const angle: i32 = Inheritance.call(FrameUtil.getInstance().?, "adjustAngleToFrameAngle", .{ angleInfo.?.getAngle() - 270 });
        _ = Inheritance.call(self.rtsLogHelper.?, "turnTo", .{ self, dx, dy, angleInfo, angle, self.movementAngle, evading, targetAngle });
        const gameKeyEventFactory: ?*GameKeyEventFactory = Inheritance.upcast(?*GameKeyEventFactory, GameKeyEventFactory.getInstance());
        if (dx == 0 and dy == 0) {
            _ = Inheritance.call(self.rtsLogHelper.?, "doneMoving", .{ self });
            return true;
        } else if ((@as(i32, @intCast(Inheritance.receiver(self.movementAngle.?, "getValue").getValue()))) == angle) {
            if (dx > 0 and Object.same(self.movementAngle, self.angleFactory.?.LEFT)) {
                _ = Inheritance.call(self.rtsLogHelper.?, "movingLeft", .{ self });
                return false;
            }
            if (dx < 0 and Object.same(self.movementAngle, self.angleFactory.?.RIGHT)) {
                _ = Inheritance.call(self.rtsLogHelper.?, "movingRight", .{ self });
                return false;
            }
            if (dy > 0 and Object.same(self.movementAngle, self.angleFactory.?.UP)) {
                _ = Inheritance.call(self.rtsLogHelper.?, "movingUp", .{ self });
                return false;
            }
            if (dy < 0 and Object.same(self.movementAngle, self.angleFactory.?.DOWN)) {
                _ = Inheritance.call(self.rtsLogHelper.?, "movingDown", .{ self });
                return false;
            }
            _ = Inheritance.call(self.rtsLogHelper.?, "currentMoveEnded", .{ self });
            if (Object.same(self.movementAngle, self.angleFactory.?.LEFT) or Object.same(self.movementAngle, self.angleFactory.?.RIGHT)) {
                _ = Inheritance.call(self, "handleDeltalY", .{ dx, dy });
            } else if (Object.same(self.movementAngle, self.angleFactory.?.UP) or Object.same(self.movementAngle, self.angleFactory.?.DOWN)) {
                _ = Inheritance.call(self, "handleDeltalX", .{ dx, dy });
            }
            return true;
        } else {
            if (!Object.same(nextUnvisitedPathGeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
                if (!Object.same(self.steeringInsideGeographicMapCellPosition, nextUnvisitedPathGeographicMapCellPosition)) {
                    if (@abs(dx) > @abs(dy) and dy != 0) {
                        _ = Inheritance.call(self, "handleDeltalY", .{ dx, dy });
                    } else if (dx != 0) {
                        _ = Inheritance.call(self, "handleDeltalX", .{ dx, dy });
                    } else {
                        _ = Inheritance.call(self, "handleDeltalY", .{ dx, dy });
                    }
                }
                const deltaAngle2: i32 = Inheritance.receiver(self.movementAngle.?, "getValue").getValue() - angle;
                if (deltaAngle2 > 0) {
                    _ = Inheritance.call(self.rtsLogHelper.?, "rotateRight", .{ self });
                    _ = Inheritance.call(Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList().?, "add", .{ Inheritance.call(gameKeyEventFactory.?, "getInstanceForKey", .{ self, Canvas.RIGHT }) });
                } else {
                    _ = Inheritance.call(self.rtsLogHelper.?, "rotateLeft", .{ self });
                    _ = Inheritance.call(Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList().?, "add", .{ Inheritance.call(gameKeyEventFactory.?, "getInstanceForKey", .{ self, Canvas.LEFT }) });
                }
                return true;
            } else {
                _ = Inheritance.call(self.rtsLogHelper.?, "noRotation", .{ self });
            }
            return false;
        }
    }
    

    pub fn handleDeltalX(self: *Self, dx: i32, dy: i32) void {
        _ = dy;
        const waypointBehaviorBase: ?*WaypointBehaviorBase = Inheritance.cast(?*WaypointBehaviorBase, Inheritance.fieldPointer(self, "waypointBehaviorBase").*);
        const nextUnvisitedPathGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, waypointBehaviorBase.?.getNextUnvisitedPathGeographicMapCellPosition());
        if (dx > 0) {
            self.movementAngle = Inheritance.upcast(@TypeOf(self.movementAngle), self.angleFactory.?.LEFT);
            self.steeringInsideGeographicMapCellPosition = nextUnvisitedPathGeographicMapCellPosition;
        } else {
            self.movementAngle = Inheritance.upcast(@TypeOf(self.movementAngle), self.angleFactory.?.RIGHT);
            self.steeringInsideGeographicMapCellPosition = nextUnvisitedPathGeographicMapCellPosition;
        }
        _ = Inheritance.call(self.rtsLogHelper.?, "handle", .{ self, self.movementAngle });
    }
    

    pub fn handleDeltalY(self: *Self, dx: i32, dy: i32) void {
        _ = dx;
        const waypointBehaviorBase: ?*WaypointBehaviorBase = Inheritance.cast(?*WaypointBehaviorBase, Inheritance.fieldPointer(self, "waypointBehaviorBase").*);
        const nextUnvisitedPathGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, waypointBehaviorBase.?.getNextUnvisitedPathGeographicMapCellPosition());
        if (dy > 0) {
            self.movementAngle = Inheritance.upcast(@TypeOf(self.movementAngle), self.angleFactory.?.UP);
            self.steeringInsideGeographicMapCellPosition = nextUnvisitedPathGeographicMapCellPosition;
        } else {
            self.movementAngle = Inheritance.upcast(@TypeOf(self.movementAngle), self.angleFactory.?.DOWN);
            self.steeringInsideGeographicMapCellPosition = nextUnvisitedPathGeographicMapCellPosition;
        }
        _ = Inheritance.call(self.rtsLogHelper.?, "handle", .{ self, self.movementAngle });
    }
    

    // throws Exception
    pub fn trackToDXYTargetAngle(self: *Self, dx: i32, dy: i32, targetAngle: i32) void {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(self.getUnitWaypointBehavior().?, "getSteeringVisitorList").getSteeringVisitorList());
        if (list.?.size() > 0) {
            {
                var index: i32 = list.?.size() - 1;
                while (index >= 0) : (index -= 1) {
                const steeringVisitor: ?*SteeringVisitor = Inheritance.cast(?*SteeringVisitor, Inheritance.call(list.?, "get", .{ index }));
                const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(steeringVisitor.?, "visit", .{ self }));
                if (anyType == null) {
                    _ = Inheritance.call(list.?, "removeAt", .{ index });
                }
                }
            }
            _ = self.fireOrMove();
        } else if (!Inheritance.call(self, "turnTo", .{ dx, dy, targetAngle })) {
            _ = self.fireOrMove();
        }
    }
    

    // throws Exception
    pub fn fireOrMove(self: *Self) void {
        const gameKeyEventFactory: ?*GameKeyEventFactory = Inheritance.upcast(?*GameKeyEventFactory, GameKeyEventFactory.getInstance());
        if (Inheritance.receiverOf(self.getUnitWaypointBehavior().?, "needToMove").needToMove()) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayer2LogHelper").*.?, "steeringUp", .{ self });
            if (Inheritance.fieldPointer(self, "showMoreCaptionStates").* and !Inheritance.receiver(self.captionAnimationHelper.?, "isShowing").isShowing()) {
                _ = Inheritance.call(self.captionAnimationHelper.?, "update", .{ UnitLayer.MOVE, self.basicColorFactory.?.GREEN });
            }
            _ = Inheritance.call(Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList().?, "add", .{ Inheritance.call(gameKeyEventFactory.?, "getInstanceForKey", .{ self, Canvas.UP }) });
        } else {
            _ = Inheritance.call(self.captionAnimationHelper.?, "update", .{ CommonPhoneStrings.getInstance().?.FIRE, self.basicColorFactory.?.RED });
            _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayer2LogHelper").*.?, "steeringFireOrStop", .{ self });
            _ = self.allStop();
            _ = Inheritance.call(Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList().?, "add", .{ Inheritance.call(gameKeyEventFactory.?, "getInstanceForKey", .{ self, Canvas.KEY_NUM0 }) });
            _ = Inheritance.call(TrackingEventHandler.getInstance().?, "fireEvent", .{ self.getTrackingEvent() });
        }
    }
    

    pub fn move(self: *Self) void {
        { // try
            const velocityProperties: ?*VelocityProperties = Inheritance.upcast(?*VelocityProperties, Inheritance.receiverOf(self.getVehicleProperties().?, "getVelocityProperties").getVelocityProperties());
            const velocityXScaled: i64 = @as(i64, @intCast(Inheritance.receiverOf(Inheritance.receiver(velocityProperties.?, "getVelocityXBasicDecimalP").getVelocityXBasicDecimalP().?, "getScaled").getScaled()));
            const velocityYScaled: i64 = @as(i64, @intCast(Inheritance.receiverOf(Inheritance.receiver(velocityProperties.?, "getVelocityYBasicDecimalP").getVelocityYBasicDecimalP().?, "getScaled").getScaled()));
            _ = Inheritance.receiverOf(self.getUnitWaypointBehavior().?, "move").move();
            if (velocityXScaled != 0 or velocityYScaled != 0) {
                _ = Inheritance.call(self.getUnitWaypointBehavior().?, "setMoving", .{ true });
                const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, Inheritance.fieldPointer(self, "allBinaryGameLayerManagerP").*);
                const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
                _ = Inheritance.call(self.layerPartialCellPositionsUtil.?, "getAllDXY", .{ geographicMapInterface, self, @as(i32, @intCast(velocityXScaled)), @as(i32, @intCast(velocityYScaled)), UnitLayer.getPartialpositionlist() });
                const cellPosition: ?*GeographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(DropCellPositionHistory.getInstance().?, "getCellPositionWithDrop", .{ UnitLayer.getPartialpositionlist() }));
                if (Object.same(cellPosition, self.cellPositionFactory.?.NONE)) {
                    const tiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
                    const tiledLayerUtil: ?*TiledLayerUtil = Inheritance.upcast(?*TiledLayerUtil, TiledLayerUtil.getInstance());
                    var x: i32 = Inheritance.fieldPointer(self, "x").* + @as(i32, @intCast(velocityXScaled));
                    var y: i32 = Inheritance.fieldPointer(self, "y").* + @as(i32, @intCast(velocityYScaled));
                    x = Inheritance.call(tiledLayerUtil.?, "keepOnMapX", .{ tiledLayer, x, Inheritance.receiver(self, "getWidth").getWidth() });
                    y = Inheritance.call(tiledLayerUtil.?, "keepOnMapY", .{ tiledLayer, y, Inheritance.receiver(self, "getHeight").getHeight() });
                    _ = Inheritance.call(self, "setPosition", .{ x, y, Inheritance.fieldPointer(self, "z").* });
                } else {
                    const allbinaryLayer: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.call(DropCellPositionHistory.getInstance().?, "getLayerInterface", .{ cellPosition }));
                    _ = Inheritance.call(self.getUnitWaypointBehavior().?, "setMovingFromStopped", .{ false });
                    _ = Inheritance.call(self.getUnitWaypointBehavior().?, "addBuildingChase", .{ allbinaryLayer, cellPosition });
                }
            }
            if (Inheritance.receiverOf(self.getUnitWaypointBehavior().?, "isMoving").isMoving()) {
                _ = Inheritance.call(TrackingEventHandler.getInstance().?, "fireEvent", .{ self.getTrackingEvent() });
            } else {
                _ = Inheritance.call(self.getUnitWaypointBehavior().?, "setMovingFromStopped", .{ false });
            }
            if (Inheritance.receiverOf(self.getUnitWaypointBehavior().?, "isMovingFromStopped").isMovingFromStopped() and Inheritance.receiver(self, "isVisible").isVisible()) {
                _ = Inheritance.call(SecondaryPlayerQueueFactory.getInstance().?, "add", .{ self.moveSoundInterface });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("move"), e });
    }
    

    pub fn allStop(self: *Self) void {
        const velocityProperties: ?*VelocityProperties = Inheritance.upcast(?*VelocityProperties, Inheritance.receiverOf(self.getVehicleProperties().?, "getVelocityProperties").getVelocityProperties());
        _ = Inheritance.call(Inheritance.receiver(velocityProperties.?, "getVelocityXBasicDecimalP").getVelocityXBasicDecimalP().?, "setint", .{ 0 });
        _ = Inheritance.call(Inheritance.receiver(velocityProperties.?, "getVelocityYBasicDecimalP").getVelocityYBasicDecimalP().?, "setint", .{ 0 });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        if (Inheritance.receiver(self, "isVisible").isVisible()) {
            _ = Inheritance.call(&self.base, "paint", .{ graphics });
            const viewPosition: ?*ViewPositionBase = Inheritance.upcast(?*ViewPositionBase, Inheritance.receiver(self, "getViewPosition").getViewPosition());
            const viewX: i32 = Inheritance.receiver(viewPosition.?, "getX").getX();
            const viewY: i32 = Inheritance.receiver(viewPosition.?, "getY").getY();
            _ = Inheritance.call(self.decalAnimation.?, "paintXY", .{ graphics, viewX, viewY });
            _ = Inheritance.call(Inheritance.fieldPointer(self, "rangeAnimation").*.?, "paintXY", .{ graphics, viewX, viewY });
            _ = Inheritance.call(Inheritance.fieldPointer(self, "sensorRangeAnimation").*.?, "paintXY", .{ graphics, viewX, viewY });
            _ = Inheritance.call(self.damageFloatersPaintableInterface.?, "paint", .{ graphics });
            _ = Inheritance.call(self.healthBar.?, "paint", .{ graphics });
            _ = Inheritance.call(self.captionAnimationHelper.?, "paintXY", .{ graphics, viewX, viewY });
            _ = Inheritance.call(self.pathAnimation.?, "paintXY", .{ graphics, viewX, viewY });
            _ = Inheritance.call(self.resourceAnimation.?, "paintXY", .{ graphics, viewX, viewY });
        }
    }
    

    // throws Exception
    pub fn onBuildingEvent(self: *Self, event: ?*RTSLayerEvent) void {
        const buildingLayer: ?*BuildingLayer = Inheritance.cast(?*BuildingLayer, Inheritance.receiver(event.?, "getRtsLayer").getRtsLayer());
        _ = Inheritance.call(self.getUnitWaypointBehavior().?, "moveAwayFromBuilding", .{ buildingLayer });
    }
    

    pub fn getVehicleProperties(self: *Self) ?*VehicleProperties {
        return self.vehicleProperties;
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
    

    // throws Exception
    pub fn setDestroyed(self: *Self, destroyed: bool) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, String.literal("setDestroyed") });
        _ = Inheritance.call(&self.base, "setDestroyed", .{ destroyed });
        if (Inheritance.receiver(self, "isDestroyed").isDestroyed()) {
            _ = Inheritance.call(Inheritance.callStatic(WaypointEventHandlerFactory, "getInstance", .{ Inheritance.receiver(self, "getGroupInterface").getGroupInterface()[@intCast(0)] }).?, "removeListener", .{ self.getUnitWaypointBehavior() });
            _ = Inheritance.call(TrackingEventHandler.getInstance().?, "removeListener", .{ self });
            _ = Inheritance.call(BuildingEventHandler.getInstance().?, "removeListener", .{ self });
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
    

    pub fn getLoad(self: *Self) i32 {
        return self.resourceLoad;
    }
    

    // throws Exception
    pub fn clearResourceAnimation(self: *Self) void {
        self.resourceAnimation = Inheritance.cast(?*IndexedAnimation, Inheritance.call(NullIndexedAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
    }
    

    // throws Exception
    pub fn setLoad(self: *Self, resource: i32) void {
        if (resource > 0) {
            self.resourceAnimation = Inheritance.upcast(@TypeOf(self.resourceAnimation), self.initResourceAnimation);
        } else {
            _ = self.clearResourceAnimation();
        }
        self.resourceLoad = resource;
    }
    

    pub fn addLoad(self: *Self, resource: i32) void {
        self.resourceLoad += resource;
    }
    

    // throws Exception
    pub fn handleCost(self: *Self, ownerLayer: ?*PathFindingLayerInterface) void {
        if (self.getLoad() > 0) {
            _ = Inheritance.call(self.CAPITAL_EVENT.?, "setValue", .{ self.getLoad() });
            _ = Inheritance.call(Inheritance.callStatic(CapitalEventHandlerFactory, "getInstance", .{ Inheritance.receiver(ownerLayer.?, "getGroupInterface").getGroupInterface()[@intCast(0)] }).?, "fireEvent", .{ self.CAPITAL_EVENT });
            _ = Inheritance.call(self, "setLoad", .{ 0 });
        }
    }
    

    pub fn createHudPaintable(self: *Self) ?*SelectionHudPaintable {
        const rtsLayerHudPaintable: ?*RTSLayerHudPaintable = Inheritance.upcast(?*RTSLayerHudPaintable, RTSLayerHudPaintable.getInstance());
        _ = Inheritance.call(rtsLayerHudPaintable.?, "setBasicColorP", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "allBinaryGameLayerManagerP").*.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(rtsLayerHudPaintable.?, "setRtsLayer", .{ self });
        return Inheritance.upcast(?*SelectionHudPaintable, rtsLayerHudPaintable);
    }
    

    pub fn getHudPaintable(self: *Self) ?*SelectionHudPaintable {
        _ = self;
        const rtsLayerHudPaintable: ?*RTSLayerHudPaintable = Inheritance.upcast(?*RTSLayerHudPaintable, RTSLayerHudPaintable.getInstance());
        return Inheritance.upcast(?*SelectionHudPaintable, rtsLayerHudPaintable);
    }
    

    pub fn getType(self: *Self) i32 {
        _ = self;
        return UnitLayer.getStaticType();
    }
    

    pub fn getStaticType() i32 {
        return 1;
    }
    

    pub fn getUnitWaypointBehavior(self: *Self) ?*UnitWaypointBehavior {
        return Inheritance.cast(?*UnitWaypointBehavior, Inheritance.receiver(self, "getWaypointBehavior").getWaypointBehavior());
    }
    

    pub fn getTrackingEvent(self: *Self) ?*TrackingEvent {
        return self.trackingEvent;
    }
    

    pub fn getCaptionAnimationHelper(self: *Self) ?*CaptionAnimationHelperBase {
        return self.captionAnimationHelper;
    }
    

    pub fn isSelfUpgradeable(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getMaxResourceLoad(self: *Self) i16 {
        return self.maxResourceLoad;
    }
    

    pub fn getPartialpositionlist() ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, UnitLayer.partialPositionList);
    }
};

