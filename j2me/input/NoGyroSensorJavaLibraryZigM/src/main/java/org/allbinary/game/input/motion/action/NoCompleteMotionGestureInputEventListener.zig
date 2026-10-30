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
const CompleteMotionGestureInputEventListenerInterface = @import("org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface.zig").CompleteMotionGestureInputEventListenerInterface;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;

pub const NoCompleteMotionGestureInputEventListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener";
    // Implements CompleteMotionGestureInputEventListenerInterface
    var instance: ?*NoCompleteMotionGestureInputEventListener = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = NoCompleteMotionGestureInputEventListener.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn onCompleteMotionGestureInputEvent(self: *Self, completeMotionGestureInputEvent: ?*CompleteMotionGestureInputEvent) void {
        _ = completeMotionGestureInputEvent;
        _ = self;
    }
    

    pub fn getInstance() ?*NoCompleteMotionGestureInputEventListener {
        return Inheritance.upcast(?*NoCompleteMotionGestureInputEventListener, NoCompleteMotionGestureInputEventListener.instance);
    }
};

