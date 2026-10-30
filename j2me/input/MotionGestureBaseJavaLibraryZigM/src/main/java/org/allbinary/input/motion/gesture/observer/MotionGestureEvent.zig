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
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const MotionGestureInput = @import("org/allbinary/input/motion/gesture/MotionGestureInput.zig").MotionGestureInput;
const TouchMotionGestureFactory = @import("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.zig").TouchMotionGestureFactory;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;

pub const MotionGestureEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.gesture.observer.MotionGestureEvent";
    base: AllBinaryEventObject = undefined,
    motionGesture: ?*MotionGestureInput = null,
    id: i32 = 0,
    previousPoint: ?*GPoint = null,
    currentPoint: ?*GPoint = null,
    commonLabels: ?*CommonLabels = null,
    const PREVIOUS: ?*String = String.literal(" Previous: ");
    const HASHCODE: ?*String = String.literal(" hashcode: ");

    fn initFields(this: *Self) void {
        this.motionGesture = Inheritance.upcast(?*MotionGestureInput, TouchMotionGestureFactory.getInstance().?.NO_MOTION);
        
        this.previousPoint = Inheritance.upcast(?*GPoint, PointFactory.getInstance().?.ZERO_ZERO);
        this.currentPoint = Inheritance.upcast(?*GPoint, PointFactory.getInstance().?.ZERO_ZERO);
        this.commonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
    }
    

    pub fn create3(source: ?Object, id: i32, motionGesture: ?*MotionGestureInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ source }).*;
        this.initFields();
        this.id = id;
        _ = Inheritance.call(this, "setMotionGesture", .{ motionGesture });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getMotionGesture(self: *Self) ?*MotionGestureInput {
        return self.motionGesture;
    }
    

    pub fn setMotionGesture(self: *Self, motionGesture: ?*MotionGestureInput) void {
        self.motionGesture = motionGesture;
    }
    

    pub fn getPreviousPoint(self: *Self) ?*GPoint {
        return self.previousPoint;
    }
    

    pub fn setPreviousPoint(self: *Self, previousPoint: ?*GPoint) void {
        self.previousPoint = previousPoint;
    }
    

    pub fn getCurrentPoint(self: *Self) ?*GPoint {
        return self.currentPoint;
    }
    

    pub fn setCurrentPoint(self: *Self, currentPoint: ?*GPoint) void {
        self.currentPoint = currentPoint;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ self.motionGesture }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonLabels.?.CURRENT });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ self.currentPoint }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ MotionGestureEvent.PREVIOUS });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ self.previousPoint }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ MotionGestureEvent.HASHCODE });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ self }))) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getId(self: *Self) i32 {
        return self.id;
    }
};

