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
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const GameKeyEventListenerInterface = @import("org/allbinary/game/input/event/GameKeyEventListenerInterface.zig").GameKeyEventListenerInterface;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const GameInputStrings = @import("org/allbinary/game/input/GameInputStrings.zig").GameInputStrings;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const PlayerGameInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.PlayerGameInput";
    base: GameInput = undefined,
    gameInputStrings: ?*GameInputStrings = null,
    playerInputId: i32 = 0,
    // Implements GameKeyEventListenerInterface

    fn initFields(this: *Self) void {
        this.gameInputStrings = Inheritance.upcast(?*GameInputStrings, GameInputStrings.getInstance());
        
    }
    

    pub fn create3(gameKeyEventList: ?*BasicArrayList, removalGameKeyEventList: ?*BasicArrayList, playerInputId: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GameInput, "create2", .{ gameKeyEventList, removalGameKeyEventList }).*;
        this.initFields();
        this.playerInputId = playerInputId;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onPressGameKeyEvent(self: *Self, gameKeyEvent: ?*GameKeyEvent) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self, "add", .{ gameKeyEvent });
        _ = Inheritance.call(self, "addForRemoval", .{ gameKeyEvent });
    }
    

    pub fn onDownGameKeyEvent(self: *Self, gameKeyEvent: ?*GameKeyEvent) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self, "add", .{ gameKeyEvent });
    }
    

    pub fn onDownKeyEvent(self: *Self, gameKeyEvent: ?*GameKeyEvent) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self, "add", .{ gameKeyEvent });
        _ = Inheritance.call(self, "addForRemoval", .{ gameKeyEvent });
    }
    

    pub fn onDownKey(self: *Self, gameKeyEvent: ?*Integer) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.START_LABEL }).?, "append", .{ Object.toString(Object.of(gameKeyEvent)) }))), self, self.gameInputStrings.?.ON_DOWN_GAME_KEY });
    }
    

    pub fn onUpGameKeyEvent(self: *Self, gameKeyEvent: ?*GameKeyEvent) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self, "addForRemoval", .{ gameKeyEvent });
    }
    

    pub fn onUpKeyEvent(self: *Self, gameKeyEvent: ?*Integer) void {
        _ = gameKeyEvent;
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn getPlayerInputId(self: *Self) i32 {
        return self.playerInputId;
    }
};

