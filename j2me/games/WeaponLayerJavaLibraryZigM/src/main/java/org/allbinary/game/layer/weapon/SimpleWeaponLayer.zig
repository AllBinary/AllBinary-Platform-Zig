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
// package org.allbinary.game.layer.weapon

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const FeaturedAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.zig").FeaturedAnimationInterfaceFactoryInterfaceFactory;
const NullIndexedAnimationFactory = @import("org/allbinary/animation/NullIndexedAnimationFactory.zig").NullIndexedAnimationFactory;
const ExplosionResources = @import("org/allbinary/game/combat/damage/ExplosionResources.zig").ExplosionResources;
const RemoteInfo = @import("org/allbinary/game/multiplayer/layer/RemoteInfo.zig").RemoteInfo;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const Movement = @import("org/allbinary/physics/movement/Movement.zig").Movement;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const CollidableWeaponBehavior = @import("org/allbinary/game/layer/weapon/CollidableWeaponBehavior.zig").CollidableWeaponBehavior;
const WeaponLayer = @import("org/allbinary/game/layer/weapon/WeaponLayer.zig").WeaponLayer;

pub const SimpleWeaponLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.weapon.SimpleWeaponLayer";
    base: WeaponLayer = undefined,
    

    // throws Exception
    pub fn createDestroyed() ?*Animation {
        return Inheritance.upcast(?*Animation, Inheritance.call(Inheritance.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().?, "getProcedural", .{ ExplosionResources.getInstance().?.THIRD_EXPLOSION_RESOURCE }).?, "getInstanceAnimation", .{ Inheritance.call(NullIndexedAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }) }));
    }
    

    pub fn create8(name: ?*String, remoteInfo: ?*RemoteInfo, multiPlayerType: i32, movement: ?*Movement, animationInterface: ?*Animation, destroyedAnimationInterface: ?*Animation, rectangle: ?*Rectangle, viewPosition: ?*ViewPositionBase) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(WeaponLayer, "create8", .{ name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition }).*;
        _ = Inheritance.call(this, "setCollidableInferface", .{ Inheritance.callStatic(CollidableWeaponBehavior, "create1", .{ true }) });
        Inheritance.bindOverrides(this);
        return this;
    }
};

