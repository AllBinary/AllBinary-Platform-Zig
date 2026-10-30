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
// package org.allbinary.game.layer.waypoint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;
const Health = @import("org/allbinary/game/health/Health.zig").Health;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const NullRTSFormInputFactory = @import("org/allbinary/game/input/form/NullRTSFormInputFactory.zig").NullRTSFormInputFactory;
const AdvancedRTSGameLayer = @import("org/allbinary/game/layer/AdvancedRTSGameLayer.zig").AdvancedRTSGameLayer;
const AdvancedRTSProperties = @import("org/allbinary/game/layer/AdvancedRTSProperties.zig").AdvancedRTSProperties;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const TileLayerPositionIntoViewPosition = @import("org/allbinary/game/view/TileLayerPositionIntoViewPosition.zig").TileLayerPositionIntoViewPosition;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;
const RemoteInfo = @import("org/allbinary/game/multiplayer/layer/RemoteInfo.zig").RemoteInfo;
const AttackSound = @import("org/allbinary/media/audio/AttackSound.zig").AttackSound;
const CollidableWaypointBehavior = @import("org/allbinary/game/layer/waypoint/CollidableWaypointBehavior.zig").CollidableWaypointBehavior;
const Waypoint = @import("org/allbinary/game/layer/waypoint/Waypoint.zig").Waypoint;
const WaypointCellPositionHistory = @import("org/allbinary/game/layer/waypoint/WaypointCellPositionHistory.zig").WaypointCellPositionHistory;

pub const WaypointLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.WaypointLayer";
    base: AdvancedRTSGameLayer = undefined,
    

    pub fn create10(remoteInfo: ?*RemoteInfo, parentLayer: ?*PathFindingLayerInterface, groupInterface: []?*Group, rootName: ?*String, name: ?*String, animationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface: ?*ProceduralAnimationInterfaceFactoryInterface, rectangle: ?*Rectangle, x: i32, y: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AdvancedRTSGameLayer, "create18", .{ remoteInfo, parentLayer, AdvancedRTSProperties.createProperties(), groupInterface, rootName, name, Inheritance.callStatic(Health, "create1", .{ 1000 }), NullRTSFormInputFactory.getInstance(), animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, TileLayerPositionIntoViewPosition.create() }).*;
        _ = Inheritance.call(this, "setCollidableInferface", .{ Inheritance.callStatic(CollidableWaypointBehavior, "create1", .{ true }) });
        _ = Inheritance.call(Inheritance.receiver(this, "getWaypointBehavior").getWaypointBehavior().?, "setWaypoint", .{ Inheritance.callStatic(Waypoint, "create2", .{ this, AttackSound.getInstance() }) });
        _ = Inheritance.call(this, "setAnimationInterface", .{ Inheritance.fieldPointer(this, "indexedButShouldBeRotationAnimationInterface").* });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn construct(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface) void {
        Inheritance.fieldPointer(self, "percentCompleteP").* = 100;
        _ = Inheritance.call(self, "initVisibility", .{ rtsPlayerLayerInterface });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        if (Inheritance.receiver(self, "isVisible").isVisible()) {
            _ = Inheritance.call(&self.base, "paint", .{ graphics });
        }
    }
    

    pub fn processTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        { // try
            _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "indexedButShouldBeRotationAnimationInterface").*.?, "nextFrame").nextFrame();
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("processTick"), e });
    }
    

    pub fn damage(self: *Self, damage_: i32, damageType: i32) void {
        _ = damage_;
        _ = damageType;
        _ = self;
    }
    

    // throws Exception
    pub fn getDamage(self: *Self, damageType: i32) i32 {
        _ = damageType;
        _ = self;
        return 0;
    }
    

    // throws Exception
    pub fn setDestroyed(self: *Self, destroyed: bool) void {
        _ = Inheritance.call(&self.base, "setDestroyed", .{ destroyed });
        if (Inheritance.receiver(self, "isDestroyed").isDestroyed()) {
            _ = Inheritance.call(WaypointCellPositionHistory.getInstance().?, "removeLayer", .{ self });
        }
    }
    

    pub fn getType(self: *Self) i32 {
        _ = self;
        return WaypointLayer.getStaticType();
    }
    

    pub fn getStaticType() i32 {
        return 4;
    }
    

    pub fn isSelfUpgradeable(self: *Self) bool {
        _ = self;
        return false;
    }
};

