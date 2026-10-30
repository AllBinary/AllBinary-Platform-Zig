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
// package org.allbinary.game.configuration.persistance

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GamePersistanceStrings = @import("org/allbinary/game/configuration/persistance/GamePersistanceStrings.zig").GamePersistanceStrings;
const KeyValuePersistance = @import("org/allbinary/game/configuration/persistance/KeyValuePersistance.zig").KeyValuePersistance;

pub const GameConfigurationPersistanceSingleton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton";
    base: KeyValuePersistance = undefined,
    var GAME_PERSISTANCE: ?*GameConfigurationPersistanceSingleton = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        GAME_PERSISTANCE = GameConfigurationPersistanceSingleton.create();
    }
    

    pub fn getInstance() ?*GameConfigurationPersistanceSingleton {
        return Inheritance.upcast(?*GameConfigurationPersistanceSingleton, GameConfigurationPersistanceSingleton.GAME_PERSISTANCE);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(KeyValuePersistance, "create1", .{ GamePersistanceStrings.getInstance().?.SAVED_GAME_CONFIGURATION_RECORD_ID }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

