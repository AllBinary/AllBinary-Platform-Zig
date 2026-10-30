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
// const Gauge = @import("javax/microedition/lcdui/Gauge.zig").Gauge;
const GameConfiguration = @import("org/allbinary/game/configuration/GameConfiguration.zig").GameConfiguration;

pub const GameConfigurationGauge = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.GameConfigurationGauge";
    base: Gauge = undefined,
    

    pub fn create1(gameConfiguration: ?*GameConfiguration) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Gauge, "create4", .{ gameConfiguration.?.getName(), Inheritance.receiverOf(gameConfiguration.?.isModifiable().?, "booleanValue").booleanValue(), Inheritance.receiverOf(gameConfiguration.?.getMaxValue().?, "intValue").intValue() - Inheritance.receiverOf(gameConfiguration.?.getMinValue().?, "intValue").intValue(), Inheritance.receiverOf(gameConfiguration.?.getValue().?, "intValue").intValue() - Inheritance.receiverOf(gameConfiguration.?.getMinValue().?, "intValue").intValue() }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

