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
// package org.allbinary.game.health

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const HealthInterface = @import("org/allbinary/game/health/HealthInterface.zig").HealthInterface;
const HealthListenerInterface = @import("org/allbinary/game/health/HealthListenerInterface.zig").HealthListenerInterface;
const NullHealthListener = @import("org/allbinary/game/health/NullHealthListener.zig").NullHealthListener;

pub const Health = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.health.Health";
    pub const java_interfaces = .{ HealthInterface };
    health: i32 = 0,
    maxHealth: i32 = 0,
    healthListenerInterface: ?*HealthListenerInterface = null,
    // Implements HealthInterface
    pub var NULL_HEALTH: ?*Health = undefined;
    pub const NAME: ?*String = String.literal("Health Resource");
    const HEALTH_LABEL: ?*String = String.literal("Health: ");
    const MAX_HEALTH_LABEL: ?*String = String.literal(" Max: ");

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_HEALTH = Inheritance.callStatic(Health, "create1", .{ 0 });
    }

    fn initFields(this: *Self) void {
        this.health = 0;
        this.maxHealth = 0;
        this.healthListenerInterface = Inheritance.upcast(?*HealthListenerInterface, NullHealthListener.NULL_HEALTH_LISTENER);
    }
    

    pub fn create1(maxHealth: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setMaxHealth", .{ maxHealth });
        _ = Inheritance.call(this, "setHealth", .{ maxHealth });
        return this;
    }
    

    pub fn heal(self: *Self, ahealth: i32) void {
        const newHealth: i32 = self.getHealth() + ahealth;
        if (newHealth > self.getMaxHealth()) {
            _ = Inheritance.call(self, "setHealth", .{ self.getMaxHealth() });
        } else {
            _ = Inheritance.call(self, "setHealth", .{ newHealth });
        }
    }
    

    pub fn healMax(self: *Self) void {
        _ = Inheritance.call(self, "setHealth", .{ self.getMaxHealth() });
    }
    

    pub fn isDamaged(self: *Self) bool {
        if (self.getHealth() != self.getMaxHealth()) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn damage(self: *Self, ahealth: i32) void {
        if (ahealth < 0) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("******* Trying to heal when damaging. Damage: ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ ahealth });
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self)) });
            _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ Object.toString(Object.of(stringBuffer)), self });
            return;
        }
        const health: i32 = self.getHealth() - ahealth;
        _ = Inheritance.call(self, "setHealth", .{ health });
    }
    

    pub fn isAlive(self: *Self) bool {
        if (self.getHealth() <= 0) {
            return false;
        } else {
            return true;
        }
    }
    

    pub fn getMaxHealth(self: *Self) i32 {
        return self.maxHealth;
    }
    

    pub fn setMaxHealth(self: *Self, maxHealth: i32) void {
        self.maxHealth = maxHealth;
    }
    

    pub fn setHealth(self: *Self, health: i32) void {
        if (health > self.getMaxHealth()) {
            self.health = self.getMaxHealth();
        } else if (health < 0) {
            self.health = 0;
        } else {
            self.health = health;
        }
        if (self.healthListenerInterface != null) {
            _ = self.healthListenerInterface.?.onHealthChange();
        }
    }
    

    pub fn getHealth(self: *Self) i32 {
        return self.health;
    }
    

    pub fn addListener(self: *Self, healthGraphic: ?*HealthListenerInterface) void {
        self.healthListenerInterface = healthGraphic;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Health.HEALTH_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.health });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Health.MAX_HEALTH_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.maxHealth });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

