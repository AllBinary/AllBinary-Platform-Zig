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
// package org.allbinary.game.state

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const GameState = @import("org/allbinary/game/state/GameState.zig").GameState;

pub const GameStateFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.state.GameStateFactory";
    index: i32 = 0,
    NO_GAME_STATE: ?*GameState = null,
    PLAYING_GAME_STATE: ?*GameState = null,
    SHOW_END_RESULT_GAME_STATE: ?*GameState = null,
    SHOW_HIGH_SCORE_GAME_STATE: ?*GameState = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.index = 0;
        this.NO_GAME_STATE = Inheritance.upcast(?*GameState, Inheritance.call(this, "createGameState", .{ String.literal("NO_GAME_STATE") }));
        this.PLAYING_GAME_STATE = Inheritance.upcast(?*GameState, Inheritance.call(this, "createGameState", .{ String.literal("PLAYING_GAME_STATE") }));
        this.SHOW_END_RESULT_GAME_STATE = Inheritance.upcast(?*GameState, Inheritance.call(this, "createGameState", .{ String.literal("SHOW_END_RESULT_GAME_STATE") }));
        this.SHOW_HIGH_SCORE_GAME_STATE = Inheritance.upcast(?*GameState, Inheritance.call(this, "createGameState", .{ String.literal("SHOW_HIGH_SCORE_GAME_STATE") }));
    }
    

    pub fn getInstance() ?*GameStateFactory {
        if (Object.same(GameStateFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            GameStateFactory.instance = Inheritance.upcast(@TypeOf(GameStateFactory.instance), GameStateFactory.create());
        }
        return Inheritance.cast(?*GameStateFactory, GameStateFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn createGameState(self: *Self, name: ?*String) ?*GameState {
        return Inheritance.callStatic(GameState, "create2", .{ name, value_N66113: { const value_N66113_value = self.index; self.index += 1; break :value_N66113 value_N66113_value; } });
    }
};

