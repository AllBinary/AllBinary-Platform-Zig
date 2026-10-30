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
// package org.allbinary.game.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameConfiguration = @import("org/allbinary/game/configuration/GameConfiguration.zig").GameConfiguration;
const GameConfigurationCentral = @import("org/allbinary/game/configuration/GameConfigurationCentral.zig").GameConfigurationCentral;

pub const GameSpeed = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.GameSpeed";
    var instance: ?*GameSpeed = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameSpeed.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getSpeed(self: *Self) i32 {
        _ = self;
        const speedGameConfiguration: ?*GameConfiguration = Inheritance.upcast(?*GameConfiguration, GameConfigurationCentral.getInstance().?.SPEED);
        return (Inheritance.receiverOf(speedGameConfiguration.?.getMaxValue().?, "intValue").intValue() - Inheritance.receiverOf(speedGameConfiguration.?.getValue().?, "intValue").intValue() + 1);
    }
    

    pub fn getDelay(self: *Self) i32 {
        _ = self;
        const speedGameConfiguration: ?*GameConfiguration = Inheritance.upcast(?*GameConfiguration, GameConfigurationCentral.getInstance().?.SPEED);
        return 19 * (Inheritance.receiverOf(speedGameConfiguration.?.getMaxValue().?, "intValue").intValue() - Inheritance.receiverOf(speedGameConfiguration.?.getValue().?, "intValue").intValue());
    }
    

    pub fn getInstance() ?*GameSpeed {
        return Inheritance.upcast(?*GameSpeed, GameSpeed.instance);
    }
};

