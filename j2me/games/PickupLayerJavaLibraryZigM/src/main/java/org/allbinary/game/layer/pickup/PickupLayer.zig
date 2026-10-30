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
// const GL = @import("javax/microedition/khronos/opengles/GL.zig").GL;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const CollidableAlwaysPickupNeverCollideBehaviorFactory = @import("org/allbinary/game/collision/CollidableAlwaysPickupNeverCollideBehaviorFactory.zig").CollidableAlwaysPickupNeverCollideBehaviorFactory;
const DestroyedLayerProcessor = @import("org/allbinary/game/combat/destroy/DestroyedLayerProcessor.zig").DestroyedLayerProcessor;
const BasicGroupFactory = @import("org/allbinary/game/identification/BasicGroupFactory.zig").BasicGroupFactory;
const MultiPlayerGameLayer = @import("org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer.zig").MultiPlayerGameLayer;
const RemoteInfo = @import("org/allbinary/game/multiplayer/layer/RemoteInfo.zig").RemoteInfo;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const OpenGLSurfaceChangedInterface = @import("org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.zig").OpenGLSurfaceChangedInterface;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const CountedPickedUpLayerInterfaceFactory = @import("org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.zig").CountedPickedUpLayerInterfaceFactory;
const PickedUpLayerInterface = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterface.zig").PickedUpLayerInterface;
const PickedUpLayerInterfaceFactoryInterface = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.zig").PickedUpLayerInterfaceFactoryInterface;
const PickupableInterface = @import("org/allbinary/game/layer/pickup/PickupableInterface.zig").PickupableInterface;

pub const PickupLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.pickup.PickupLayer";
    pub const java_interfaces = .{ PickedUpLayerInterface, PickupableInterface };
    base: MultiPlayerGameLayer = undefined,
    pickedUpLayerInterfaceFactoryInterface: ?*PickedUpLayerInterfaceFactoryInterface = null,
    destroyed: bool = false,
    animationInterface: ?*Animation = null,
    // Implements PickedUpLayerInterface
    // Implements PickupableInterface

    fn initFields(this: *Self) void {
        this.pickedUpLayerInterfaceFactoryInterface = Inheritance.upcast(?*PickedUpLayerInterfaceFactoryInterface, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY);
        this.destroyed = false;
        this.animationInterface = Inheritance.upcast(?*Animation, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
    }
    

    pub fn create7(name: ?*String, remoteInfo: ?*RemoteInfo, total: i32, pickedUpLayerInterfaceFactoryInterface: ?*PickedUpLayerInterfaceFactoryInterface, animationInterface: ?*Animation, rectangle: ?*Rectangle, viewPosition: ?*ViewPositionBase) *Self {
        _ = total;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(MultiPlayerGameLayer, "create5", .{ remoteInfo, BasicGroupFactory.getInstance().?.NONE_ARRAY, name, rectangle, viewPosition }).*;
        this.initFields();
        _ = Inheritance.call(this, "setCollidableInferface", .{ Inheritance.receiverOf(CollidableAlwaysPickupNeverCollideBehaviorFactory.getInstance().?, "createBehavior").createBehavior() });
        _ = Inheritance.call(this, "setLayerWidth", .{ 10 });
        _ = Inheritance.call(this, "setLayerHeight", .{ 10 });
        _ = Inheritance.call(this, "init", .{ pickedUpLayerInterfaceFactoryInterface, animationInterface });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self, pickedUpLayerInterfaceFactoryInterface: ?*PickedUpLayerInterfaceFactoryInterface, animationInterface: ?*Animation) void {
        self.pickedUpLayerInterfaceFactoryInterface = pickedUpLayerInterfaceFactoryInterface;
        self.animationInterface = animationInterface;
        _ = Inheritance.call(self, "setDestroyed", .{ false });
    }
    

    pub fn initXYZ(self: *Self, x: i32, y: i32, z: i32) void {
        _ = Inheritance.call(self, "setPosition", .{ x, y, z });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        const viewPosition: ?*ViewPositionBase = Inheritance.upcast(?*ViewPositionBase, Inheritance.receiver(self, "getViewPosition").getViewPosition());
        const viewX: i32 = Inheritance.receiver(viewPosition.?, "getX").getX();
        const viewY: i32 = Inheritance.receiver(viewPosition.?, "getY").getY();
        _ = Inheritance.call(self.animationInterface.?, "paintXY", .{ graphics, viewX, viewY });
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        const viewPosition: ?*ViewPositionBase = Inheritance.upcast(?*ViewPositionBase, Inheritance.receiver(self, "getViewPosition").getViewPosition());
        const viewX: i32 = Inheritance.receiver(viewPosition.?, "getX").getX();
        const viewY: i32 = Inheritance.receiver(viewPosition.?, "getY").getY();
        _ = Inheritance.call(self.animationInterface.?, "paintThreedXYZ", .{ graphics, viewX, viewY, 3 });
    }
    

    pub fn getPickedUpLayerInterfaceFactoryInterface(self: *Self) ?*PickedUpLayerInterfaceFactoryInterface {
        return self.pickedUpLayerInterfaceFactoryInterface;
    }
    

    pub fn setPickedUp(self: *Self) void {
        _ = Inheritance.call(self, "setDestroyed", .{ true });
    }
    

    pub fn isDestroyed(self: *Self) bool {
        return self.destroyed;
    }
    

    pub fn setDestroyed(self: *Self, destroyed: bool) void {
        self.destroyed = destroyed;
        if (self.isDestroyed()) {
            _ = Inheritance.call(DestroyedLayerProcessor.getInstance().?, "add", .{ self });
        }
    }
    

    pub fn damage(self: *Self, damage_: i32, damageType: i32) void {
        _ = damage_;
        _ = damageType;
        _ = self;
    }
    

    pub fn getDamage(self: *Self, damageType: i32) i32 {
        _ = damageType;
        _ = self;
        return 0;
    }
    

    // throws Exception
    pub fn set(self: *Self, gl: ?*GL) void {
        const openGLSurfaceChangedInterface: ?*OpenGLSurfaceChangedInterface = Inheritance.cast(?*OpenGLSurfaceChangedInterface, self.animationInterface);
        _ = Inheritance.call(openGLSurfaceChangedInterface.?, "set", .{ gl });
    }
};

