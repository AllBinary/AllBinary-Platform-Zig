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
// package org.allbinary.input.motion

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TouchMotionGestureFactory = @import("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.zig").TouchMotionGestureFactory;
const MotionGestureConfiguration = @import("org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration.zig").MotionGestureConfiguration;
const MotionGestureConfigurationFactory = @import("org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.zig").MotionGestureConfigurationFactory;
const DiagonalDownLeftTouchInputToGameKeyEventAction = @import("org/allbinary/input/motion/touch/action/DiagonalDownLeftTouchInputToGameKeyEventAction.zig").DiagonalDownLeftTouchInputToGameKeyEventAction;
const DiagonalDownRightTouchInputToGameKeyEventAction = @import("org/allbinary/input/motion/touch/action/DiagonalDownRightTouchInputToGameKeyEventAction.zig").DiagonalDownRightTouchInputToGameKeyEventAction;
const DiagonalUpLeftTouchInputToGameKeyEventAction = @import("org/allbinary/input/motion/touch/action/DiagonalUpLeftTouchInputToGameKeyEventAction.zig").DiagonalUpLeftTouchInputToGameKeyEventAction;
const DiagonalUpRightTouchInputToGameKeyEventAction = @import("org/allbinary/input/motion/touch/action/DiagonalUpRightTouchInputToGameKeyEventAction.zig").DiagonalUpRightTouchInputToGameKeyEventAction;
const DownTouchInputToGameKeyEventAction = @import("org/allbinary/input/motion/touch/action/DownTouchInputToGameKeyEventAction.zig").DownTouchInputToGameKeyEventAction;
const LeftTouchInputToGameKeyEventAction = @import("org/allbinary/input/motion/touch/action/LeftTouchInputToGameKeyEventAction.zig").LeftTouchInputToGameKeyEventAction;
const ReleaseTouchInputToGameKeyEventAction = @import("org/allbinary/input/motion/touch/action/ReleaseTouchInputToGameKeyEventAction.zig").ReleaseTouchInputToGameKeyEventAction;
const RightTouchInputToGameKeyEventAction = @import("org/allbinary/input/motion/touch/action/RightTouchInputToGameKeyEventAction.zig").RightTouchInputToGameKeyEventAction;
const UpTouchInputToGameKeyEventAction = @import("org/allbinary/input/motion/touch/action/UpTouchInputToGameKeyEventAction.zig").UpTouchInputToGameKeyEventAction;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const CompleteMotionGestureInputToGameMotionGestureInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput";
    logUtil: ?*LogUtil = null,
    var instance: ?*CompleteMotionGestureInputToGameMotionGestureInput = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CompleteMotionGestureInputToGameMotionGestureInput.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CompleteMotionGestureInputToGameMotionGestureInput {
        return Inheritance.upcast(?*CompleteMotionGestureInputToGameMotionGestureInput, CompleteMotionGestureInputToGameMotionGestureInput.instance);
    }
    

    pub fn init(self: *Self) void {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        { // try
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("Compound Motion Gestures"), self, commonStrings.?.INIT });
            const motionGestureConfiguration: ?*MotionGestureConfiguration = Inheritance.upcast(?*MotionGestureConfiguration, MotionGestureConfigurationFactory.getInstance());
            const touchMotionGestureFactory: ?*TouchMotionGestureFactory = Inheritance.upcast(?*TouchMotionGestureFactory, TouchMotionGestureFactory.getInstance());
            var list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(list.?, "add", .{ touchMotionGestureFactory.?.DIAGONAL_DOWN_LEFT });
            _ = Inheritance.call(motionGestureConfiguration.?, "addMotionGestureAction", .{ list, DiagonalDownLeftTouchInputToGameKeyEventAction.getInstance() });
            list = Inheritance.upcast(@TypeOf(list), BasicArrayListD.create());
            _ = Inheritance.call(list.?, "add", .{ touchMotionGestureFactory.?.DIAGONAL_DOWN_RIGHT });
            _ = Inheritance.call(motionGestureConfiguration.?, "addMotionGestureAction", .{ list, DiagonalDownRightTouchInputToGameKeyEventAction.getInstance() });
            list = Inheritance.upcast(@TypeOf(list), BasicArrayListD.create());
            _ = Inheritance.call(list.?, "add", .{ touchMotionGestureFactory.?.DIAGONAL_UP_LEFT });
            _ = Inheritance.call(motionGestureConfiguration.?, "addMotionGestureAction", .{ list, DiagonalUpLeftTouchInputToGameKeyEventAction.getInstance() });
            list = Inheritance.upcast(@TypeOf(list), BasicArrayListD.create());
            _ = Inheritance.call(list.?, "add", .{ touchMotionGestureFactory.?.DIAGONAL_UP_RIGHT });
            _ = Inheritance.call(motionGestureConfiguration.?, "addMotionGestureAction", .{ list, DiagonalUpRightTouchInputToGameKeyEventAction.getInstance() });
            list = Inheritance.upcast(@TypeOf(list), BasicArrayListD.create());
            _ = Inheritance.call(list.?, "add", .{ touchMotionGestureFactory.?.LEFT });
            _ = Inheritance.call(motionGestureConfiguration.?, "addMotionGestureAction", .{ list, LeftTouchInputToGameKeyEventAction.getInstance() });
            list = Inheritance.upcast(@TypeOf(list), BasicArrayListD.create());
            _ = Inheritance.call(list.?, "add", .{ touchMotionGestureFactory.?.RIGHT });
            _ = Inheritance.call(motionGestureConfiguration.?, "addMotionGestureAction", .{ list, RightTouchInputToGameKeyEventAction.getInstance() });
            list = Inheritance.upcast(@TypeOf(list), BasicArrayListD.create());
            _ = Inheritance.call(list.?, "add", .{ touchMotionGestureFactory.?.DOWN });
            _ = Inheritance.call(motionGestureConfiguration.?, "addMotionGestureAction", .{ list, DownTouchInputToGameKeyEventAction.getInstance() });
            list = Inheritance.upcast(@TypeOf(list), BasicArrayListD.create());
            _ = Inheritance.call(list.?, "add", .{ touchMotionGestureFactory.?.UP });
            _ = Inheritance.call(motionGestureConfiguration.?, "addMotionGestureAction", .{ list, UpTouchInputToGameKeyEventAction.getInstance() });
            list = Inheritance.upcast(@TypeOf(list), BasicArrayListD.create());
            _ = Inheritance.call(list.?, "add", .{ touchMotionGestureFactory.?.RELEASED });
            _ = Inheritance.call(motionGestureConfiguration.?, "addMotionGestureAction", .{ list, ReleaseTouchInputToGameKeyEventAction.getInstance() });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.INIT, e });
    }
};

