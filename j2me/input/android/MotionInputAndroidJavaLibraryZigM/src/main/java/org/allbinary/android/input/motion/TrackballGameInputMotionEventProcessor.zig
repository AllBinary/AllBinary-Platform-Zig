//
// AllBinary Open License Version 1
// Copyright (c) 2009 AllBinary
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
// package org.allbinary.android.input.motion

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MotionEvent = @import("android/view/MotionEvent.zig").MotionEvent;
const SingleKeyPressGameKeyFromMotionGestureEventListener = @import("org/allbinary/game/input/motion/action/SingleKeyPressGameKeyFromMotionGestureEventListener.zig").SingleKeyPressGameKeyFromMotionGestureEventListener;
const DownTrackballInputToGameKeyEventAction = @import("org/allbinary/input/motion/trackball/action/DownTrackballInputToGameKeyEventAction.zig").DownTrackballInputToGameKeyEventAction;
const LeftTrackballInputToGameKeyEventAction = @import("org/allbinary/input/motion/trackball/action/LeftTrackballInputToGameKeyEventAction.zig").LeftTrackballInputToGameKeyEventAction;
const RightTrackballInputToGameKeyEventAction = @import("org/allbinary/input/motion/trackball/action/RightTrackballInputToGameKeyEventAction.zig").RightTrackballInputToGameKeyEventAction;
const UpTrackballInputToGameKeyEventAction = @import("org/allbinary/input/motion/trackball/action/UpTrackballInputToGameKeyEventAction.zig").UpTrackballInputToGameKeyEventAction;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const MotionEventProcessor = @import("org/allbinary/android/input/motion/MotionEventProcessor.zig").MotionEventProcessor;

pub const TrackballGameInputMotionEventProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor";
    base: MotionEventProcessor = undefined,
    logUtil: ?*LogUtil = null,
    listener: ?*SingleKeyPressGameKeyFromMotionGestureEventListener = null,
    commonStrings: ?*CommonStrings = null,
    var PROCESSOR: ?*TrackballGameInputMotionEventProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        PROCESSOR = TrackballGameInputMotionEventProcessor.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.listener = SingleKeyPressGameKeyFromMotionGestureEventListener.create();
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn getInstance() ?*TrackballGameInputMotionEventProcessor {
        return Inheritance.upcast(?*TrackballGameInputMotionEventProcessor, TrackballGameInputMotionEventProcessor.PROCESSOR);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = MotionEventProcessor.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn process(self: *Self, motionEvent: ?*MotionEvent) void {
        { // try
            const x: f32 = motionEvent.?.getX();
            const y: f32 = motionEvent.?.getY();
            if (x < 0.0) {
                _ = Inheritance.call(self.listener.?, "onCompleteMotionGestureInputEvent", .{ LeftTrackballInputToGameKeyEventAction.getInstance() });
            } else if (x > 0.0) {
                _ = Inheritance.call(self.listener.?, "onCompleteMotionGestureInputEvent", .{ RightTrackballInputToGameKeyEventAction.getInstance() });
            }
            if (y < 0.0) {
                _ = Inheritance.call(self.listener.?, "onCompleteMotionGestureInputEvent", .{ UpTrackballInputToGameKeyEventAction.getInstance() });
            } else if (y > 0.0) {
                _ = Inheritance.call(self.listener.?, "onCompleteMotionGestureInputEvent", .{ DownTrackballInputToGameKeyEventAction.getInstance() });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.PROCESS, e });
    }
};

