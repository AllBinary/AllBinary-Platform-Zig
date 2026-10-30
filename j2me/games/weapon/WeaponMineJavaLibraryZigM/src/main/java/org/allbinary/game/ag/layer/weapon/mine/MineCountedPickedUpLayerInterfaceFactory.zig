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
const FeaturedAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.zig").FeaturedAnimationInterfaceFactoryInterfaceFactory;
const WeaponProperties = @import("org/allbinary/game/combat/weapon/WeaponProperties.zig").WeaponProperties;
const CountedPickedUpLayerInterfaceFactory = @import("org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.zig").CountedPickedUpLayerInterfaceFactory;
const IconLayerFactory = @import("org/allbinary/game/layer/pickup/IconLayerFactory.zig").IconLayerFactory;
const PickedUpLayerInterfaceFactoryInterface = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.zig").PickedUpLayerInterfaceFactoryInterface;
const PickedUpLayerTypeFactory = @import("org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.zig").PickedUpLayerTypeFactory;
const WeaponLayerCircularPool = @import("org/allbinary/game/layer/weapon/WeaponLayerCircularPool.zig").WeaponLayerCircularPool;
const ScoreableInterface = @import("org/allbinary/game/score/ScoreableInterface.zig").ScoreableInterface;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const MineLayerCircularStaticPool = @import("org/allbinary/game/ag/layer/weapon/mine/MineLayerCircularStaticPool.zig").MineLayerCircularStaticPool;
const MineWeaponResources = @import("org/allbinary/game/ag/layer/weapon/mine/MineWeaponResources.zig").MineWeaponResources;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const MineCountedPickedUpLayerInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory";
    base: CountedPickedUpLayerInterfaceFactory = undefined,
    weaponLayerCircularStaticPool: ?*WeaponLayerCircularPool = null,
    weaponProperties: ?*WeaponProperties = null,
    smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = null,
    var pickedUpLayerInterfaceFactoryInterface: ?*PickedUpLayerInterfaceFactoryInterface = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        pickedUpLayerInterfaceFactoryInterface = Inheritance.upcast(?*PickedUpLayerInterfaceFactoryInterface, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY);
    }

    fn initFields(this: *Self) void {
        this.weaponLayerCircularStaticPool = Inheritance.upcast(?*WeaponLayerCircularPool, MineLayerCircularStaticPool.getInstance());
        this.weaponProperties = Inheritance.callStatic(WeaponProperties, "create5", .{ -1, -1, 0, 8000, @as(i16, @intCast(10)) });
        this.smallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
    }
    

    // throws Exception
    pub fn init() void {
        MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = Inheritance.upcast(@TypeOf(MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface), MineCountedPickedUpLayerInterfaceFactory.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CountedPickedUpLayerInterfaceFactory, "create3", .{ PickedUpLayerTypeFactory.getInstance().?.MINE, Inheritance.callStatic(IconLayerFactory, "getInstance", .{ Inheritance.call(Inheritance.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().?, "get", .{ MineWeaponResources.getInstance().?.DROP_ICON_RESOURCE }).?, "getInstance", .{ 0 }), 10, 10 }), Inheritance.call(Inheritance.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().?, "get", .{ MineWeaponResources.getInstance().?.DROP_RESOURCE }).?, "getInstance", .{ 0 }) }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*PickedUpLayerInterfaceFactoryInterface {
        return Inheritance.upcast(?*PickedUpLayerInterfaceFactoryInterface, MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface);
    }
    

    pub fn getTotal(self: *Self) i32 {
        _ = self;
        return 3;
    }
    

    // throws Exception
    pub fn getNextInstance(self: *Self, hashtable: ?*ABHashtable, x: i32, y: i32, z: i32) ?*AllBinaryLayer {
        const sourceLayerInterface: ?*AllBinaryLayer = Inheritance.cast(?*AllBinaryLayer, Inheritance.call(hashtable.?, "get", .{ Inheritance.cast(?Object, Inheritance.call(self.smallIntegerSingletonFactory.?, "getAt", .{ 0 })) }));
        const angle: ?*Integer = Inheritance.cast(?*Integer, Inheritance.call(hashtable.?, "get", .{ Inheritance.cast(?Object, Inheritance.call(self.smallIntegerSingletonFactory.?, "getAt", .{ 1 })) }));
        const scoreableInterface: ?*ScoreableInterface = Inheritance.cast(?*ScoreableInterface, sourceLayerInterface);
        return Inheritance.upcast(?*AllBinaryLayer, Inheritance.call(self.weaponLayerCircularStaticPool.?, "getInstanceWeaponLayer", .{ sourceLayerInterface, x, y, z, @as(i32, @intCast(angle.?.intValue())), 0, self.weaponProperties, scoreableInterface }));
    }
};

