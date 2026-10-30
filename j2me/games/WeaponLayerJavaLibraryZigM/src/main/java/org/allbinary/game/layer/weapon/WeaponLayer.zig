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
// const GL = @import("javax/microedition/khronos/opengles/GL.zig").GL;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const CollidableBaseBehavior = @import("org/allbinary/game/collision/CollidableBaseBehavior.zig").CollidableBaseBehavior;
const DestroyedLayerProcessor = @import("org/allbinary/game/combat/destroy/DestroyedLayerProcessor.zig").DestroyedLayerProcessor;
const WeaponProperties = @import("org/allbinary/game/combat/weapon/WeaponProperties.zig").WeaponProperties;
const GameConfigurationUtil = @import("org/allbinary/game/configuration/GameConfigurationUtil.zig").GameConfigurationUtil;
const BasicGroupFactory = @import("org/allbinary/game/identification/BasicGroupFactory.zig").BasicGroupFactory;
const MultiPlayerGameLayer = @import("org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer.zig").MultiPlayerGameLayer;
const RemoteInfo = @import("org/allbinary/game/multiplayer/layer/RemoteInfo.zig").RemoteInfo;
const NoScoreable = @import("org/allbinary/game/score/NoScoreable.zig").NoScoreable;
const ScoreableInterface = @import("org/allbinary/game/score/ScoreableInterface.zig").ScoreableInterface;
const TickableInterface = @import("org/allbinary/game/tick/TickableInterface.zig").TickableInterface;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const Movement = @import("org/allbinary/physics/movement/Movement.zig").Movement;
const ViewPosition = @import("org/allbinary/view/ViewPosition.zig").ViewPosition;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const CollidableWeaponBehavior = @import("org/allbinary/game/layer/weapon/CollidableWeaponBehavior.zig").CollidableWeaponBehavior;

