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
// package org.allbinary.game.combat.weapon

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const SimpleWeaponProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.combat.weapon.SimpleWeaponProperties";
    damage: i32 = 0,
    dissipation: i16 = 0,
    range: i32 = 0,

    fn initFields(this: *Self) void {
        this.damage = 0;
        this.dissipation = 0;
        this.range = 0;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn set(self: *Self, simpleWeaponProperties: ?*SimpleWeaponProperties) void {
        _ = Inheritance.call(self, "setDamage", .{ simpleWeaponProperties.?.getDamage() });
        _ = Inheritance.call(self, "setDissipation", .{ simpleWeaponProperties.?.getDissipation() });
        _ = Inheritance.call(self, "setRange", .{ simpleWeaponProperties.?.getRange() });
    }
    

    pub fn setDamage(self: *Self, damage: i32) void {
        self.damage = damage;
    }
    

    pub fn getDamage(self: *Self) i32 {
        return self.damage;
    }
    

    pub fn setDissipation(self: *Self, dissipation: i16) void {
        self.dissipation = dissipation;
    }
    

    pub fn getDissipation(self: *Self) i16 {
        return self.dissipation;
    }
    

    pub fn getRange(self: *Self) i32 {
        return self.range;
    }
    

    pub fn setRange(self: *Self, range: i32) void {
        self.range = range;
    }
};

