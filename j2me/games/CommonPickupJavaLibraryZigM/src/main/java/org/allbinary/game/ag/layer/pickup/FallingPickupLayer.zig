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
// package org.allbinary.game.ag.layer.pickup

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const CountedPickedUpLayerInterfaceFactory = @import("org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.zig").CountedPickedUpLayerInterfaceFactory;
const PickupLayer = @import("org/allbinary/game/layer/pickup/PickupLayer.zig").PickupLayer;
const RemoteInfo = @import("org/allbinary/game/multiplayer/layer/RemoteInfo.zig").RemoteInfo;
const TickableInterface = @import("org/allbinary/game/tick/TickableInterface.zig").TickableInterface;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const ViewPosition = @import("org/allbinary/view/ViewPosition.zig").ViewPosition;

pub const FallingPickupLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.pickup.FallingPickupLayer";
    base: PickupLayer = undefined,
    // Implements TickableInterface
    const NAME: ?*String = String.literal("FallingPickupLayer");
    

    pub fn create1(remoteInfo: ?*RemoteInfo) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PickupLayer, "create7", .{ FallingPickupLayer.NAME, remoteInfo, 0, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }), Inheritance.callStatic(Rectangle, "create3", .{ PointFactory.getInstance().?.ZERO_ZERO, 0, 0 }), ViewPosition.getInstanceD() }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn processTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        _ = Inheritance.call(self, "setPosition", .{ Inheritance.fieldPointer(self, "x").*, Inheritance.fieldPointer(self, "y").* + 1, Inheritance.fieldPointer(self, "z").* });
    }
    

    pub fn implmentsTickableInterface(self: *Self) bool {
        _ = self;
        return true;
    }
};

