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
const NoScoreable = @import("org/allbinary/game/score/NoScoreable.zig").NoScoreable;
const ScoreableInterface = @import("org/allbinary/game/score/ScoreableInterface.zig").ScoreableInterface;
const RelativeRelationship = @import("org/allbinary/graphics/RelativeRelationship.zig").RelativeRelationship;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const NoDecimalTrigTable = @import("org/allbinary/math/NoDecimalTrigTable.zig").NoDecimalTrigTable;
const BasicWeaponPart = @import("org/allbinary/game/part/weapon/BasicWeaponPart.zig").BasicWeaponPart;

pub const StraightMultiProjectileWeaponPart = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.part.weapon.StraightMultiProjectileWeaponPart";
    base: BasicWeaponPart = undefined,
    weaponLayerCircularStaticPool: ?*WeaponLayerCircularPool = null,
    total: i32 = 0,
    noDecimalTrigTable: ?*NoDecimalTrigTable = null,

    fn initFields(this: *Self) void {
        
        
        this.noDecimalTrigTable = Inheritance.upcast(?*NoDecimalTrigTable, NoDecimalTrigTable.getInstance());
    }
    

    pub fn createStraightMultiProjectileWeaponPart(animationInterface: ?*Animation, weaponLayerCircularStaticPool: ?*WeaponLayerCircularPool) ?*StraightMultiProjectileWeaponPart {
        return Inheritance.callStatic(StraightMultiProjectileWeaponPart, "create7", .{ animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, 2, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP });
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
        const sourceLayerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
        const reducedWidth: i32 = ((divide_N66558: { const left_N66558 = Inheritance.receiver(sourceLayerInterface.?, "getWidth").getWidth() * 8; const right_N66558 = 10; break :divide_N66558 if (comptime @typeInfo(@TypeOf(left_N66558)) == .int or @TypeOf(left_N66558) == comptime_int) @divTrunc(left_N66558, right_N66558) else left_N66558 / right_N66558; }));
        const halfWidth: i32 = (reducedWidth >> @intCast(1));
        const x: i32 = Inheritance.fieldPointer(self, "relativeRelationship").*.?.getX();
        const y: i32 = Inheritance.fieldPointer(self, "relativeRelationship").*.?.getY();
        var sine: i64 = 0;
        var beamX: i32 = 0;
        var cosine: i64 = 0;
        var beamY: i32 = 0;
        var weaponLayer: ?*WeaponLayer = null;
        const increment: i32 = @divTrunc(reducedWidth, (self.total - 1));
        var next: i32 = -halfWidth;
        {
            var index: i32 = 0;
            while (index < self.total) : (index += 1) {
            sine = @as(i64, @intCast((next * Inheritance.call(self.noDecimalTrigTable.?, "sin", .{ @as(i32, @intCast(angle)) }))));
            beamX = @as(i32, @intCast((@divTrunc(sine, self.noDecimalTrigTable.?.SCALE))));
            cosine = @as(i64, @intCast((next * Inheritance.call(self.noDecimalTrigTable.?, "cos", .{ @as(i32, @intCast(angle)) }))));
            beamY = -@as(i32, @intCast((@divTrunc(cosine, self.noDecimalTrigTable.?.SCALE))));
            weaponLayer = Inheritance.upcast(@TypeOf(weaponLayer), Inheritance.call(self.weaponLayerCircularStaticPool.?, "getInstanceWeaponLayer", .{ sourceLayerInterface, x + beamX, y + beamY, 0, @as(i32, @intCast(angle)), @as(i32, @intCast(otherAngle)), weaponProperties, scoreableInterface }));
            _ = Inheritance.call(allbinaryLayerManager.?, "append", .{ weaponLayer });
            next += increment;
            }
        }
    }
};

