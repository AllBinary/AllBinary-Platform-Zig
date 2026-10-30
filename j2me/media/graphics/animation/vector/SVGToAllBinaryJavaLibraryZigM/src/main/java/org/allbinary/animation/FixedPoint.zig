// Generated Code Do Not Modify
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const FixedPoint = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.FixedPoint";
    ONE: i32 = 0,
    var instance: ?*FixedPoint = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FixedPoint.create();
    }

    fn initFields(this: *Self) void {
        this.ONE = 1 << @intCast(16);
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*FixedPoint {
        return Inheritance.upcast(?*FixedPoint, FixedPoint.instance);
    }
    

    pub fn toFixed(self: *Self, val: f64) i32 {
        _ = self;
        return @as(i32, @intFromFloat((val * 65536.0)));
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn toFixed(self: *Self, val: f32) i32 {
        _ = self;
        return @as(i32, @intFromFloat((val * 65536.0)));
    }
    

    pub fn mul(self: *Self, a: i32, b: i32) i32 {
        _ = self;
        return @as(i32, @intCast(((@as(i64, @intCast(a)) * @as(i64, @intCast(b))) >> @intCast(16))));
    }
    

    pub fn div(self: *Self, a: i32, b: i32) i32 {
        _ = self;
        return @as(i32, @intCast((@divTrunc(((@as(i64, @intCast(a))) << @intCast(16)), @as(i64, @intCast(b))))));
    }
    

    pub fn toInt(self: *Self, fixed: i32) i32 {
        _ = self;
        return fixed >> @intCast(16);
    }
};

