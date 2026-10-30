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
const GameKeyEventFactory = @import("org/allbinary/game/input/event/GameKeyEventFactory.zig").GameKeyEventFactory;
const InputToGameKeyMapping = @import("org/allbinary/game/input/mapping/InputToGameKeyMapping.zig").InputToGameKeyMapping;
const MotionGestureInput = @import("org/allbinary/input/motion/gesture/MotionGestureInput.zig").MotionGestureInput;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GameKeyCompleteMotionGestureInputEventFactory = @import("org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEventFactory.zig").GameKeyCompleteMotionGestureInputEventFactory;

pub const GameKeyCompleteMotionGestureInputEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent";
    base: CompleteMotionGestureInputEvent = undefined,
    gameKeyEventFactory: ?*GameKeyEventFactory = null,
    SOURCE_ID: i32 = 0,
    gameKey: ?*GameKey = null,
    gameKeyEvent: ?*GameKeyEvent = null,
    inputToGameKeyMapping: ?*InputToGameKeyMapping = null,
    // Implements GameKeyEventSourceInterface

    fn initFields(this: *Self) void {
        this.gameKeyEventFactory = Inheritance.upcast(?*GameKeyEventFactory, GameKeyEventFactory.getInstance());
        this.SOURCE_ID = this.gameKeyEventFactory.?.MOTION_GESTURE_SOURCE_ID;
        this.gameKey = Inheritance.upcast(?*GameKey, GameKey.NULL_GAME_KEY);
        this.gameKeyEvent = Inheritance.upcast(?*GameKeyEvent, GameKeyEvent.NONE);
        
    }
    

    pub fn create3(name: ?*String, motionGestureInput: ?*MotionGestureInput, inputToGameKeyMapping: ?*InputToGameKeyMapping) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CompleteMotionGestureInputEvent, "create2", .{ name, motionGestureInput }).*;
        this.initFields();
        this.inputToGameKeyMapping = inputToGameKeyMapping;
        _ = Inheritance.call(GameKeyCompleteMotionGestureInputEventFactory.getInstance().?, "add", .{ this });
        _ = this.update();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getSourceId(self: *Self) i32 {
        return self.SOURCE_ID;
    }
    

    pub fn update(self: *Self) void {
        { // try
            _ = Inheritance.call(self, "setGameKey", .{ Inheritance.call(self.inputToGameKeyMapping.?, "getInstance", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getMotionGestureInput").getMotionGestureInput().?, "getId").getId() }) });
            _ = Inheritance.call(self, "setGameKeyEvent", .{ Inheritance.call(self.gameKeyEventFactory.?, "getInstanceForInput", .{ self, self.getGameKey() }) });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.UPDATE, e });
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

