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
// package org.allbinary.game.input.motion.action

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CompleteMotionGestureInputEvent = @import("org/allbinary/game/input/CompleteMotionGestureInputEvent.zig").CompleteMotionGestureInputEvent;
const GameKey = @import("org/allbinary/game/input/GameKey.zig").GameKey;
const GameKeyEventSourceInterface = @import("org/allbinary/game/input/GameKeyEventSourceInterface.zig").GameKeyEventSourceInterface;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const InputToGameKeyMapping = @import("org/allbinary/game/input/mapping/InputToGameKeyMapping.zig").InputToGameKeyMapping;
const MotionGestureInput = @import("org/allbinary/input/motion/gesture/MotionGestureInput.zig").MotionGestureInput;

pub const GameKeyCompleteMotionGestureInputEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent";
    base: CompleteMotionGestureInputEvent = undefined,
    gameKey: ?*GameKey = null,
    gameKeyEvent: ?*GameKeyEvent = null,
    // Implements GameKeyEventSourceInterface

    fn initFields(this: *Self) void {
        this.gameKey = Inheritance.upcast(?*GameKey, GameKey.NULL_GAME_KEY);
        this.gameKeyEvent = Inheritance.upcast(?*GameKeyEvent, GameKeyEvent.NONE);
    }
    

    pub fn create3(name: ?*String, motionGestureInput: ?*MotionGestureInput, inputToGameKeyMapping: ?*InputToGameKeyMapping) *Self {
        _ = inputToGameKeyMapping;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CompleteMotionGestureInputEvent, "create2", .{ name, motionGestureInput }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getSourceId(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn update(self: *Self) void {
        _ = self;
    }
    

    pub fn setGameKeyEvent(self: *Self, gameKeyEvent: ?*GameKeyEvent) void {
        self.gameKeyEvent = gameKeyEvent;
    }
    

    pub fn getGameKeyEvent(self: *Self) ?*GameKeyEvent {
        return self.gameKeyEvent;
    }
    

    pub fn setGameKey(self: *Self, gameKey: ?*GameKey) void {
        self.gameKey = gameKey;
    }
    

    pub fn getGameKey(self: *Self) ?*GameKey {
        return self.gameKey;
    }
};

