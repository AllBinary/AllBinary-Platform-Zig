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
// package org.allbinary.logic.math.vector

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NoDecimalTrigTable = @import("org/allbinary/math/NoDecimalTrigTable.zig").NoDecimalTrigTable;

pub const AxisMathVectorUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.vector.AxisMathVectorUtil";
    noDecimalTrigTable: ?*NoDecimalTrigTable = null,
    var instance: ?*AxisMathVectorUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AxisMathVectorUtil.create();
    }

    fn initFields(this: *Self) void {
        this.noDecimalTrigTable = Inheritance.upcast(?*NoDecimalTrigTable, NoDecimalTrigTable.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*AxisMathVectorUtil {
        return Inheritance.upcast(?*AxisMathVectorUtil, AxisMathVectorUtil.instance);
    }
    

    pub fn calculateX(self: *Self, magnitude: i64, angle: i32) i64 {
        return (divide_N65778: { const left_N65778 = magnitude * Inheritance.call(self.noDecimalTrigTable.?, "cos", .{ angle }); const right_N65778 = 10; break :divide_N65778 if (comptime @typeInfo(@TypeOf(left_N65778)) == .int or @TypeOf(left_N65778) == comptime_int) @divTrunc(left_N65778, right_N65778) else left_N65778 / right_N65778; });
    }
    

    pub fn calculateY(self: *Self, magnitude: i64, angle: i32) i64 {
        return (divide_N65889: { const left_N65889 = magnitude * Inheritance.call(self.noDecimalTrigTable.?, "sin", .{ angle }); const right_N65889 = 10; break :divide_N65889 if (comptime @typeInfo(@TypeOf(left_N65889)) == .int or @TypeOf(left_N65889) == comptime_int) @divTrunc(left_N65889, right_N65889) else left_N65889 / right_N65889; });
    }
    

    pub fn calculateZ(self: *Self, magnitude: i64, otherAngle: i32) i64 {
        return (divide_N66000: { const left_N66000 = magnitude * Inheritance.call(self.noDecimalTrigTable.?, "sin", .{ otherAngle }); const right_N66000 = 10; break :divide_N66000 if (comptime @typeInfo(@TypeOf(left_N66000)) == .int or @TypeOf(left_N66000) == comptime_int) @divTrunc(left_N66000, right_N66000) else left_N66000 / right_N66000; });
    }
};

