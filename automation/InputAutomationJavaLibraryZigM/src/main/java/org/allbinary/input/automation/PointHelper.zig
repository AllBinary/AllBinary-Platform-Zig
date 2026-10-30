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
// package org.allbinary.input.automation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PointFactory = @import("org/allbinary/input/automation/PointFactory.zig").PointFactory;

pub const PointHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.PointHelper";
    const two: f64 = 2.0;
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getCenterPoint(rectangle: ?*Rectangle) ?*Point {
        const x: f64 = rectangle.?.getX() + (divide_N65693: { const left_N65693 = rectangle.?.getWidth(); const right_N65693 = PointHelper.two; break :divide_N65693 if (comptime @typeInfo(@TypeOf(left_N65693)) == .int or @TypeOf(left_N65693) == comptime_int) @divTrunc(left_N65693, right_N65693) else left_N65693 / right_N65693; });
        const y: f64 = rectangle.?.getY() + (divide_N65774: { const left_N65774 = rectangle.?.getHeight(); const right_N65774 = PointHelper.two; break :divide_N65774 if (comptime @typeInfo(@TypeOf(left_N65774)) == .int or @TypeOf(left_N65774) == comptime_int) @divTrunc(left_N65774, right_N65774) else left_N65774 / right_N65774; });
        return Inheritance.upcast(?*Point, Inheritance.callStatic(PointFactory, "getInstance", .{ @as(i32, @intFromFloat(x)), @as(i32, @intFromFloat(y)) }));
    }
};

