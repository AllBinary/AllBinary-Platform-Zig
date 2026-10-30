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
// package org.allbinary.android.input.motion.api1

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MotionEvent = @import("android/view/MotionEvent.zig").MotionEvent;
const BaseGameInputMotionEventProcessor = @import("org/allbinary/android/input/motion/BaseGameInputMotionEventProcessor.zig").BaseGameInputMotionEventProcessor;
const AllMotionRecognizer = @import("org/allbinary/input/motion/AllMotionRecognizer.zig").AllMotionRecognizer;
const MotionRecognizer = @import("org/allbinary/input/motion/MotionRecognizer.zig").MotionRecognizer;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;

pub const GameInputMotionEventProcessorAPI1 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1";
    base: BaseGameInputMotionEventProcessor = undefined,
    logUtil: ?*LogUtil = null,
    motionRecognizer: ?*MotionRecognizer = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.motionRecognizer = Inheritance.upcast(?*MotionRecognizer, AllMotionRecognizer.create());
    }
    

    pub fn getInstance() ?*GameInputMotionEventProcessorAPI1 {
        if (Object.same(GameInputMotionEventProcessorAPI1.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            GameInputMotionEventProcessorAPI1.instance = Inheritance.upcast(@TypeOf(GameInputMotionEventProcessorAPI1.instance), GameInputMotionEventProcessorAPI1.create());
        }
        return Inheritance.cast(?*GameInputMotionEventProcessorAPI1, GameInputMotionEventProcessorAPI1.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseGameInputMotionEventProcessor.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn process(self: *Self, motionEvent: ?*MotionEvent) void {
        { // try
            const x: i32 = @as(i32, @intCast(motionEvent.?.getX()));
            const y: i32 = @as(i32, @intCast(motionEvent.?.getY()));
            const action: i32 = motionEvent.?.getAction();
            if (action == MotionEvent.ACTION_DOWN) {
                _ = Inheritance.call(self.motionRecognizer.?, "processStartMotionEvent", .{ x, y, motionEvent.?.getDeviceId(), 0 });
            } else if (action == MotionEvent.ACTION_UP or action == MotionEvent.ACTION_CANCEL) {
                _ = Inheritance.call(self.motionRecognizer.?, "processEndMotionEvent", .{ x, y, motionEvent.?.getDeviceId(), 0 });
            } else if (action == MotionEvent.ACTION_MOVE) {
                _ = Inheritance.call(self.motionRecognizer.?, "processDraggedMotionEvent", .{ x, y, motionEvent.?.getDeviceId(), 0 });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS, e });
    }
};

