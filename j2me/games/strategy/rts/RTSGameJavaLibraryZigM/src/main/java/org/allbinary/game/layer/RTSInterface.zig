// 
// AllBinary Open License Version 1 
// Copyright (c) 2003 AllBinary 
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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const RTSInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.RTSInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    isSelfUpgradeableFn: *const fn (pointer: *anyopaque) bool,
    isCompletedFn: *const fn (pointer: *anyopaque) bool,
    getPercentCompleteFn: *const fn (pointer: *anyopaque) i32,
    getLevelFn: *const fn (pointer: *anyopaque) i32,
    getMaxLevelFn: *const fn (pointer: *anyopaque) i32,
    getCostFn: *const fn (pointer: *anyopaque) i32,
    downgradeFn: *const fn (pointer: *anyopaque) void,
    getDowngradeCostFn: *const fn (pointer: *anyopaque) i32,
    isDowngradeableFn: *const fn (pointer: *anyopaque) bool,
    getUpgradeCostFn: *const fn (pointer: *anyopaque) i32,
    isUpgradeableFn: *const fn (pointer: *anyopaque) bool,
    upgradeFn: *const fn (pointer: *anyopaque) void,

    pub fn isSelfUpgradeable(self: *Self) bool {
        return self.isSelfUpgradeableFn(self.pointer);
    }

    pub fn isCompleted(self: *Self) bool {
        return self.isCompletedFn(self.pointer);
    }

    pub fn getPercentComplete(self: *Self) i32 {
        return self.getPercentCompleteFn(self.pointer);
    }

    pub fn getLevel(self: *Self) i32 {
        return self.getLevelFn(self.pointer);
    }

    pub fn getMaxLevel(self: *Self) i32 {
        return self.getMaxLevelFn(self.pointer);
    }

    pub fn getCost(self: *Self) i32 {
        return self.getCostFn(self.pointer);
    }

    pub fn downgrade(self: *Self) void {
        return self.downgradeFn(self.pointer);
    }

    pub fn getDowngradeCost(self: *Self) i32 {
        return self.getDowngradeCostFn(self.pointer);
    }

    pub fn isDowngradeable(self: *Self) bool {
        return self.isDowngradeableFn(self.pointer);
    }

    pub fn getUpgradeCost(self: *Self) i32 {
        return self.getUpgradeCostFn(self.pointer);
    }

    pub fn isUpgradeable(self: *Self) bool {
        return self.isUpgradeableFn(self.pointer);
    }

    pub fn upgrade(self: *Self) void {
        return self.upgradeFn(self.pointer);
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
            fn isSelfUpgradeable(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isSelfUpgradeable").isSelfUpgradeable();
            }
            fn isCompleted(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isCompleted").isCompleted();
            }
            fn getPercentComplete(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getPercentComplete").getPercentComplete();
            }
            fn getLevel(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getLevel").getLevel();
            }
            fn getMaxLevel(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMaxLevel").getMaxLevel();
            }
            fn getCost(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getCost").getCost();
            }
            fn downgrade(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "downgrade").downgrade();
            }
            fn getDowngradeCost(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getDowngradeCost").getDowngradeCost();
            }
            fn isDowngradeable(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isDowngradeable").isDowngradeable();
            }
            fn getUpgradeCost(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getUpgradeCost").getUpgradeCost();
            }
            fn isUpgradeable(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isUpgradeable").isUpgradeable();
            }
            fn upgrade(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "upgrade").upgrade();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .isSelfUpgradeableFn = Methods.isSelfUpgradeable, .isCompletedFn = Methods.isCompleted, .getPercentCompleteFn = Methods.getPercentComplete, .getLevelFn = Methods.getLevel, .getMaxLevelFn = Methods.getMaxLevel, .getCostFn = Methods.getCost, .downgradeFn = Methods.downgrade, .getDowngradeCostFn = Methods.getDowngradeCost, .isDowngradeableFn = Methods.isDowngradeable, .getUpgradeCostFn = Methods.getUpgradeCost, .isUpgradeableFn = Methods.isUpgradeable, .upgradeFn = Methods.upgrade };
        return this;
    }
};

