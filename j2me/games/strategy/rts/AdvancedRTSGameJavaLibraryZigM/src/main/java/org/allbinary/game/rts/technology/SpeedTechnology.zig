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
const RTSInterface = @import("org/allbinary/game/layer/RTSInterface.zig").RTSInterface;
const UnitTechnologySingletonFactory = @import("org/allbinary/game/rts/technology/UnitTechnologySingletonFactory.zig").UnitTechnologySingletonFactory;

pub const SpeedTechnology = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.rts.technology.SpeedTechnology";
    level: i32 = 0,
    maxLevel: i32 = 0,
    // Implements RTSInterface

    fn initFields(this: *Self) void {
        this.level = 0;
        
    }
    

    pub fn create1(maxLevel: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.maxLevel = maxLevel;
        return this;
    }
    

    pub fn isCompleted(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getPercentComplete(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn getLevel(self: *Self) i32 {
        return self.level;
    }
    

    pub fn getMaxLevel(self: *Self) i32 {
        return self.maxLevel;
    }
    

    pub fn getCost(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn downgrade(self: *Self) void {
        _ = self;
    }
    

    pub fn getDowngradeCost(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn isDowngradeable(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getUpgradeCost(self: *Self) i32 {
        return (self.getLevel() * self.getLevel()) * 1000;
    }
    

    pub fn isUpgradeable(self: *Self) bool {
        if (self.getLevel() < self.getMaxLevel()) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn upgrade(self: *Self) void {
        self.level += 1;
        const unitTechnologySingletonFactory: ?*UnitTechnologySingletonFactory = Inheritance.upcast(?*UnitTechnologySingletonFactory, UnitTechnologySingletonFactory.getInstance());
        _ = Inheritance.call(unitTechnologySingletonFactory.?, "setSpeed", .{ unitTechnologySingletonFactory.?.getSpeed() + (self.getLevel() * 100) });
    }
    

    pub fn isSelfUpgradeable(self: *Self) bool {
        _ = self;
        return false;
    }
};

