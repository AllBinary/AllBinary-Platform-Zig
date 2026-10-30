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
// package org.allbinary.input.motion.gesture.observer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MotionGestureInput = @import("org/allbinary/input/motion/gesture/MotionGestureInput.zig").MotionGestureInput;
const TouchMotionGestureFactory = @import("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.zig").TouchMotionGestureFactory;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CompleteMotionGestureListenerInterface = @import("org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface.zig").CompleteMotionGestureListenerInterface;
const MotionGestureEvent = @import("org/allbinary/input/motion/gesture/observer/MotionGestureEvent.zig").MotionGestureEvent;
const MotionGestureEventListener = @import("org/allbinary/input/motion/gesture/observer/MotionGestureEventListener.zig").MotionGestureEventListener;

pub const GameMotionGestureListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.gesture.observer.GameMotionGestureListener";
    pub const java_interfaces = .{ MotionGestureEventListener };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    motionGestureCollection: ?*BasicArrayList = null,
    touchGestureCollection: ?*BasicArrayList = null,
    signed: ?*CompleteMotionGestureListenerInterface = null,
    // Implements MotionGestureEventListener

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.motionGestureCollection = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.touchGestureCollection = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        
    }
    

    pub fn create1(signed: ?*CompleteMotionGestureListenerInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, this.commonStrings.?.CONSTRUCTOR });
        this.signed = signed;
        return this;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ self.commonStrings.?.NOT_IMPLEMENTED, self });
    }
    

    pub fn onUpMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        _ = Inheritance.call(self, "onMotionGestureEvent", .{ ev });
    }
    

    pub fn onDownMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        _ = Inheritance.call(self, "onMotionGestureEvent", .{ ev });
    }
    

    pub fn onLeftMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        _ = Inheritance.call(self, "onMotionGestureEvent", .{ ev });
    }
    

    pub fn onRightMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        _ = Inheritance.call(self, "onMotionGestureEvent", .{ ev });
    }
    

    pub fn onDiagonalDownRightMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        _ = Inheritance.call(self, "onMotionGestureEvent", .{ ev });
    }
    

    pub fn onDiagonalDownLeftMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        _ = Inheritance.call(self, "onMotionGestureEvent", .{ ev });
    }
    

    pub fn onDiagonalUpRightMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        _ = Inheritance.call(self, "onMotionGestureEvent", .{ ev });
    }
    

    pub fn onDiagonalUpLeftMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        _ = Inheritance.call(self, "onMotionGestureEvent", .{ ev });
    }
    

    pub fn onPressedMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        _ = Inheritance.call(self.touchGestureCollection.?, "add", .{ Inheritance.receiver(ev.?, "getMotionGesture").getMotionGesture() });
    }
    

    pub fn released(self: *Self, ev: ?*MotionGestureEvent) void {
        { // try
            _ = Inheritance.call(self.touchGestureCollection.?, "add", .{ Inheritance.receiver(ev.?, "getMotionGesture").getMotionGesture() });
            _ = Inheritance.call(self.signed.?, "onMotionGestureCompleted", .{ self.touchGestureCollection });
            _ = self.touchGestureCollection.?.clear();
        }
        // catch (Exception e):
//             const stringBuffer: ?*StringMaker = StringMaker.create(); _ = stringBuffer;
//             _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonStrings.?.EXCEPTION_LABEL });
//             _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ Inheritance.receiver(ev.?, "getMotionGesture").getMotionGesture() }) });
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("release"), e });
    }
    

    pub fn onScrolledMotionGestureEvent(self: *Self, motionGestureEvent: ?*MotionGestureEvent) void {
        _ = motionGestureEvent;
        _ = self;
    }
    

    pub fn onMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        { // try
            const motionGestureInput: ?*MotionGestureInput = Inheritance.upcast(?*MotionGestureInput, Inheritance.receiver(ev.?, "getMotionGesture").getMotionGesture());
            if (Object.same(motionGestureInput, TouchMotionGestureFactory.getInstance().?.PRESSED)) {
                _ = Inheritance.call(self, "onPressedMotionGestureEvent", .{ ev });
            } else if (Object.same(motionGestureInput, TouchMotionGestureFactory.getInstance().?.RELEASED)) {
                _ = Inheritance.call(self, "released", .{ ev });
            } else {
                _ = Inheritance.call(self.motionGestureCollection.?, "add", .{ motionGestureInput });
                _ = Inheritance.call(self.signed.?, "onMotionGestureCompleted", .{ self.motionGestureCollection });
                _ = self.motionGestureCollection.?.clear();
                _ = self.touchGestureCollection.?.clear();
            }
        }
        // catch (Exception e):
//             const stringBuffer: ?*StringMaker = StringMaker.create(); _ = stringBuffer;
//             _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonStrings.?.EXCEPTION_LABEL });
//             _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ Inheritance.receiver(ev.?, "getMotionGesture").getMotionGesture() }) });
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("onMotionGestureEvent"), e });
    }
};

