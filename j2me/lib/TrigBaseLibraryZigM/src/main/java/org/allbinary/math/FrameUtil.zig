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
// package org.allbinary.math

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;

pub const FrameUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.math.FrameUtil";
    var instance: ?*FrameUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FrameUtil.create();
    }
    

    pub fn getInstance() ?*FrameUtil {
        return Inheritance.upcast(?*FrameUtil, FrameUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getFrameForAngle(self: *Self, angle: i16, angleIncrement: i32) i32 {
        return @divTrunc(Inheritance.call(self, "adjustAngleToFrameAngle", .{ @as(i32, @intCast(angle)) }), angleIncrement);
    }
    

    pub fn getFrameAngle(self: *Self, frame: i32, angleIncrement: i32) i32 {
        const frameAngle: i32 = angleIncrement * frame - 90;
        return Inheritance.call(self, "adjustAngleToFrameAngle", .{ frameAngle });
    }
    

    pub fn adjustAngleToFrameAngle(self: *Self, currentAngleParameter: i32) i32 {
        var currentAngle = currentAngleParameter;
        _ = self;
        const angleFactory: ?*AngleFactory = Inheritance.upcast(?*AngleFactory, AngleFactory.getInstance());
        if (currentAngle > 359) {
            currentAngle = (currentAngle - angleFactory.?.TOTAL_ANGLE);
            while (currentAngle > 359) {
                currentAngle = (currentAngle - angleFactory.?.TOTAL_ANGLE);
            }
        }
        if (currentAngle < 0) {
            currentAngle = (currentAngle + angleFactory.?.TOTAL_ANGLE);
            while (currentAngle < 0) {
                currentAngle = (currentAngle + angleFactory.?.TOTAL_ANGLE);
            }
        }
        return currentAngle;
    }
};

