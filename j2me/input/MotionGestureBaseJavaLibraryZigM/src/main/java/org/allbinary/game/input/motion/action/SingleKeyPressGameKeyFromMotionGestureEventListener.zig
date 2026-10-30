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
const CompleteMotionGestureInputEventListener = @import("org/allbinary/game/input/CompleteMotionGestureInputEventListener.zig").CompleteMotionGestureInputEventListener;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const PressGameKeyEventHandler = @import("org/allbinary/game/input/event/PressGameKeyEventHandler.zig").PressGameKeyEventHandler;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GameKeyCompleteMotionGestureInputEvent = @import("org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.zig").GameKeyCompleteMotionGestureInputEvent;

pub const SingleKeyPressGameKeyFromMotionGestureEventListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener";
    base: CompleteMotionGestureInputEventListener = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CompleteMotionGestureInputEventListener.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn onCompleteMotionGestureInputEvent(self: *Self, completeMotionGestureInputEvent: ?*CompleteMotionGestureInputEvent) void {
        _ = self;
        { // try
            const gameKeyCompleteMotionGestureInputEvent: ?*GameKeyCompleteMotionGestureInputEvent = Inheritance.cast(?*GameKeyCompleteMotionGestureInputEvent, completeMotionGestureInputEvent);
            const gameKeyEvent: ?*GameKeyEvent = Inheritance.upcast(?*GameKeyEvent, Inheritance.receiver(gameKeyCompleteMotionGestureInputEvent.?, "getGameKeyEvent").getGameKeyEvent());
            _ = Inheritance.call(PressGameKeyEventHandler.getInstance().?, "fireEvent", .{ gameKeyEvent });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("onCompleteMotionGestureInputEvent"), e });
    }
};

