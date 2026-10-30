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
// package org.allbinary.game.layer.pickup

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const BasicGroupFactory = @import("org/allbinary/game/identification/BasicGroupFactory.zig").BasicGroupFactory;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const RemoteInfo = @import("org/allbinary/game/multiplayer/layer/RemoteInfo.zig").RemoteInfo;
const TileLayerPositionIntoViewPosition = @import("org/allbinary/game/view/TileLayerPositionIntoViewPosition.zig").TileLayerPositionIntoViewPosition;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const ViewPosition = @import("org/allbinary/view/ViewPosition.zig").ViewPosition;
const ViewPositionEventHandler = @import("org/allbinary/view/event/ViewPositionEventHandler.zig").ViewPositionEventHandler;
const CountedPickedUpLayerInterfaceFactory = @import("org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.zig").CountedPickedUpLayerInterfaceFactory;
const PickupLayer = @import("org/allbinary/game/layer/pickup/PickupLayer.zig").PickupLayer;

pub const RaceTrackPickupLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.pickup.RaceTrackPickupLayer";
    base: PickupLayer = undefined,
    viewPositionEventHandler: ?*ViewPositionEventHandler = null,
    const NAME: ?*String = String.literal("RaceTrackPickupLayer");

    fn initFields(this: *Self) void {
        this.viewPositionEventHandler = Inheritance.upcast(?*ViewPositionEventHandler, ViewPositionEventHandler.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PickupLayer, "create7", .{ RaceTrackPickupLayer.NAME, RemoteInfo.REMOTE_INFO, 0, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }), Inheritance.callStatic(Rectangle, "create3", .{ PointFactory.getInstance().?.ZERO_ZERO, 0, 0 }), TileLayerPositionIntoViewPosition.create() }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setTiledLayer(self: *Self, tiledLayer: ?*AllBinaryTiledLayer) void {
        const viewPosition: ?*TileLayerPositionIntoViewPosition = Inheritance.cast(?*TileLayerPositionIntoViewPosition, Inheritance.receiver(self, "getViewPosition").getViewPosition());
        _ = Inheritance.call(viewPosition.?, "setTiledLayer", .{ tiledLayer });
        _ = Inheritance.call(self.viewPositionEventHandler.?, "addListener", .{ Inheritance.cast(?*AllBinaryLayer, self) });
    }
    

    pub fn setDestroyed(self: *Self, destroyed: bool) void {
        _ = Inheritance.call(&self.base, "setDestroyed", .{ destroyed });
        if (Inheritance.receiver(self, "isDestroyed").isDestroyed()) {
            _ = Inheritance.call(self.viewPositionEventHandler.?, "removeListener", .{ self });
        }
    }
};

