// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
// package org.allbinary.game.rts.technology

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const UnitTechnologySingletonFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.rts.technology.UnitTechnologySingletonFactory";
    damage: i32 = 0,
    health: i32 = 0,
    reload: i32 = 0,
    repair: i32 = 0,
    speed: i32 = 0,
    var instance: ?*UnitTechnologySingletonFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = UnitTechnologySingletonFactory.create();
    }

    fn initFields(this: *Self) void {
        this.damage = 0;
        this.health = 0;
        this.reload = 0;
        this.repair = 0;
        this.speed = 0;
    }
    

    pub fn getInstance() ?*UnitTechnologySingletonFactory {
        return Inheritance.upcast(?*UnitTechnologySingletonFactory, UnitTechnologySingletonFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn init(self: *Self) void {
        _ = Inheritance.call(self, "setDamage", .{ 0 });
        _ = Inheritance.call(self, "setHealth", .{ 0 });
        _ = Inheritance.call(self, "setReload", .{ 0 });
        _ = Inheritance.call(self, "setRepair", .{ 0 });
        _ = Inheritance.call(self, "setSpeed", .{ 0 });
    }
    

    pub fn getDamage(self: *Self) i32 {
        return self.damage;
    }
    

    pub fn setDamage(self: *Self, damage: i32) void {
        self.damage = damage;
    }
    

    pub fn getHealth(self: *Self) i32 {
        return self.health;
    }
    

    pub fn setHealth(self: *Self, health: i32) void {
        self.health = health;
    }
    

    pub fn getReload(self: *Self) i32 {
        return self.reload;
    }
    

    pub fn setReload(self: *Self, reload: i32) void {
        self.reload = reload;
    }
    

    pub fn getRepair(self: *Self) i32 {
        return self.repair;
    }
    

    pub fn setRepair(self: *Self, repair: i32) void {
        self.repair = repair;
    }
    

    pub fn getSpeed(self: *Self) i32 {
        return self.speed;
    }
    

    pub fn setSpeed(self: *Self, speed: i32) void {
        self.speed = speed;
    }
};

