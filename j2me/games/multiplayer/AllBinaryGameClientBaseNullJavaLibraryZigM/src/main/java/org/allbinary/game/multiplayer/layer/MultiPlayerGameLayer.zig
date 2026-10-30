//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
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
// package org.allbinary.game.multiplayer.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const MultiPlayerGameLayerInterface = @import("org/allbinary/game/multiplayer/layer/MultiPlayerGameLayerInterface.zig").MultiPlayerGameLayerInterface;
const MultiplayerBehavior = @import("org/allbinary/game/multiplayer/layer/MultiplayerBehavior.zig").MultiplayerBehavior;
const RemoteInfo = @import("org/allbinary/game/multiplayer/layer/RemoteInfo.zig").RemoteInfo;

pub const MultiPlayerGameLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer";
    pub const java_interfaces = .{ MultiPlayerGameLayerInterface };
    base: CollidableDestroyableDamageableLayer = undefined,
    // Implements MultiPlayerGameLayerInterface
    

    pub fn create5(remoteInfo: ?*RemoteInfo, groupInterface: []?*Group, name: ?*String, layerInfo: ?*Rectangle, viewPosition: ?*ViewPositionBase) *Self {
        _ = remoteInfo;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CollidableDestroyableDamageableLayer, "create4", .{ groupInterface, name, layerInfo, viewPosition }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getMultiplayerBehavior(self: *Self) ?*MultiplayerBehavior {
        _ = self;
        return Inheritance.upcast(?*MultiplayerBehavior, MultiplayerBehavior.NULL_MULTIPLAYER_BEHAVIOR);
    }
    

    pub fn setPingInfo(self: *Self, show: bool) void {
        _ = show;
        _ = self;
    }
    

    pub fn setFiring(self: *Self, firing: i16) void {
        _ = firing;
        _ = self;
    }
    

    pub fn getFiring(self: *Self) i16 {
        _ = self;
        return 0;
    }
};

