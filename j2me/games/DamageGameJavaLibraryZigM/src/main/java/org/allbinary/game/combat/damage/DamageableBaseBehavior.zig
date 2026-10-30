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
// package org.allbinary.game.combat.damage

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DamageableInterface = @import("org/allbinary/game/combat/damage/DamageableInterface.zig").DamageableInterface;

pub const DamageableBaseBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.combat.damage.DamageableBaseBehavior";
    pub const java_interfaces = .{ DamageableInterface };
    // Implements DamageableInterface
    var instance: ?*DamageableBaseBehavior = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DamageableBaseBehavior.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*DamageableBaseBehavior {
        return Inheritance.upcast(?*DamageableBaseBehavior, DamageableBaseBehavior.instance);
    }
    

    pub fn getName(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name));
    }
    

    // throws Exception
    pub fn damage(self: *Self, damage_: i32, damageType: i32) void {
        _ = damage_;
        _ = damageType;
        _ = self;
    }
    

    // throws Exception
    pub fn getDamage(self: *Self, damageType: i32) i32 {
        _ = damageType;
        _ = self;
        return 6000;
    }
};

