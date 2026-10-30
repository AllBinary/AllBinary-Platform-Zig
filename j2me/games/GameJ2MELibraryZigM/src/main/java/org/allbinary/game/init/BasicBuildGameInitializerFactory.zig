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
// package org.allbinary.game.init

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BaseGameInitialization = @import("org/allbinary/game/init/BaseGameInitialization.zig").BaseGameInitialization;
const GameInitializationInterface = @import("org/allbinary/game/init/GameInitializationInterface.zig").GameInitializationInterface;
const GameInitializationInterfaceFactoryInterface = @import("org/allbinary/game/init/GameInitializationInterfaceFactoryInterface.zig").GameInitializationInterfaceFactoryInterface;

pub const BasicBuildGameInitializerFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.init.BasicBuildGameInitializerFactory";
    pub const java_interfaces = .{ GameInitializationInterfaceFactoryInterface };
    // Implements GameInitializationInterfaceFactoryInterface
    pub var NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY: ?*BasicBuildGameInitializerFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = BasicBuildGameInitializerFactory.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(self: *Self) ?*GameInitializationInterface {
        _ = self;
        return Inheritance.upcast(?*GameInitializationInterface, BaseGameInitialization.NULL_BASE_GAME_INITIALIZATION);
    }
};

