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
const CompleteMotionGestureInputEvent = @import("org/allbinary/game/input/CompleteMotionGestureInputEvent.zig").CompleteMotionGestureInputEvent;
const CompleteMotionGestureInputEventHandler = @import("org/allbinary/game/input/CompleteMotionGestureInputEventHandler.zig").CompleteMotionGestureInputEventHandler;
const CompleteMotionGestureInputEventListenerInterface = @import("org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface.zig").CompleteMotionGestureInputEventListenerInterface;
const GameKey = @import("org/allbinary/game/input/GameKey.zig").GameKey;
const InputMappingInterface = @import("org/allbinary/game/input/mapping/InputMappingInterface.zig").InputMappingInterface;
const GameKeyCompleteMotionGestureInputEvent = @import("org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.zig").GameKeyCompleteMotionGestureInputEvent;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const ProcessPaintable = @import("org/allbinary/graphics/paint/ProcessPaintable.zig").ProcessPaintable;
const MotionGestureInput = @import("org/allbinary/input/motion/gesture/MotionGestureInput.zig").MotionGestureInput;
const TouchMotionGestureFactory = @import("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.zig").TouchMotionGestureFactory;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const TouchButtonsMappingPaintable = @import("org/allbinary/input/motion/button/TouchButtonsMappingPaintable.zig").TouchButtonsMappingPaintable;

pub const TouchButtonsPaintableComposite = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchButtonsPaintableComposite";
    base: ProcessPaintable = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    inputMappingInterface: ?*InputMappingInterface = null,
    touchButtonsPaintable: ?*TouchButtonsMappingPaintable = null,
    timeHelper: ?*TimeDelayHelper = null,
    released: bool = false,
    METHOD_NAME: ?*String = null,
    RELEASE: ?*String = null,
    FAST_REPEAT: ?*String = null,
    IGNORE: ?*String = null,
    // Implements CompleteMotionGestureInputEventListenerInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        this.timeHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 250 });
        this.released = true;
        this.METHOD_NAME = String.literal("onCompleteMotionGestureInputEvent");
        this.RELEASE = String.literal("Ignoring: MotionGestureInput Release");
        this.FAST_REPEAT = String.literal("Ignoring: MotionGestureInput Repeated To Quickly");
        this.IGNORE = String.literal("Ignoring: Until Released");
    }
    

    pub fn create2(inputMappingInterface: ?*InputMappingInterface, basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ProcessPaintable.create().*;
        this.initFields();
        this.inputMappingInterface = inputMappingInterface;
        _ = Inheritance.call(CompleteMotionGestureInputEventHandler.getInstance().?, "addListenerInterface", .{ this });
        this.touchButtonsPaintable = Inheritance.callStatic(TouchButtonsMappingPaintable, "create1", .{ basicColor });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn onCompleteMotionGestureInputEvent(self: *Self, completeMotionGestureInputEvent: ?*CompleteMotionGestureInputEvent) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("onCompleteMotionGestureInputEvent") });
            const touchMotionGestureFactory: ?*TouchMotionGestureFactory = Inheritance.upcast(?*TouchMotionGestureFactory, TouchMotionGestureFactory.getInstance());
            const gameKeyCompleteMotionGestureInputEvent: ?*GameKeyCompleteMotionGestureInputEvent = Inheritance.cast(?*GameKeyCompleteMotionGestureInputEvent, completeMotionGestureInputEvent);
            const gameKey: ?*GameKey = Inheritance.upcast(?*GameKey, Inheritance.receiver(gameKeyCompleteMotionGestureInputEvent.?, "getGameKey").getGameKey());
            const motionGestureInput: ?*MotionGestureInput = Inheritance.upcast(?*MotionGestureInput, Inheritance.receiver(completeMotionGestureInputEvent.?, "getMotionGestureInput").getMotionGestureInput());
            if (Object.same(motionGestureInput, touchMotionGestureFactory.?.RELEASED)) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ self.RELEASE, self, self.METHOD_NAME });
                self.released = true;
                return;
            }
            if (Object.same(motionGestureInput, TouchMotionGestureFactory.getInstance().?.NO_MOTION) and !self.timeHelper.?.isTimeTNT()) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ self.FAST_REPEAT, self, self.METHOD_NAME });
                return;
            }
            if (!self.released) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ self.IGNORE, self, self.METHOD_NAME });
                return;
            }
            self.released = false;
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("GameKey: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ gameKey }) }).?, "append", .{ String.literal(" MotionGestureInput: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ motionGestureInput }) }))), self, self.METHOD_NAME });
            _ = Inheritance.call(self.inputMappingInterface.?, "processInputMapping", .{ gameKey, motionGestureInput });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.METHOD_NAME, e });
    }
    

    pub fn process(self: *Self) void {
        _ = Inheritance.call(CompleteMotionGestureInputEventHandler.getInstance().?, "removeListener", .{ self });
    }
};

