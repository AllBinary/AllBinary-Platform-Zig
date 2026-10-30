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

pub const GameStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.GameStrings";
    PROCESS_TICK: ?*String = null,
    ON_GAME_INITIALIZED: ?*String = null,
    UPDATESURFACE: ?*String = null,
    ON_SET_DISPLAYABLE: ?*String = null,
    UNPAUSE: ?*String = null,
    TOGGLE_MENU: ?*String = null,
    SET_GAME_OVER: ?*String = null,
    GAME_STATE: ?*String = null,
    SET_GAME_STATE: ?*String = null,
    STOP_GAME_CANVAS_RUNNABLE_INTERFACE: ?*String = null,
    var instance: ?*GameStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameStrings.create();
    }

    fn initFields(this: *Self) void {
        this.PROCESS_TICK = String.literal("processTick");
        this.ON_GAME_INITIALIZED = String.literal("onGameInitialized");
        this.UPDATESURFACE = String.literal("updateSurface");
        this.ON_SET_DISPLAYABLE = String.literal("onSetDisplayable");
        this.UNPAUSE = String.literal("unPause");
        this.TOGGLE_MENU = String.literal("toggleMenu");
        this.SET_GAME_OVER = String.literal("setGameOver");
        this.GAME_STATE = String.literal("Game State: ");
        this.SET_GAME_STATE = String.literal("setGameState");
        this.STOP_GAME_CANVAS_RUNNABLE_INTERFACE = String.literal("stopGameCanvasRunnableInterface");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GameStrings {
        return Inheritance.upcast(?*GameStrings, GameStrings.instance);
    }
};

