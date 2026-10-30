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
// package org.allbinary.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllMotionRecognizer = @import("org/allbinary/input/motion/AllMotionRecognizer.zig").AllMotionRecognizer;
const BasicMotionGesturesHandler = @import("org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.zig").BasicMotionGesturesHandler;
const GameMotionGestureListener = @import("org/allbinary/input/motion/gesture/observer/GameMotionGestureListener.zig").GameMotionGestureListener;
const MotionGestureReceiveInterfaceFactory = @import("org/allbinary/input/motion/gesture/observer/MotionGestureReceiveInterfaceFactory.zig").MotionGestureReceiveInterfaceFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

//TouchJ2ME
pub const TouchJ2ME = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.TouchJ2ME";
    logUtil: ?*LogUtil = null,
    DEVICE_ID: i32 = 0,
    motionRecognizer: ?*AllMotionRecognizer = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.DEVICE_ID = 0;
        this.motionRecognizer = AllMotionRecognizer.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const motionGesturesHandler: ?*BasicMotionGesturesHandler = Inheritance.upcast(?*BasicMotionGesturesHandler, Inheritance.receiverOf(this.motionRecognizer.?.getMotionGestureRecognizer().?, "getMotionGesturesHandler").getMotionGesturesHandler());
        _ = Inheritance.call(motionGesturesHandler.?, "addListenerInterface", .{ Inheritance.callStatic(GameMotionGestureListener, "create1", .{ MotionGestureReceiveInterfaceFactory.getInstance() }) });
        return this;
    }
    

    pub fn pointerDragged(self: *Self, x: i32, y: i32) void {
        { // try
            _ = Inheritance.call(self.motionRecognizer.?, "processDraggedMotionEvent", .{ x, y, self.DEVICE_ID, 0 });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("pointerDragged"), e });
    }
    

    pub fn pointerPressed(self: *Self, x: i32, y: i32) void {
        { // try
            _ = Inheritance.call(self.motionRecognizer.?, "processStartMotionEvent", .{ x, y, self.DEVICE_ID, 0 });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("pointerPressed"), e });
    }
    

    pub fn pointerReleased(self: *Self, x: i32, y: i32) void {
        { // try
            _ = Inheritance.call(self.motionRecognizer.?, "processEndMotionEvent", .{ x, y, self.DEVICE_ID, 0 });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("pointerReleased"), e });
    }
};

