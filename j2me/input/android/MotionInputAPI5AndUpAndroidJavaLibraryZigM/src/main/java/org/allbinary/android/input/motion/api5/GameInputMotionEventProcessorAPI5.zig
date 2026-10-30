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
// package org.allbinary.android.input.motion.api5

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MotionEvent = @import("android/view/MotionEvent.zig").MotionEvent;
const BaseGameInputMotionEventProcessor = @import("org/allbinary/android/input/motion/BaseGameInputMotionEventProcessor.zig").BaseGameInputMotionEventProcessor;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const ScalableListener = @import("org/allbinary/graphics/displayable/ScalableListener.zig").ScalableListener;
const AllMotionRecognizer = @import("org/allbinary/input/motion/AllMotionRecognizer.zig").AllMotionRecognizer;
const MotionRecognizer = @import("org/allbinary/input/motion/MotionRecognizer.zig").MotionRecognizer;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const GameInputMotionInfoAPI5 = @import("org/allbinary/android/input/motion/api5/GameInputMotionInfoAPI5.zig").GameInputMotionInfoAPI5;

pub const GameInputMotionEventProcessorAPI5 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5";
    base: BaseGameInputMotionEventProcessor = undefined,
    logUtil: ?*LogUtil = null,
    displayInfo: ?*DisplayInfoSingleton = null,
    motionRecognizerArray: []?*MotionRecognizer = &.{},
    TOTAL_MINUS_ONE: i32 = 0,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.displayInfo = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        
        
    }
    

    pub fn getInstance() ?*GameInputMotionEventProcessorAPI5 {
        if (Object.same(GameInputMotionEventProcessorAPI5.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            GameInputMotionEventProcessorAPI5.instance = Inheritance.upcast(@TypeOf(GameInputMotionEventProcessorAPI5.instance), GameInputMotionEventProcessorAPI5.create());
        }
        return Inheritance.cast(?*GameInputMotionEventProcessorAPI5, GameInputMotionEventProcessorAPI5.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseGameInputMotionEventProcessor.create().*;
        this.initFields();
        const size: i32 = GameInputMotionInfoAPI5.getInstance().?.MAX_POINTERS;
        this.motionRecognizerArray = Inheritance.upcast(@TypeOf(this.motionRecognizerArray), array_N66344: { const array_N66344_array = allocator.alloc(?*AllMotionRecognizer, @intCast(size)) catch unreachable; @memset(array_N66344_array, null); break :array_N66344 array_N66344_array; });
        this.TOTAL_MINUS_ONE = size;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            this.motionRecognizerArray[@intCast(index)] = Inheritance.upcast(@TypeOf(this.motionRecognizerArray[@intCast(index)]), AllMotionRecognizer.create());
            }
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self, pointerId: i32) bool {
        if (pointerId > self.TOTAL_MINUS_ONE) {
            const message: ?*String = String.literal("Log that the pointer Ids are not what would be expected or Android has more than what I set my stuff to support pointerId: ");
            _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ String.plus(message, pointerId), self });
            return false;
        } else {
            return true;
        }
    }
    

    pub fn process(self: *Self, motionEvent: ?*MotionEvent) void {
        { // try
            const action: i32 = motionEvent.?.getAction();
            var total: i32 = @as(i32, @intCast(self.motionRecognizerArray.len));
            if (total > motionEvent.?.getPointerCount()) {
                total = motionEvent.?.getPointerCount();
            } else {
                const message: ?*String = String.literal("Log that Android has more pointers than I have expected so increase it motionEvent.getPointerCount(): ");
                _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ String.plus(message, motionEvent.?.getPointerCount()), self });
            }
            const totalMinusOne: i32 = total - 1;
            if (action == MotionEvent.ACTION_DOWN) {
                {
                    var pointerIndex: i32 = totalMinusOne;
                    while (pointerIndex >= 0) : (pointerIndex -= 1) {
                    const pointerId: i32 = Inheritance.call(motionEvent.?, "getPointerId", .{ pointerIndex });
                    if (Inheritance.call(self, "isValid", .{ pointerId })) {
                        const scalableListener: ?*ScalableListener = Inheritance.upcast(?*ScalableListener, self.displayInfo.?.getScalableListener());
                        const x: i32 = @as(i32, @intCast(((divide_N68520: { const left_N68520 = (Inheritance.call(motionEvent.?, "getX", .{ pointerIndex }) - self.displayInfo.?.getLeft()); const right_N68520 = Inheritance.call(scalableListener.?, "getRatio", .{ self.displayInfo.?.getRatio() }); break :divide_N68520 if (comptime @typeInfo(@TypeOf(left_N68520)) == .int or @TypeOf(left_N68520) == comptime_int) @divTrunc(left_N68520, right_N68520) else left_N68520 / right_N68520; }))));
                        const y: i32 = @as(i32, @intCast(((divide_N68660: { const left_N68660 = (Inheritance.call(motionEvent.?, "getY", .{ pointerIndex }) - self.displayInfo.?.getTop()); const right_N68660 = Inheritance.call(scalableListener.?, "getRatio", .{ self.displayInfo.?.getRatio() }); break :divide_N68660 if (comptime @typeInfo(@TypeOf(left_N68660)) == .int or @TypeOf(left_N68660) == comptime_int) @divTrunc(left_N68660, right_N68660) else left_N68660 / right_N68660; }))));
                        _ = Inheritance.call(self.motionRecognizerArray[@intCast(pointerId)].?, "processStartMotionEvent", .{ x, y, motionEvent.?.getDeviceId(), 0 });
                    }
                    }
                }
            } else if (action == MotionEvent.ACTION_UP or action == MotionEvent.ACTION_CANCEL) {
                {
                    var pointerIndex: i32 = totalMinusOne;
                    while (pointerIndex >= 0) : (pointerIndex -= 1) {
                    const pointerId: i32 = Inheritance.call(motionEvent.?, "getPointerId", .{ pointerIndex });
                    if (Inheritance.call(self, "isValid", .{ pointerId })) {
                        const scalableListener: ?*ScalableListener = Inheritance.upcast(?*ScalableListener, self.displayInfo.?.getScalableListener());
                        const x: i32 = @as(i32, @intCast(((divide_N67933: { const left_N67933 = (Inheritance.call(motionEvent.?, "getX", .{ pointerIndex }) - self.displayInfo.?.getLeft()); const right_N67933 = Inheritance.call(scalableListener.?, "getRatio", .{ self.displayInfo.?.getRatio() }); break :divide_N67933 if (comptime @typeInfo(@TypeOf(left_N67933)) == .int or @TypeOf(left_N67933) == comptime_int) @divTrunc(left_N67933, right_N67933) else left_N67933 / right_N67933; }))));
                        const y: i32 = @as(i32, @intCast(((divide_N68073: { const left_N68073 = (Inheritance.call(motionEvent.?, "getY", .{ pointerIndex }) - self.displayInfo.?.getTop()); const right_N68073 = Inheritance.call(scalableListener.?, "getRatio", .{ self.displayInfo.?.getRatio() }); break :divide_N68073 if (comptime @typeInfo(@TypeOf(left_N68073)) == .int or @TypeOf(left_N68073) == comptime_int) @divTrunc(left_N68073, right_N68073) else left_N68073 / right_N68073; }))));
                        _ = Inheritance.call(self.motionRecognizerArray[@intCast(pointerId)].?, "processEndMotionEvent", .{ x, y, motionEvent.?.getDeviceId(), 0 });
                    }
                    }
                }
            } else if (action == MotionEvent.ACTION_MOVE) {
                {
                    var pointerIndex: i32 = totalMinusOne;
                    while (pointerIndex >= 0) : (pointerIndex -= 1) {
                    const pointerId: i32 = Inheritance.call(motionEvent.?, "getPointerId", .{ pointerIndex });
                    if (Inheritance.call(self, "isValid", .{ pointerId })) {
                        const scalableListener: ?*ScalableListener = Inheritance.upcast(?*ScalableListener, self.displayInfo.?.getScalableListener());
                        const x: i32 = @as(i32, @intCast(((divide_N67350: { const left_N67350 = (Inheritance.call(motionEvent.?, "getX", .{ pointerIndex }) - self.displayInfo.?.getLeft()); const right_N67350 = Inheritance.call(scalableListener.?, "getRatio", .{ self.displayInfo.?.getRatio() }); break :divide_N67350 if (comptime @typeInfo(@TypeOf(left_N67350)) == .int or @TypeOf(left_N67350) == comptime_int) @divTrunc(left_N67350, right_N67350) else left_N67350 / right_N67350; }))));
                        const y: i32 = @as(i32, @intCast(((divide_N67490: { const left_N67490 = (Inheritance.call(motionEvent.?, "getY", .{ pointerIndex }) - self.displayInfo.?.getTop()); const right_N67490 = Inheritance.call(scalableListener.?, "getRatio", .{ self.displayInfo.?.getRatio() }); break :divide_N67490 if (comptime @typeInfo(@TypeOf(left_N67490)) == .int or @TypeOf(left_N67490) == comptime_int) @divTrunc(left_N67490, right_N67490) else left_N67490 / right_N67490; }))));
                        _ = Inheritance.call(self.motionRecognizerArray[@intCast(pointerId)].?, "processDraggedMotionEvent", .{ x, y, motionEvent.?.getDeviceId(), 0 });
                    }
                    }
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS, e });
    }
};

