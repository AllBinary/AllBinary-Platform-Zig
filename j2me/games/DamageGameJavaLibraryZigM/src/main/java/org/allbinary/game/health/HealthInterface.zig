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
const HealthListenerInterface = @import("org/allbinary/game/health/HealthListenerInterface.zig").HealthListenerInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const HealthInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.health.HealthInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    isAliveFn: *const fn (pointer: *anyopaque) bool,
    damageFn: *const fn (pointer: *anyopaque, ahealth: i32) void,
    healFn: *const fn (pointer: *anyopaque, ahealth: i32) void,
    healMaxFn: *const fn (pointer: *anyopaque) void,
    getMaxHealthFn: *const fn (pointer: *anyopaque) i32,
    setMaxHealthFn: *const fn (pointer: *anyopaque, maxHealth: i32) void,
    getHealthFn: *const fn (pointer: *anyopaque) i32,
    addListenerFn: *const fn (pointer: *anyopaque, healthListenerInterface: ?*HealthListenerInterface) void,

    pub fn isAlive(self: *Self) bool {
        return self.isAliveFn(self.pointer);
    }

    pub fn damage(self: *Self, ahealth: i32) void {
        return self.damageFn(self.pointer, ahealth);
    }

    pub fn heal(self: *Self, ahealth: i32) void {
        return self.healFn(self.pointer, ahealth);
    }

    pub fn healMax(self: *Self) void {
        return self.healMaxFn(self.pointer);
    }

    pub fn getMaxHealth(self: *Self) i32 {
        return self.getMaxHealthFn(self.pointer);
    }

    pub fn setMaxHealth(self: *Self, maxHealth: i32) void {
        return self.setMaxHealthFn(self.pointer, maxHealth);
    }

    pub fn getHealth(self: *Self) i32 {
        return self.getHealthFn(self.pointer);
    }

    pub fn addListener(self: *Self, healthListenerInterface: ?*HealthListenerInterface) void {
        return self.addListenerFn(self.pointer, healthListenerInterface);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn isAlive(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isAlive").isAlive();
            }
            fn damage(pointer: *anyopaque, ahealth: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "damage").damage(ahealth);
            }
            fn heal(pointer: *anyopaque, ahealth: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "heal").heal(ahealth);
            }
            fn healMax(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "healMax").healMax();
            }
            fn getMaxHealth(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMaxHealth").getMaxHealth();
            }
            fn setMaxHealth(pointer: *anyopaque, maxHealth: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMaxHealth").setMaxHealth(maxHealth);
            }
            fn getHealth(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getHealth").getHealth();
            }
            fn addListener(pointer: *anyopaque, healthListenerInterface: ?*HealthListenerInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addListener").addListener(healthListenerInterface);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .isAliveFn = Methods.isAlive, .damageFn = Methods.damage, .healFn = Methods.heal, .healMaxFn = Methods.healMax, .getMaxHealthFn = Methods.getMaxHealth, .setMaxHealthFn = Methods.setMaxHealth, .getHealthFn = Methods.getHealth, .addListenerFn = Methods.addListener };
        return this;
    }
};

