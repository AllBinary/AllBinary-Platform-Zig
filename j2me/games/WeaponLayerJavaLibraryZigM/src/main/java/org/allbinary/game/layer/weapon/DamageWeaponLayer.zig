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
const RemoteInfo = @import("org/allbinary/game/multiplayer/layer/RemoteInfo.zig").RemoteInfo;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const Movement = @import("org/allbinary/physics/movement/Movement.zig").Movement;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const CollidableDamageWeaponBehavior = @import("org/allbinary/game/layer/weapon/CollidableDamageWeaponBehavior.zig").CollidableDamageWeaponBehavior;
const WeaponLayer = @import("org/allbinary/game/layer/weapon/WeaponLayer.zig").WeaponLayer;

pub const DamageWeaponLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.weapon.DamageWeaponLayer";
    base: WeaponLayer = undefined,
    

    pub fn create11(name: ?*String, remoteInfo: ?*RemoteInfo, movement: ?*Movement, animationInterface: ?*Animation, destroyedAnimationInterface: ?*Animation, rectangle: ?*Rectangle, viewPosition: ?*ViewPositionBase, username: ?*String, actorSessionId: i32, id: i32, multiPlayerType: i32) *Self {
        _ = username;
        _ = actorSessionId;
        _ = id;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(WeaponLayer, "create8", .{ name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition }).*;
        _ = Inheritance.call(this, "setCollidableInferface", .{ Inheritance.callStatic(CollidableDamageWeaponBehavior, "create1", .{ true }) });
        Inheritance.bindOverrides(this);
        return this;
    }
};

