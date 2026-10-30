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
// package org.allbinary.game.part.weapon

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const WeaponProperties = @import("org/allbinary/game/combat/weapon/WeaponProperties.zig").WeaponProperties;
const WeaponLayer = @import("org/allbinary/game/layer/weapon/WeaponLayer.zig").WeaponLayer;
const WeaponLayerCircularPool = @import("org/allbinary/game/layer/weapon/WeaponLayerCircularPool.zig").WeaponLayerCircularPool;
const ScoreableInterface = @import("org/allbinary/game/score/ScoreableInterface.zig").ScoreableInterface;
const RelativeRelationship = @import("org/allbinary/graphics/RelativeRelationship.zig").RelativeRelationship;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const BasicWeaponPart = @import("org/allbinary/game/part/weapon/BasicWeaponPart.zig").BasicWeaponPart;

pub const ArcedMultiBeamWeaponPart = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart";
    base: BasicWeaponPart = undefined,
    weaponLayerCircularStaticPool: ?*WeaponLayerCircularPool = null,
    total: i32 = 0,
    TOTAL_ANGLE: i32 = 0,

    fn initFields(this: *Self) void {
        
        
        this.TOTAL_ANGLE = @as(i32, @intCast(AngleFactory.getInstance().?.TOTAL_ANGLE));
    }
    

    pub fn create7(animationInterface: ?*Animation, sourceLayerInterface: ?*AllBinaryLayer, weaponLayerCircularStaticPool: ?*WeaponLayerCircularPool, total: i32, weaponProperties: ?*WeaponProperties, scoreableInterface: ?*ScoreableInterface, relativeRelationship: ?*RelativeRelationship) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicWeaponPart, "create5", .{ animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship }).*;
        this.initFields();
        this.total = total;
        this.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processScore(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, angle: i16, otherAngle: i16, weaponProperties: ?*WeaponProperties, scoreableInterface: ?*ScoreableInterface) void {
        const increment: i16 = @as(i16, @intCast((@divTrunc((self.total - 1), self.TOTAL_ANGLE))));
        const minAngle: i16 = @as(i16, @intCast((@as(i32, @intCast(angle)) - ((@as(i32, @intCast(increment)) * self.total) >> @intCast(1)))));
        var next: i32 = 0;
        var weaponLayer: ?*WeaponLayer = null;
        {
            var index: i32 = 0;
            while (index < self.total) : (index += 1) {
            weaponLayer = Inheritance.upcast(@TypeOf(weaponLayer), Inheritance.call(self.weaponLayerCircularStaticPool.?, "getInstanceWeaponLayer", .{ Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface(), Inheritance.fieldPointer(self, "relativeRelationship").*.?.getX(), Inheritance.fieldPointer(self, "relativeRelationship").*.?.getY(), 0, (minAngle + increment), @as(i32, @intCast(otherAngle)), weaponProperties, scoreableInterface }));
            _ = Inheritance.call(allbinaryLayerManager.?, "append", .{ weaponLayer });
            next += @as(i32, @intCast(increment));
            }
        }
    }
};

