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
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const GameMode = @import("org/allbinary/game/GameMode.zig").GameMode;
const GameTypeFactory = @import("org/allbinary/game/GameTypeFactory.zig").GameTypeFactory;
const PlayerTypesFactory = @import("org/allbinary/game/PlayerTypesFactory.zig").PlayerTypesFactory;

pub const BasicHighScoresGameInfoFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.BasicHighScoresGameInfoFactory";
    MULTI_PLAYER_SERVER: ?*GameInfo = null,
    SINGLE_PLAYER_SERVER: ?*GameInfo = null,
    var SINGLETON: ?*BasicHighScoresGameInfoFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = BasicHighScoresGameInfoFactory.create();
    }

    fn initFields(this: *Self) void {
        this.MULTI_PLAYER_SERVER = Inheritance.callStatic(GameInfo, "create5", .{ GameTypeFactory.getInstance().?.MULTI_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().?.PLAYER_TYPE_ONE, 0, 0 });
        this.SINGLE_PLAYER_SERVER = Inheritance.callStatic(GameInfo, "create5", .{ GameTypeFactory.getInstance().?.SINGLE_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().?.PLAYER_TYPE_ONE, 0, 0 });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BasicHighScoresGameInfoFactory {
        return Inheritance.upcast(?*BasicHighScoresGameInfoFactory, BasicHighScoresGameInfoFactory.SINGLETON);
    }
};

