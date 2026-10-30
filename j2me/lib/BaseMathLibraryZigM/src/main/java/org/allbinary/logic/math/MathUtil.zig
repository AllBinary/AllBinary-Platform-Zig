// Generated Code Do Not Modify
// package org.allbinary.logic.math

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;

pub const MathUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.MathUtil";
    ACCURACY: i32 = 0,
    var instance: ?*MathUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MathUtil.create();
    }

    fn initFields(this: *Self) void {
        this.ACCURACY = 100;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*MathUtil {
        return Inheritance.upcast(?*MathUtil, MathUtil.instance);
    }
    

    pub fn getTotalDigits(self: *Self, digitsParameter: i32) i32 {
        var digits = digitsParameter;
        _ = self;
        var total: i32 = 0;
        while (digits > 0) {
            digits = @divTrunc(digits, 10);
            total += 1;
        }
        return total;
    }
    

    pub fn sqrt(self: *Self, value: i32) i32 {
        _ = self;
        if (value <= 1) {
            return value;
        }
        var accumulated: i32 = value >> @intCast(1);
        var result: i32 = (accumulated + (@divTrunc(value, accumulated))) >> @intCast(1);
        while (true) {
            accumulated = result;
            result = (accumulated + (@divTrunc(value, accumulated))) >> @intCast(1);
            if (!(accumulated > result)) break;
        }
        return accumulated;
    }
    

    pub fn sqrtd(self: *Self, x: i32) f64 {
        if (x == 0) {
            return @as(f64, @floatCast(0.0));
        }
        if (x < 0) {
            return @as(f64, @floatCast(-1.0));
        }
        var result: f64 = @as(f64, @floatFromInt(x));
        {
            var index: i32 = 0;
            while (index < self.ACCURACY) : (index += 1) {
            result = (result + (@divTrunc(@as(f64, @floatFromInt(x)), result))) / 2.0;
            }
        }
        return result;
    }
    

    pub fn abs(self: *Self, value: i32) i32 {
        _ = self;
        return (if ((value < 0)) -value else value);
    }
    

    pub fn abslong(self: *Self, value: i64) i64 {
        _ = self;
        return (if ((value < 0)) -value else value);
    }
    

    pub fn min(self: *Self, value: i32, value2: i32) i32 {
        _ = self;
        return (if ((value <= value2)) value else value2);
    }
    

    pub fn max(self: *Self, value: i32, value2: i32) i32 {
        _ = self;
        return (if ((value >= value2)) value else value2);
    }
};

