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
// package org.allbinary.input.motion.touch.action

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PlatformInputMappingFactory = @import("org/allbinary/game/input/PlatformInputMappingFactory.zig").PlatformInputMappingFactory;
const GameKeyCompleteMotionGestureInputEvent = @import("org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.zig").GameKeyCompleteMotionGestureInputEvent;
const TouchMotionGestureFactory = @import("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.zig").TouchMotionGestureFactory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;

pub const RightTouchInputToGameKeyEventAction = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.touch.action.RightTouchInputToGameKeyEventAction";
    base: GameKeyCompleteMotionGestureInputEvent = undefined,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }
    

    pub fn getInstance() ?*GameKeyCompleteMotionGestureInputEvent {
        if (Object.same(RightTouchInputToGameKeyEventAction.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            RightTouchInputToGameKeyEventAction.instance = Inheritance.upcast(@TypeOf(RightTouchInputToGameKeyEventAction.instance), RightTouchInputToGameKeyEventAction.create());
        }
        return Inheritance.cast(?*GameKeyCompleteMotionGestureInputEvent, RightTouchInputToGameKeyEventAction.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GameKeyCompleteMotionGestureInputEvent, "create3", .{ String.literal("Right Action"), TouchMotionGestureFactory.getInstance().?.RIGHT, Inheritance.receiverOf(Inheritance.receiverOf(PlatformInputMappingFactory.getInstance().?, "getPersistentInputMappingInstance").getPersistentInputMappingInstance().?, "getInputMapping").getInputMapping() }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

