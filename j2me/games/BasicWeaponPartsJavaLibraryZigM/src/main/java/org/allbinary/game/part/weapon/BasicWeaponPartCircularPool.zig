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
const WeaponProperties = @import("org/allbinary/game/combat/weapon/WeaponProperties.zig").WeaponProperties;
const ScoreableInterface = @import("org/allbinary/game/score/ScoreableInterface.zig").ScoreableInterface;
const RelativeRelationship = @import("org/allbinary/graphics/RelativeRelationship.zig").RelativeRelationship;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const BasicWeaponPart = @import("org/allbinary/game/part/weapon/BasicWeaponPart.zig").BasicWeaponPart;
const BasicWeaponPartFactoryInterface = @import("org/allbinary/game/part/weapon/BasicWeaponPartFactoryInterface.zig").BasicWeaponPartFactoryInterface;

pub const BasicWeaponPartCircularPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.part.weapon.BasicWeaponPartCircularPool";
    basicWeaponPart: ?*BasicWeaponPart = null,
    pub var NULL_BASIC_WEAPON_PART_CIRCULAR_POOL: ?*BasicWeaponPartCircularPool = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_BASIC_WEAPON_PART_CIRCULAR_POOL = BasicWeaponPartCircularPool.create();
    }

    fn initFields(this: *Self) void {
        this.basicWeaponPart = Inheritance.upcast(?*BasicWeaponPart, BasicWeaponPart.NULL_BASIC_WEAPON_PART);
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, basicWeaponPartFactoryInterface: ?*BasicWeaponPartFactoryInterface) void {
        self.basicWeaponPart = Inheritance.upcast(@TypeOf(self.basicWeaponPart), basicWeaponPartFactoryInterface.?.getInstance());
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, sourceLayerInterface: ?*AllBinaryLayer, weaponProperties: ?*WeaponProperties, scoreableInterface: ?*ScoreableInterface, relativeRelationship: ?*RelativeRelationship) ?*BasicWeaponPart {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.basicWeaponPart.?, "init", .{ sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship });
        return self.basicWeaponPart;
    }
};

