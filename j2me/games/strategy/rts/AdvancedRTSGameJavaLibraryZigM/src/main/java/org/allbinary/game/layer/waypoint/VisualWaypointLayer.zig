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
// package org.allbinary.game.layer.waypoint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const SelectionHudPaintable = @import("org/allbinary/game/layer/SelectionHudPaintable.zig").SelectionHudPaintable;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const RemoteInfo = @import("org/allbinary/game/multiplayer/layer/RemoteInfo.zig").RemoteInfo;
const WaypointInfoHudPaintable = @import("org/allbinary/game/layer/waypoint/WaypointInfoHudPaintable.zig").WaypointInfoHudPaintable;
const WaypointInfoHudPaintableSingleton = @import("org/allbinary/game/layer/waypoint/WaypointInfoHudPaintableSingleton.zig").WaypointInfoHudPaintableSingleton;
const WaypointLayer = @import("org/allbinary/game/layer/waypoint/WaypointLayer.zig").WaypointLayer;

pub const VisualWaypointLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.VisualWaypointLayer";
    base: WaypointLayer = undefined,
    

    pub fn create10(remoteInfo: ?*RemoteInfo, parentLayer: ?*PathFindingLayerInterface, groupInterface: []?*Group, rootName: ?*String, name: ?*String, animationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface: ?*ProceduralAnimationInterfaceFactoryInterface, rectangle: ?*Rectangle, x: i32, y: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(WaypointLayer, "create10", .{ remoteInfo, parentLayer, groupInterface, rootName, name, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn createHudPaintable(self: *Self) ?*SelectionHudPaintable {
        const rtsLayerHudPaintable: ?*WaypointInfoHudPaintable = Inheritance.upcast(?*WaypointInfoHudPaintable, WaypointInfoHudPaintableSingleton.getInstance());
        _ = Inheritance.call(rtsLayerHudPaintable.?, "setBasicColorP", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "allBinaryGameLayerManagerP").*.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(rtsLayerHudPaintable.?, "setRtsLayer", .{ self });
        return Inheritance.upcast(?*SelectionHudPaintable, rtsLayerHudPaintable);
    }
    

    pub fn getHudPaintable(self: *Self) ?*SelectionHudPaintable {
        _ = self;
        const rtsLayerHudPaintable: ?*WaypointInfoHudPaintable = Inheritance.upcast(?*WaypointInfoHudPaintable, WaypointInfoHudPaintableSingleton.getInstance());
        return Inheritance.upcast(?*SelectionHudPaintable, rtsLayerHudPaintable);
    }
};

