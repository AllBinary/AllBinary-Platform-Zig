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
const GameKey = @import("org/allbinary/game/input/GameKey.zig").GameKey;
const GameKeyFactory = @import("org/allbinary/game/input/GameKeyFactory.zig").GameKeyFactory;
const PlatformInputMappingFactory = @import("org/allbinary/game/input/PlatformInputMappingFactory.zig").PlatformInputMappingFactory;
const GameKeyEventFactory = @import("org/allbinary/game/input/event/GameKeyEventFactory.zig").GameKeyEventFactory;
const GameKeyCompleteMotionGestureInputEvent = @import("org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.zig").GameKeyCompleteMotionGestureInputEvent;
const TouchMotionGestureFactory = @import("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.zig").TouchMotionGestureFactory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const ReleaseTouchInputToGameKeyEventAction = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction";
    base: GameKeyCompleteMotionGestureInputEvent = undefined,
    NONE: ?*GameKey = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.NONE = Inheritance.upcast(?*GameKey, GameKeyFactory.getInstance().?.NONE);
    }
    

    pub fn getInstance() ?*GameKeyCompleteMotionGestureInputEvent {
        if (Object.same(ReleaseTouchInputToGameKeyEventAction.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            ReleaseTouchInputToGameKeyEventAction.instance = Inheritance.upcast(@TypeOf(ReleaseTouchInputToGameKeyEventAction.instance), ReleaseTouchInputToGameKeyEventAction.create());
        }
        return Inheritance.cast(?*GameKeyCompleteMotionGestureInputEvent, ReleaseTouchInputToGameKeyEventAction.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GameKeyCompleteMotionGestureInputEvent, "create3", .{ String.literal("Release Action"), TouchMotionGestureFactory.getInstance().?.RELEASED, Inheritance.receiverOf(Inheritance.receiverOf(PlatformInputMappingFactory.getInstance().?, "getPersistentInputMappingInstance").getPersistentInputMappingInstance().?, "getInputMapping").getInputMapping() }).*;
        this.initFields();
        { // try
            _ = Inheritance.call(this, "setGameKey", .{ this.NONE });
            _ = Inheritance.call(this, "setGameKeyEvent", .{ Inheritance.call(GameKeyEventFactory.getInstance().?, "getInstanceForInput", .{ this, this.NONE }) });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "put", .{ commonStrings.?.EXCEPTION, this, commonStrings.?.CONSTRUCTOR, e });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn update(self: *Self) void {
        _ = self;
    }
};

