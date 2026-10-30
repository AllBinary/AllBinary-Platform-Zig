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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const GameInputStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.GameInputStrings";
    PROCESS_INPUT: ?*String = null,
    KEY_PRESSED: ?*String = null,
    KEY_RELEASED: ?*String = null,
    KEY_REPEATED: ?*String = null,
    ON_PRESS_GAME_KEY: ?*String = null,
    ON_DOWN_GAME_KEY: ?*String = null,
    ON_UP_GAME_KEY: ?*String = null,
    NO_KEY: ?*String = null,
    ADD_KEY_EVENT: ?*String = null,
    REMOVE_KEY_EVENT: ?*String = null,
    STRAFE_LEFT: ?*String = null,
    STRAFE_RIGHT: ?*String = null,
    PROCESS_MOTION_INPUT: ?*String = null,
    UDPATE_CURRENT_TOUCH_INPUT_FACTORY: ?*String = null,
    ENABLE_PLAYER_GAME_INPUTS: ?*String = null,
    ENABLE_PLAYER_GAME_INPUT: ?*String = null,
    var instance: ?*GameInputStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameInputStrings.create();
    }

    fn initFields(this: *Self) void {
        this.PROCESS_INPUT = String.literal("processInput");
        this.KEY_PRESSED = String.literal("keyPressed");
        this.KEY_RELEASED = String.literal("keyReleased");
        this.KEY_REPEATED = String.literal("keyRepeated");
        this.ON_PRESS_GAME_KEY = String.literal("onPressGameKeyEvent");
        this.ON_DOWN_GAME_KEY = String.literal("onDownGameKeyEvent");
        this.ON_UP_GAME_KEY = String.literal("onUpGameKeyEvent");
        this.NO_KEY = String.literal("Key Code Not Mapped For Game: ");
        this.ADD_KEY_EVENT = String.literal("addGameKeyEvent");
        this.REMOVE_KEY_EVENT = String.literal("removeGameKeyEvent");
        this.STRAFE_LEFT = String.literal("strafeLeft");
        this.STRAFE_RIGHT = String.literal("strafeRight");
        this.PROCESS_MOTION_INPUT = String.literal("processMotionInput");
        this.UDPATE_CURRENT_TOUCH_INPUT_FACTORY = String.literal("updateCurrentTouchInputFactory");
        this.ENABLE_PLAYER_GAME_INPUTS = String.literal("Enabling PlayerGameInputs: ");
        this.ENABLE_PLAYER_GAME_INPUT = String.literal("Enabling PlayerGameInput: ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GameInputStrings {
        return Inheritance.upcast(?*GameInputStrings, GameInputStrings.instance);
    }
};