pub const WeaponLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.weapon.WeaponLayer";
    base: MultiPlayerGameLayer = undefined,
    animationInterface: ?*Animation = null,
    initAnimationInterface: ?*Animation = null,
    destroyedAnimationInterface: ?*Animation = null,
    sourceLayerInterface: ?*AllBinaryLayer = null,
    totalDamage: i32 = 0,
    initDamage: i32 = 0,
    destroyed: bool = false,
    scoreableInterface: ?*ScoreableInterface = null,
    movement: ?*Movement = null,
    weaponProperties: ?*WeaponProperties = null,
    multiPlayerType: i32 = 0,
    collidableWeaponBehavior: ?*CollidableWeaponBehavior = null,
    // Implements TickableInterface

    fn initFields(this: *Self) void {
        this.animationInterface = Inheritance.upcast(?*Animation, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
        
        
        this.sourceLayerInterface = Inheritance.upcast(?*AllBinaryLayer, AllBinaryLayer.NULL_ALLBINARY_LAYER);
        this.totalDamage = 0;
        this.initDamage = 0;
        this.destroyed = true;
        this.scoreableInterface = Inheritance.upcast(?*ScoreableInterface, NoScoreable.getInstance());
        
        this.weaponProperties = Inheritance.upcast(?*WeaponProperties, WeaponProperties.NULL_WEAPON_PROPERTIES);
        
        this.collidableWeaponBehavior = Inheritance.upcast(?*CollidableWeaponBehavior, CollidableWeaponBehavior.getNullInstance());
    }
    

    pub fn create8(name: ?*String, remoteInfo: ?*RemoteInfo, multiPlayerType: i32, movement: ?*Movement, animationInterface: ?*Animation, destroyedAnimationInterface: ?*Animation, rectangle: ?*Rectangle, viewPosition: ?*ViewPositionBase) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(MultiPlayerGameLayer, "create5", .{ remoteInfo, BasicGroupFactory.getInstance().?.NONE_ARRAY, name, rectangle, viewPosition }).*;
        this.initFields();
        this.initAnimationInterface = animationInterface;
        _ = Inheritance.call(this, "setAnimationInterface", .{ animationInterface });
        this.destroyedAnimationInterface = destroyedAnimationInterface;
        this.movement = movement;
        this.multiPlayerType = multiPlayerType;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setCollidableInferface(self: *Self, collidableInferface: ?*CollidableBaseBehavior) void {
        _ = Inheritance.call(&self.base, "setCollidableInferface", .{ collidableInferface });
        self.collidableWeaponBehavior = Inheritance.cast(?*CollidableWeaponBehavior, Inheritance.receiver(self, "getCollidableInferface").getCollidableInferface());
    }
    

    // throws Exception
    pub fn initXYZ(self: *Self, x: i32, y: i32, z: i32) void {
        Inheritance.fieldPointer(self, "x").* = x;
        Inheritance.fieldPointer(self, "y").* = y;
        Inheritance.fieldPointer(self, "z").* = z;
    }
    

    // throws Exception
    pub fn init(self: *Self, sourceLayerInterface: ?*AllBinaryLayer, angle: i32, otherAngle: i32, weaponProperties: ?*WeaponProperties, scoreable: ?*ScoreableInterface) void {
        _ = Inheritance.call(self, "setWeaponPropertiesP", .{ weaponProperties });
        _ = Inheritance.call(self, "setReadyForExplosion", .{ false });
        _ = Inheritance.call(self, "setAnimationInterface", .{ self.getInitAnimationInterfaceP() });
        _ = Inheritance.call(self, "setOwnerLayerInterface", .{ sourceLayerInterface });
        _ = Inheritance.call(self.collidableWeaponBehavior.?, "init", .{ sourceLayerInterface });
        _ = self.setGroupInterfaces();
        if (scoreable != null) {
            self.scoreableInterface = scoreable;
        }
        self.totalDamage = 0;
        self.initDamage = Inheritance.receiver(weaponProperties.?, "getDamage").getDamage();
        _ = Inheritance.call(self, "setDestroyed", .{ false });
        _ = Inheritance.call(self.movement.?, "init", .{ Inheritance.receiver(weaponProperties.?, "getSpeed").getSpeed(), angle, otherAngle });
    }
    

    pub fn setGroupInterfaces(self: *Self) void {
        const basicGroupFactory: ?*BasicGroupFactory = Inheritance.upcast(?*BasicGroupFactory, BasicGroupFactory.getInstance());
        if (Object.same(Inheritance.receiver(self.sourceLayerInterface.?, "getGroupInterface").getGroupInterface()[@intCast(0)], basicGroupFactory.?.ENEMY)) {
            _ = Inheritance.call(self, "setGroupInterface", .{ basicGroupFactory.?.ENEMY_ARRAY });
        } else {
            _ = Inheritance.call(self, "setGroupInterface", .{ Inheritance.receiver(self.sourceLayerInterface.?, "getGroupInterface").getGroupInterface() });
        }
    }
    

    // throws Exception
    pub fn processTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        if (self.isExhausted() and !self.isDestroyed()) {
            if (Inheritance.receiver(self, "isReadyForExplosion").isReadyForExplosion()) {
                const indexedAnimationInterface: ?*IndexedAnimation = Inheritance.cast(?*IndexedAnimation, self.getAnimationInterface());
                const currentFrame: i32 = Inheritance.receiver(indexedAnimationInterface.?, "getFrame").getFrame();
                if (currentFrame < Inheritance.receiver(indexedAnimationInterface.?, "getAnimationSize").getAnimationSize() - 1) {
                    _ = Inheritance.receiver(indexedAnimationInterface.?, "nextFrame").nextFrame();
                } else {
                    _ = Inheritance.call(self, "setDestroyed", .{ true });
                }
            } else {
                const collidableWeaponBehavior: ?*CollidableWeaponBehavior = Inheritance.cast(?*CollidableWeaponBehavior, Inheritance.receiver(self, "getCollidableInferface").getCollidableInferface());
                if (Inheritance.receiver(collidableWeaponBehavior.?, "isCollided").isCollided()) {
                    _ = Inheritance.call(self, "setAnimationInterface", .{ self.destroyedAnimationInterface });
                    _ = Inheritance.receiverOf(self.getMovement().?, "stop").stop();
                    _ = Inheritance.call(self, "setReadyForExplosion", .{ true });
                } else {
                    _ = Inheritance.call(self, "setDestroyed", .{ true });
                }
            }
        }
        _ = Inheritance.call(self.movement.?, "process", .{ self });
        self.totalDamage += Inheritance.receiver(self.weaponProperties.?, "getDissipation").getDissipation();
    }
    

    pub fn isDestroyed(self: *Self) bool {
        return self.destroyed;
    }
    

    pub fn damage(self: *Self, damage_: i32, damageType: i32) void {
        _ = damageType;
        self.totalDamage += damage_ * damage_;
    }
    

    pub fn givePoints(self: *Self, total: i32) void {
        _ = Inheritance.call(self.scoreableInterface.?, "addPoints", .{ Inheritance.receiverOf(GameConfigurationUtil.getInstance().?, "getCompetitionValue").getCompetitionValue() * total });
    }
    

    pub fn isExhausted(self: *Self) bool {
        if (self.totalDamage > self.getInitDamage() or self.totalDamage < 0) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn getDamage(self: *Self, damageType: i32) i32 {
        _ = damageType;
        if (!self.isExhausted()) {
            const total: i32 = self.getInitDamage() - self.totalDamage;
            _ = Inheritance.call(self, "givePoints", .{ total });
            return total;
        }
        return 0;
    }
    

    pub fn setDestroyed(self: *Self, destroyed: bool) void {
        self.destroyed = destroyed;
        if (self.isDestroyed()) {
            self.scoreableInterface = Inheritance.upcast(@TypeOf(self.scoreableInterface), NoScoreable.getInstance());
            _ = Inheritance.call(DestroyedLayerProcessor.getInstance().?, "add", .{ self });
        }
    }
    

    pub fn getInitDamage(self: *Self) i32 {
        return self.initDamage;
    }
    

    pub fn setAnimationInterface(self: *Self, animationInterface: ?*Animation) void {
        self.animationInterface = animationInterface;
    }
    

    pub fn getAnimationInterface(self: *Self) ?*Animation {
        return self.animationInterface;
    }
    

    pub fn getInitAnimationInterfaceP(self: *Self) ?*Animation {
        return self.initAnimationInterface;
    }
    

    pub fn setInitAnimationInterfaceP(self: *Self, initAnimationInterface: ?*Animation) void {
        self.initAnimationInterface = initAnimationInterface;
    }
    

    pub fn getDestroyedAnimationInterface(self: *Self) ?*Animation {
        return self.destroyedAnimationInterface;
    }
    

    pub fn getOwnerLayerInterface(self: *Self) ?*AllBinaryLayer {
        return self.sourceLayerInterface;
    }
    

    pub fn setOwnerLayerInterface(self: *Self, sourceLayerInterface: ?*AllBinaryLayer) void {
        self.sourceLayerInterface = sourceLayerInterface;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        const viewPosition: ?*ViewPositionBase = Inheritance.upcast(?*ViewPositionBase, Inheritance.receiver(self, "getViewPosition").getViewPosition());
        _ = Inheritance.call(self.animationInterface.?, "paintXY", .{ graphics, Inheritance.receiver(viewPosition.?, "getX").getX() - Inheritance.receiver(self, "getHalfWidth").getHalfWidth(), Inheritance.receiver(viewPosition.?, "getY").getY() - Inheritance.receiver(self, "getHalfHeight").getHalfHeight() });
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        const viewPosition: ?*ViewPositionBase = Inheritance.upcast(?*ViewPositionBase, Inheritance.receiver(self, "getViewPosition").getViewPosition());
        _ = Inheritance.call(self.animationInterface.?, "paintThreedXYZ", .{ graphics, Inheritance.receiver(viewPosition.?, "getX").getX() - Inheritance.receiver(self, "getHalfWidth").getHalfWidth(), Inheritance.receiver(viewPosition.?, "getY").getY() - Inheritance.receiver(self, "getHalfHeight").getHalfHeight(), Inheritance.receiver(viewPosition.?, "getZ").getZ() - Inheritance.receiver(self, "getHalfDepth").getHalfDepth() });
    }
    

    pub fn getMovement(self: *Self) ?*Movement {
        return self.movement;
    }
    

    pub fn setMovement(self: *Self, movement: ?*Movement) void {
        self.movement = movement;
    }
    

    pub fn getType(self: *Self) i32 {
        _ = self;
        return WeaponLayer.getStaticType();
    }
    

    pub fn getStaticType() i32 {
        return 0;
    }
    

    pub fn getMultiPlayerType(self: *Self) i32 {
        return self.multiPlayerType;
    }
    

    pub fn setWeaponPropertiesP(self: *Self, weaponProperties: ?*WeaponProperties) void {
        self.weaponProperties = weaponProperties;
    }
    

    pub fn getWeaponPropertiesP(self: *Self) ?*WeaponProperties {
        return self.weaponProperties;
    }
    

    pub fn implmentsTickableInterface(self: *Self) bool {
        _ = self;
        return true;
    }
    

    // throws Exception
    pub fn set(self: *Self, gl: ?*GL) void {
        _ = Inheritance.call(self.initAnimationInterface.?, "set", .{ gl });
    }
};

