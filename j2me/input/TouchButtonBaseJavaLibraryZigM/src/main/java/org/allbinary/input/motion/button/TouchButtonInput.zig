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
// package org.allbinary.input.motion.button

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameKey = @import("org/allbinary/game/input/GameKey.zig").GameKey;
const GameKeyEventSourceInterface = @import("org/allbinary/game/input/GameKeyEventSourceInterface.zig").GameKeyEventSourceInterface;
const Input = @import("org/allbinary/game/input/Input.zig").Input;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const GameKeyEventFactory = @import("org/allbinary/game/input/event/GameKeyEventFactory.zig").GameKeyEventFactory;
const InputToGameKeyMapping = @import("org/allbinary/game/input/mapping/InputToGameKeyMapping.zig").InputToGameKeyMapping;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const TouchButtonInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchButtonInput";
    base: Input = undefined,
    logUtil: ?*LogUtil = null,
    gameKeyEventFactory: ?*GameKeyEventFactory = null,
    TOUCH_BUTTON_SOURCE_ID: i32 = 0,
    gameKeyEvent: ?*GameKeyEvent = null,
    // Implements GameKeyEventSourceInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.gameKeyEventFactory = Inheritance.upcast(?*GameKeyEventFactory, GameKeyEventFactory.getInstance());
        this.TOUCH_BUTTON_SOURCE_ID = this.gameKeyEventFactory.?.TOUCH_BUTTON_SOURCE_ID;
        this.gameKeyEvent = Inheritance.upcast(?*GameKeyEvent, GameKeyEvent.NONE);
    }
    

    pub fn create2(id: i32, name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Input, "create2", .{ id, name }).*;
        this.initFields();
        const inputFactory: ?*InputFactory = Inheritance.upcast(?*InputFactory, InputFactory.getInstance());
        _ = Inheritance.call(inputFactory.?, "add", .{ Inheritance.receiver(this, "getId").getId(), this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn update(self: *Self, inputToGameKeyMapping: ?*InputToGameKeyMapping) void {
        { // try
            const gameKey: ?*GameKey = Inheritance.upcast(?*GameKey, Inheritance.call(inputToGameKeyMapping.?, "getInstance", .{ Inheritance.receiver(self, "getId").getId() }));
            self.gameKeyEvent = Inheritance.upcast(@TypeOf(self.gameKeyEvent), Inheritance.call(self.gameKeyEventFactory.?, "getInstanceForInput", .{ self, gameKey }));
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.UPDATE, e });
    }
    

    pub fn getSourceId(self: *Self) i32 {
        return self.TOUCH_BUTTON_SOURCE_ID;
    }
    

    pub fn getGameKeyEvent(self: *Self) ?*GameKeyEvent {
        return self.gameKeyEvent;
    }
};

