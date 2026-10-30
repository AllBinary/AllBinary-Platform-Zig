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
// package org.allbinary.game.input.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameKeyEventSourceInterface = @import("org/allbinary/game/input/GameKeyEventSourceInterface.zig").GameKeyEventSourceInterface;
const Input = @import("org/allbinary/game/input/Input.zig").Input;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;

pub const GameKeyEventFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.event.GameKeyEventFactory";
    logUtil: ?*LogUtil = null,
    TOUCH_BUTTON_SOURCE_ID: i32 = 0,
    MOTION_GESTURE_SOURCE_ID: i32 = 0,
    MAX_SOURCES: i32 = 0,
    ARRAY: [][]?*GameKeyEvent = &.{},
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.TOUCH_BUTTON_SOURCE_ID = 2;
        this.MOTION_GESTURE_SOURCE_ID = 3;
        this.MAX_SOURCES = 4;
        this.ARRAY = array_N66126: { const array_N66126_array = allocator.alloc([]?*GameKeyEvent, @intCast(this.MAX_SOURCES)) catch unreachable; for (array_N66126_array) |*array_N66126_row| { array_N66126_row.* = allocator.alloc(?*GameKeyEvent, @intCast(InputFactory.getInstance().?.MAX)) catch unreachable; @memset(array_N66126_row.*, null); } break :array_N66126 array_N66126_array; };
    }
    

    pub fn getInstance() ?*GameKeyEventFactory {
        if (Object.same(GameKeyEventFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            GameKeyEventFactory.instance = Inheritance.upcast(@TypeOf(GameKeyEventFactory.instance), GameKeyEventFactory.create());
        }
        return Inheritance.cast(?*GameKeyEventFactory, GameKeyEventFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn init(self: *Self) void {
        const nullUtil: ?*NullUtil = Inheritance.upcast(?*NullUtil, NullUtil.getInstance());
        const size: i32 = InputFactory.getInstance().?.MAX;
        {
            var index: i32 = self.MAX_SOURCES;
            while (value_N66527: { index -= 1; break :value_N66527 index; } >= 0) {
            {
                var index2: i32 = size;
                while (value_N66472: { index2 -= 1; break :value_N66472 index2; } >= 0) {
                self.ARRAY[@intCast(index)][@intCast(index2)] = Inheritance.upcast(@TypeOf(self.ARRAY[@intCast(index)][@intCast(index2)]), Inheritance.callStatic(GameKeyEvent, "createEvent", .{ nullUtil.?.NULL_OBJECT, index, index2 }));
                }
            }
            }
        }
    }
    

    // throws Exception
    pub fn getInstanceForKey(self: *Self, anyType: ?*GameKeyEventSourceInterface, key: i32) ?*GameKeyEvent {
        const gameKeyEvent: ?*GameKeyEvent = Inheritance.upcast(?*GameKeyEvent, self.ARRAY[@intCast(anyType.?.getSourceId())][@intCast(key)]);
        return gameKeyEvent;
    }
    

    // throws Exception
    pub fn getInstanceForInput(self: *Self, anyType: ?*GameKeyEventSourceInterface, input: ?*Input) ?*GameKeyEvent {
        const gameKeyEvent: ?*GameKeyEvent = Inheritance.upcast(?*GameKeyEvent, self.ARRAY[@intCast(anyType.?.getSourceId())][@intCast(input.?.getId())]);
        return gameKeyEvent;
    }
};

