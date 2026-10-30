// Generated Code Do Not Modify
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const CompleteMotionGestureInputEvent = @import("org/allbinary/game/input/CompleteMotionGestureInputEvent.zig").CompleteMotionGestureInputEvent;
const CompleteMotionGestureInputEventListenerInterface = @import("org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface.zig").CompleteMotionGestureInputEventListenerInterface;

pub const CompleteMotionGestureInputEventListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.CompleteMotionGestureInputEventListener";
    pub const java_interfaces = .{ CompleteMotionGestureInputEventListenerInterface };
    // Implements CompleteMotionGestureInputEventListenerInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = self;
    }
    

    pub fn onCompleteMotionGestureInputEvent(self: *Self, completeMotionGestureInputEvent: ?*CompleteMotionGestureInputEvent) void {
        _ = completeMotionGestureInputEvent;
        _ = self;
    }
};

