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
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const FrameUtil = @import("org/allbinary/math/FrameUtil.zig").FrameUtil;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const AngleIncrementInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.math.AngleIncrementInfo";
    angleIncrement: i16 = 0,
    DOWN_FRAME: ?*Integer = null,
    UP_FRAME: ?*Integer = null,
    LEFT_FRAME: ?*Integer = null,
    RIGHT_FRAME: ?*Integer = null,
    frameUtil: ?*FrameUtil = null,
    const INCREMENT: ?*String = String.literal("Inc: ");

    fn initFields(this: *Self) void {
        
        
        
        
        
        this.frameUtil = Inheritance.upcast(?*FrameUtil, FrameUtil.getInstance());
    }
    

    pub fn create1(angleIncrement: i16) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.angleIncrement = angleIncrement;
        const angleFactory: ?*AngleFactory = Inheritance.upcast(?*AngleFactory, AngleFactory.getInstance());
        const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
        this.DOWN_FRAME = Inheritance.upcast(@TypeOf(this.DOWN_FRAME), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ (divide_N66103: { const left_N66103 = Inheritance.receiverOf(angleFactory.?.DOWN.?, "getValue").getValue(); const right_N66103 = this.angleIncrement; break :divide_N66103 if (comptime @typeInfo(@TypeOf(left_N66103)) == .int or @TypeOf(left_N66103) == comptime_int) @divTrunc(left_N66103, right_N66103) else left_N66103 / right_N66103; }) }));
        this.UP_FRAME = Inheritance.upcast(@TypeOf(this.UP_FRAME), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ @as(i32, @intCast(Inheritance.receiverOf(angleFactory.?.UP.?, "getValue").getValue())) }));
        this.LEFT_FRAME = Inheritance.upcast(@TypeOf(this.LEFT_FRAME), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ (divide_N66253: { const left_N66253 = Inheritance.receiverOf(angleFactory.?.LEFT.?, "getValue").getValue(); const right_N66253 = this.angleIncrement; break :divide_N66253 if (comptime @typeInfo(@TypeOf(left_N66253)) == .int or @TypeOf(left_N66253) == comptime_int) @divTrunc(left_N66253, right_N66253) else left_N66253 / right_N66253; }) }));
        this.RIGHT_FRAME = Inheritance.upcast(@TypeOf(this.RIGHT_FRAME), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ (divide_N66332: { const left_N66332 = Inheritance.receiverOf(angleFactory.?.RIGHT.?, "getValue").getValue(); const right_N66332 = this.angleIncrement; break :divide_N66332 if (comptime @typeInfo(@TypeOf(left_N66332)) == .int or @TypeOf(left_N66332) == comptime_int) @divTrunc(left_N66332, right_N66332) else left_N66332 / right_N66332; }) }));
        return this;
    }
    

    pub fn getFrameAngle(self: *Self, frame: i32) i32 {
        return Inheritance.call(self.frameUtil.?, "getFrameAngle", .{ frame, @as(i32, @intCast(self.angleIncrement)) });
    }
    

    pub fn getAngleIncrement(self: *Self) i16 {
        return self.angleIncrement;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ AngleIncrementInfo.INCREMENT }).?, "appendshort", .{ self.angleIncrement }))));
    }
    

    pub fn getClosestGeneralDirection(self: *Self, angle: i16) i32 {
        var closestDirection: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 360 }));
        if (self.UP_FRAME.?.intValue() - angle < closestDirection.?.intValue() - angle) {
            closestDirection = self.UP_FRAME;
        }
        if (self.DOWN_FRAME.?.intValue() - angle < closestDirection.?.intValue() - angle) {
            closestDirection = self.DOWN_FRAME;
        }
        if (self.LEFT_FRAME.?.intValue() - angle < closestDirection.?.intValue() - angle) {
            closestDirection = self.LEFT_FRAME;
        }
        if (self.RIGHT_FRAME.?.intValue() - angle < closestDirection.?.intValue() - angle) {
            closestDirection = self.RIGHT_FRAME;
        }
        return closestDirection.?.intValue();
    }
};

