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
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;

// Java interface: an implementation is a pointer and a table of functions
pub const SalvoInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.part.weapon.SalvoInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    processFn: *const fn (pointer: *anyopaque, allbinaryLayerManager: ?*AllBinaryLayerManager, angle: i16, otherAngle: i16) void,
    processScoreFn: *const fn (pointer: *anyopaque, allbinaryLayerManager: ?*AllBinaryLayerManager, angle: i16, otherAngle: i16, weaponProperties: ?*WeaponProperties, scoreableInterface: ?*ScoreableInterface) void,

    pub fn process(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, angle: i16, otherAngle: i16) void {
        return self.processFn(self.pointer, allbinaryLayerManager, angle, otherAngle);
    }

    pub fn processScore(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, angle: i16, otherAngle: i16, weaponProperties: ?*WeaponProperties, scoreableInterface: ?*ScoreableInterface) void {
        return self.processScoreFn(self.pointer, allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface);
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
            fn process(pointer: *anyopaque, allbinaryLayerManager: ?*AllBinaryLayerManager, angle: i16, otherAngle: i16) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "process").process(allbinaryLayerManager, angle, otherAngle);
            }
            fn processScore(pointer: *anyopaque, allbinaryLayerManager: ?*AllBinaryLayerManager, angle: i16, otherAngle: i16, weaponProperties: ?*WeaponProperties, scoreableInterface: ?*ScoreableInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "processScore").processScore(allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .processFn = Methods.process, .processScoreFn = Methods.processScore };
        return this;
    }
};

