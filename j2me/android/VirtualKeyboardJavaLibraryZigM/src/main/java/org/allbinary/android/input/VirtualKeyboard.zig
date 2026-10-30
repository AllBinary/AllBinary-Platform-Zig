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
// package org.allbinary.android.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const VirtualKeyboardEvent = @import("org/allbinary/input/event/VirtualKeyboardEvent.zig").VirtualKeyboardEvent;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;

pub const VirtualKeyboard = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.VirtualKeyboard";
    pub var NULL_VIRTUAL_KEYBOARD: ?*VirtualKeyboard = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_VIRTUAL_KEYBOARD = VirtualKeyboard.create();
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
    

    pub fn onVirtualKeyboardEvent(self: *Self, virtualKeyboardEvent: ?*VirtualKeyboardEvent) void {
        _ = virtualKeyboardEvent;
        _ = self;
    }
    

    pub fn forceHide(self: *Self) void {
        _ = self;
    }
    

    pub fn hide(self: *Self) void {
        _ = self;
    }
};

