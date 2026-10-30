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
// package org.allbinary.game.input.mapping

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputMappingEvent = @import("org/allbinary/game/input/mapping/event/InputMappingEvent.zig").InputMappingEvent;
const InputMappingEventListenerInterface = @import("org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface.zig").InputMappingEventListenerInterface;
const GameKeyCompleteMotionGestureInputEventFactory = @import("org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEventFactory.zig").GameKeyCompleteMotionGestureInputEventFactory;
const BasicTouchInputFactory = @import("org/allbinary/input/motion/button/BasicTouchInputFactory.zig").BasicTouchInputFactory;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;

pub const MotionInputMappingEventListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.mapping.MotionInputMappingEventListener";
    // Implements InputMappingEventListenerInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    // throws Exception
    pub fn onInputMappingEvent(self: *Self, inputMappingEvent: ?*InputMappingEvent) void {
        _ = self;
        _ = Inheritance.receiverOf(GameKeyCompleteMotionGestureInputEventFactory.getInstance().?, "updateAll").updateAll();
        _ = Inheritance.call(BasicTouchInputFactory.getInstance().?, "updateAll", .{ Inheritance.receiver(inputMappingEvent.?, "getInputToGameKeyMapping").getInputToGameKeyMapping() });
    }
};

