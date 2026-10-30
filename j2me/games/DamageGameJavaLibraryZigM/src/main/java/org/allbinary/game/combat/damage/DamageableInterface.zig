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
const NamedInterface = @import("org/allbinary/layer/NamedInterface.zig").NamedInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const DamageableInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.combat.damage.DamageableInterface";
    pointer: *anyopaque,
    object: Object,
    base: NamedInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    damageFn: *const fn (pointer: *anyopaque, damage_: i32, damageType: i32) void,
    getDamageFn: *const fn (pointer: *anyopaque, damageType: i32) i32,

    pub fn damage(self: *Self, damage_: i32, damageType: i32) void {
        return self.damageFn(self.pointer, damage_, damageType);
    }

    pub fn getDamage(self: *Self, damageType: i32) i32 {
        return self.getDamageFn(self.pointer, damageType);
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
            fn damage(pointer: *anyopaque, damage_: i32, damageType: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "damage").damage(damage_, damageType);
            }
            fn getDamage(pointer: *anyopaque, damageType: i32) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getDamage").getDamage(damageType);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = NamedInterface.of(object).?.*, .toStringFn = Methods.toString, .damageFn = Methods.damage, .getDamageFn = Methods.getDamage };
        return this;
    }
};

