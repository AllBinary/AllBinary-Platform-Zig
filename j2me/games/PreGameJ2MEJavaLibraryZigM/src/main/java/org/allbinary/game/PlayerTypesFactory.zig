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
// package org.allbinary.game

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PlayerType = @import("org/allbinary/game/PlayerType.zig").PlayerType;

pub const PlayerTypesFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.PlayerTypesFactory";
    PLAYER_TYPE_ONE: ?*PlayerType = null,
    PLAYER_TYPE_TWO: ?*PlayerType = null,
    PLAYER_TYPE_THREE: ?*PlayerType = null,
    var SINGLETON: ?*PlayerTypesFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = PlayerTypesFactory.create();
    }

    fn initFields(this: *Self) void {
        this.PLAYER_TYPE_ONE = Inheritance.callStatic(PlayerType, "create2", .{ String.literal("Player Type One"), 0 });
        this.PLAYER_TYPE_TWO = Inheritance.callStatic(PlayerType, "create2", .{ String.literal("Player Type Two"), 1 });
        this.PLAYER_TYPE_THREE = Inheritance.callStatic(PlayerType, "create2", .{ String.literal("Player Type Three"), 2 });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*PlayerTypesFactory {
        return Inheritance.upcast(?*PlayerTypesFactory, PlayerTypesFactory.SINGLETON);
    }
};

