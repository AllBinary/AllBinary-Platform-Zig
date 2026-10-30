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
// package org.allbinary.game.ag.layer.weapon.mine

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DropWeaponSound = @import("org/allbinary/ag/weapon/media/audio/DropWeaponSound.zig").DropWeaponSound;
const FeaturedAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.zig").FeaturedAnimationInterfaceFactoryInterfaceFactory;
const SimpleWeaponLayer = @import("org/allbinary/game/layer/weapon/SimpleWeaponLayer.zig").SimpleWeaponLayer;
const RemoteInfo = @import("org/allbinary/game/multiplayer/layer/RemoteInfo.zig").RemoteInfo;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const SecondaryPlayerQueueFactory = @import("org/allbinary/media/audio/SecondaryPlayerQueueFactory.zig").SecondaryPlayerQueueFactory;
const NoMovementFactory = @import("org/allbinary/physics/movement/NoMovementFactory.zig").NoMovementFactory;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const ViewPositionEventHandler = @import("org/allbinary/view/event/ViewPositionEventHandler.zig").ViewPositionEventHandler;
const MineWeaponResources = @import("org/allbinary/game/ag/layer/weapon/mine/MineWeaponResources.zig").MineWeaponResources;

pub const MineLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.weapon.mine.MineLayer";
    base: SimpleWeaponLayer = undefined,
    viewPositionEventHandler: ?*ViewPositionEventHandler = null,
    const NAME: ?*String = String.literal("MineLayer");

    fn initFields(this: *Self) void {
        this.viewPositionEventHandler = Inheritance.upcast(?*ViewPositionEventHandler, ViewPositionEventHandler.getInstance());
    }
    

    pub fn create1(viewPosition: ?*ViewPositionBase) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(SimpleWeaponLayer, "create8", .{ MineLayer.NAME, RemoteInfo.REMOTE_INFO, -1, Inheritance.receiverOf(NoMovementFactory.getInstance().?, "getMovmentInstance").getMovmentInstance(), Inheritance.call(Inheritance.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().?, "get", .{ MineWeaponResources.getInstance().?.RESOURCE }).?, "getInstance", .{ 0 }), SimpleWeaponLayer.createDestroyed(), Inheritance.callStatic(Rectangle, "create3", .{ PointFactory.getInstance().?.ZERO_ZERO, 10, 10 }), viewPosition }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initXYZ(self: *Self, x: i32, y: i32, z: i32) void {
        _ = Inheritance.call(self, "setPosition", .{ x + 5, y + 5, z });
        _ = Inheritance.call(self.viewPositionEventHandler.?, "addListener", .{ Inheritance.cast(?*AllBinaryLayer, self) });
        _ = Inheritance.call(SecondaryPlayerQueueFactory.getInstance().?, "add", .{ DropWeaponSound.getInstance() });
    }
    

    pub fn damage(self: *Self, damage_: i32, damageType: i32) void {
        _ = damage_;
        _ = damageType;
        Inheritance.fieldPointer(self, "totalDamage").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "totalDamage").*), Inheritance.receiver(self, "getInitDamage").getInitDamage() + 1);
    }
    

    pub fn getDamage(self: *Self, damageType: i32) i32 {
        _ = Inheritance.call(&self.base, "getDamage", .{ damageType });
        return Inheritance.receiver(self, "getInitDamage").getInitDamage();
    }
    

    pub fn setDestroyed(self: *Self, destroyed: bool) void {
        _ = Inheritance.call(&self.base, "setDestroyed", .{ destroyed });
        if (Inheritance.receiver(self, "isDestroyed").isDestroyed()) {
            _ = Inheritance.call(self.viewPositionEventHandler.?, "removeListener", .{ self });
        }
    }
};

