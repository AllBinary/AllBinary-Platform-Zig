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
// package org.allbinary.game.combat

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DamageableBaseBehavior = @import("org/allbinary/game/combat/damage/DamageableBaseBehavior.zig").DamageableBaseBehavior;
const DestroyableBaseBehavior = @import("org/allbinary/game/combat/destroy/DestroyableBaseBehavior.zig").DestroyableBaseBehavior;

pub const CombatBaseBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.combat.CombatBaseBehavior";
    damageableBaseBehavior: ?*DamageableBaseBehavior = null,
    destroyableBaseBehavior: ?*DestroyableBaseBehavior = null,
    readyForExplosion: bool = false,
    pub var NULL_COMBAT_BEHAVIOR: ?*CombatBaseBehavior = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_COMBAT_BEHAVIOR = Inheritance.callStatic(CombatBaseBehavior, "create2", .{ DamageableBaseBehavior.getInstance(), DestroyableBaseBehavior.getInstance() });
    }

    fn initFields(this: *Self) void {
        
        
        this.readyForExplosion = false;
    }
    

    pub fn create2(damageableBaseBehavior: ?*DamageableBaseBehavior, destroyableBaseBehavior: ?*DestroyableBaseBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.damageableBaseBehavior = damageableBaseBehavior;
        this.destroyableBaseBehavior = destroyableBaseBehavior;
        return this;
    }
    

    pub fn getDamageableBaseBehavior(self: *Self) ?*DamageableBaseBehavior {
        return self.damageableBaseBehavior;
    }
    

    pub fn getDestroyableBaseBehavior(self: *Self) ?*DestroyableBaseBehavior {
        return self.destroyableBaseBehavior;
    }
    

    pub fn isReadyForExplosion(self: *Self) bool {
        return self.readyForExplosion;
    }
    

    pub fn setReadyForExplosion(self: *Self, readyForExplosion: bool) void {
        self.readyForExplosion = readyForExplosion;
    }
};

