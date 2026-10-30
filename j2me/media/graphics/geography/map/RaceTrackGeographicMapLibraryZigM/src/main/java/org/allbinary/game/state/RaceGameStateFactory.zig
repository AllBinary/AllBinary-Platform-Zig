// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.state

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const GameState = @import("org/allbinary/game/state/GameState.zig").GameState;
const GameStateFactory = @import("org/allbinary/game/state/GameStateFactory.zig").GameStateFactory;

pub const RaceGameStateFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.state.RaceGameStateFactory";
    START_GAME_STATE: ?*GameState = null,
    YELLOW_LIGHT_GAME_STATE: ?*GameState = null,
    RED_LIGHT_GAME_STATE: ?*GameState = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.START_GAME_STATE = Inheritance.upcast(?*GameState, Inheritance.call(GameStateFactory.getInstance().?, "createGameState", .{ String.literal("START_GAME_STATE") }));
        this.YELLOW_LIGHT_GAME_STATE = Inheritance.upcast(?*GameState, Inheritance.call(GameStateFactory.getInstance().?, "createGameState", .{ String.literal("YELLOW_LIGHT_GAME_STATE") }));
        this.RED_LIGHT_GAME_STATE = Inheritance.upcast(?*GameState, Inheritance.call(GameStateFactory.getInstance().?, "createGameState", .{ String.literal("RED_LIGHT_GAME_STATE") }));
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*RaceGameStateFactory {
        if (Object.same(RaceGameStateFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            RaceGameStateFactory.instance = Inheritance.upcast(@TypeOf(RaceGameStateFactory.instance), RaceGameStateFactory.create());
        }
        return Inheritance.cast(?*RaceGameStateFactory, RaceGameStateFactory.instance);
    }
};

