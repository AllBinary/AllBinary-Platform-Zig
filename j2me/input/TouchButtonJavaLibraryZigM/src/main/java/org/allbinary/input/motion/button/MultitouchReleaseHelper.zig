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
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const CancelTouchButtonInputFactory = @import("org/allbinary/input/motion/button/CancelTouchButtonInputFactory.zig").CancelTouchButtonInputFactory;
const ReleaseHelper = @import("org/allbinary/input/motion/button/ReleaseHelper.zig").ReleaseHelper;
const TouchButtonInput = @import("org/allbinary/input/motion/button/TouchButtonInput.zig").TouchButtonInput;
const TouchButtonRecognizer = @import("org/allbinary/input/motion/button/TouchButtonRecognizer.zig").TouchButtonRecognizer;
const Exception = @import("java/lang/Exception.zig").Exception;

pub const MultitouchReleaseHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.MultitouchReleaseHelper";
    base: ReleaseHelper = undefined,
    

    pub fn create1(touchButtonRecognizer: ?*TouchButtonRecognizer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ReleaseHelper, "create1", .{ touchButtonRecognizer }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn release(self: *Self, touchButtonInput: ?*TouchButtonInput, deviceId: i32) void {
        const cancelTouchButtonInput: ?*TouchButtonInput = Inheritance.upcast(?*TouchButtonInput, Inheritance.call(CancelTouchButtonInputFactory.getInstance().?, "getCancel", .{ touchButtonInput }));
        var nextTouchButtonInput: ?*TouchButtonInput = null;
        var gameKeyEvent: ?*GameKeyEvent = null;
        {
            var index: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(Inheritance.fieldPointer(self, "touchButtonRecognizer").*.?, "currentlyPressedTouchButtonSingleton").*.?, "size").size() - 1;
            while (index >= 0) : (index -= 1) {
            nextTouchButtonInput = Inheritance.upcast(@TypeOf(nextTouchButtonInput), Inheritance.call(Inheritance.fieldPointer(Inheritance.fieldPointer(self, "touchButtonRecognizer").*.?, "currentlyPressedTouchButtonSingleton").*.?, "get", .{ index }));
            if (Object.same(cancelTouchButtonInput, nextTouchButtonInput)) {
                gameKeyEvent = Inheritance.upcast(@TypeOf(gameKeyEvent), Inheritance.receiver(nextTouchButtonInput.?, "getGameKeyEvent").getGameKeyEvent());
                _ = Inheritance.call(Inheritance.fieldPointer(Inheritance.fieldPointer(self, "touchButtonRecognizer").*.?, "upGameKeyEventHandler").*.?, "fireEvent", .{ gameKeyEvent });
                _ = Inheritance.call(Inheritance.call(Inheritance.fieldPointer(Inheritance.fieldPointer(self, "touchButtonRecognizer").*.?, "upGameKeyEventHandler").*.?, "getInstanceForDevice", .{ deviceId }).?, "fireEvent", .{ gameKeyEvent });
                _ = Inheritance.call(Inheritance.fieldPointer(Inheritance.fieldPointer(self, "touchButtonRecognizer").*.?, "currentlyPressedTouchButtonSingleton").*.?, "removeAt", .{ index });
            }
            }
        }
    }
};

