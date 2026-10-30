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
// package org.allbinary.game.layer.geological.resources

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const SelectionHudPaintable = @import("org/allbinary/game/layer/SelectionHudPaintable.zig").SelectionHudPaintable;
const WaypointLayer = @import("org/allbinary/game/layer/waypoint/WaypointLayer.zig").WaypointLayer;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const RemoteInfo = @import("org/allbinary/game/multiplayer/layer/RemoteInfo.zig").RemoteInfo;
const GeologicalResourceInfoHudPaintable = @import("org/allbinary/game/layer/geological/resources/GeologicalResourceInfoHudPaintable.zig").GeologicalResourceInfoHudPaintable;
const GeologicalResourceInfoHudPaintableSingleton = @import("org/allbinary/game/layer/geological/resources/GeologicalResourceInfoHudPaintableSingleton.zig").GeologicalResourceInfoHudPaintableSingleton;

pub const ResourceWaypointLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.geological.resources.ResourceWaypointLayer";
    base: WaypointLayer = undefined,
    

    pub fn create10(remoteInfo: ?*RemoteInfo, parentLayer: ?*PathFindingLayerInterface, groupInterface: []?*Group, rootName: ?*String, name: ?*String, animationInterfaceFactoryInterface: ?*AnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface: ?*ProceduralAnimationInterfaceFactoryInterface, rectangle: ?*Rectangle, x: i32, y: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(WaypointLayer, "create10", .{ remoteInfo, parentLayer, groupInterface, rootName, name, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn createHudPaintable(self: *Self) ?*SelectionHudPaintable {
        const rtsLayerHudPaintable: ?*GeologicalResourceInfoHudPaintable = Inheritance.upcast(?*GeologicalResourceInfoHudPaintable, GeologicalResourceInfoHudPaintableSingleton.getInstance());
        _ = Inheritance.call(rtsLayerHudPaintable.?, "setBasicColorP", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "allBinaryGameLayerManagerP").*.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(rtsLayerHudPaintable.?, "setRtsLayer", .{ self });
        return Inheritance.upcast(?*SelectionHudPaintable, rtsLayerHudPaintable);
    }
    

    pub fn getHudPaintable(self: *Self) ?*SelectionHudPaintable {
        _ = self;
        const rtsLayerHudPaintable: ?*GeologicalResourceInfoHudPaintable = Inheritance.upcast(?*GeologicalResourceInfoHudPaintable, GeologicalResourceInfoHudPaintableSingleton.getInstance());
        return Inheritance.upcast(?*SelectionHudPaintable, rtsLayerHudPaintable);
    }
};

