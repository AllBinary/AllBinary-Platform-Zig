// Generated Code Do Not Modify
// package org.allbinary.time

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Calendar = @import("java/util/Calendar.zig").Calendar;
const Assertions = @import("org/junit/jupiter/api/Assertions.zig").Assertions;
const DisplayName = @import("org/junit/jupiter/api/DisplayName.zig").DisplayName;
const Test = @import("org/junit/jupiter/api/Test.zig").Test;

pub const TimeTypeTest = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.time.TimeTypeTest";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn millisForHourLocal(hour: i32) i64 {
        const cal: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        _ = Inheritance.call(cal.?, "set", .{ Calendar.HOUR_OF_DAY, hour });
        _ = Inheritance.call(cal.?, "set", .{ Calendar.MINUTE, 0 });
        _ = Inheritance.call(cal.?, "set", .{ Calendar.SECOND, 0 });
        _ = Inheritance.call(cal.?, "set", .{ Calendar.MILLISECOND, 0 });
        return cal.?.getTimeInMillis();
    }
    

    pub fn isNight_returnsTrue_for_hours_less_than_6(self: *Self) void {
        _ = self;
        for (@constCast(&[_]i32{ 0, 1, 2, 3, 4, 5 })[0..]) |h| {
            const util: ?*TimeTypeUtil = Inheritance.upcast(?*TimeTypeUtil, Inheritance.callStatic(TestableTimeTypeUtil, "create1", .{ h }));
            _ = Inheritance.callStatic(Assertions, "assertTrue", .{ util.?.isNight(), String.plus(String.literal("Expected night for hour="), h) });
        }
    }
    

    pub fn isNight_returnsTrue_for_hours_greater_than_18(self: *Self) void {
        _ = self;
        for (@constCast(&[_]i32{ 19, 20, 21, 22, 23 })[0..]) |h| {
            const util: ?*TimeTypeUtil = Inheritance.upcast(?*TimeTypeUtil, Inheritance.callStatic(TestableTimeTypeUtil, "create1", .{ h }));
            _ = Inheritance.callStatic(Assertions, "assertTrue", .{ util.?.isNight(), String.plus(String.literal("Expected night for hour="), h) });
        }
    }
    

    pub fn isNight_returnsFalse_for_boundary_hours_6_and_18(self: *Self) void {
        _ = self;
        for (@constCast(&[_]i32{ 6, 18 })[0..]) |h| {
            const util: ?*TimeTypeUtil = Inheritance.upcast(?*TimeTypeUtil, Inheritance.callStatic(TestableTimeTypeUtil, "create1", .{ h }));
            _ = Inheritance.callStatic(Assertions, "assertFalse", .{ util.?.isNight(), String.plus(String.literal("Expected day for boundary hour="), h) });
        }
    }
    

    pub fn getNightOrDay_returns_expected_label(self: *Self) void {
        _ = self;
        const nightUtil: ?*TimeTypeUtil = Inheritance.upcast(?*TimeTypeUtil, Inheritance.callStatic(TestableTimeTypeUtil, "create1", .{ 0 }));
        _ = Inheritance.callStatic(Assertions, "assertEquals", .{ nightUtil.?.NIGHT, nightUtil.?.getNightOrDay() });
        const dayUtil: ?*TimeTypeUtil = Inheritance.upcast(?*TimeTypeUtil, Inheritance.callStatic(TestableTimeTypeUtil, "create1", .{ 12 }));
        _ = Inheritance.callStatic(Assertions, "assertEquals", .{ dayUtil.?.DAY, dayUtil.?.getNightOrDay() });
    }
    

    pub fn getHourOfDay_long_converts_epoch_to_local_hour(self: *Self) void {
        _ = self;
        const util: ?*TimeTypeUtil = TimeTypeUtil.create();
        for (@constCast(&[_]i32{ 0, 6, 12, 18, 23 })[0..]) |h| {
            const millis: i64 = Inheritance.callStatic(TimeTypeTest, "millisForHourLocal", .{ h });
            _ = Inheritance.callStatic(Assertions, "assertEquals", .{ h, Inheritance.call(util.?, "getHourOfDay", .{ millis }), String.plus(String.literal("Hour mismatch for h="), h) });
        }
    }
    

    pub fn isNight_long_expected_ranges(self: *Self) void {
        _ = self;
        const util: ?*TimeTypeUtil = TimeTypeUtil.create();
        for (@constCast(&[_]i32{ 0, 1, 2, 3, 4, 5, 19, 20, 21, 22, 23 })[0..]) |h| {
            const millis: i64 = Inheritance.callStatic(TimeTypeTest, "millisForHourLocal", .{ h });
            _ = Inheritance.callStatic(Assertions, "assertTrue", .{ Inheritance.call(util.?, "isNight", .{ millis }), String.plus(String.literal("Expected night for hour="), h) });
        }
        for (@constCast(&[_]i32{ 6, 7, 12, 18 })[0..]) |h| {
            const millis: i64 = Inheritance.callStatic(TimeTypeTest, "millisForHourLocal", .{ h });
            _ = Inheritance.callStatic(Assertions, "assertFalse", .{ Inheritance.call(util.?, "isNight", .{ millis }), String.plus(String.literal("Expected day for hour="), h) });
        }
    }
    

    pub fn getNightOrDay_long_consistency(self: *Self) void {
        _ = self;
        const util: ?*TimeTypeUtil = TimeTypeUtil.create();
        const nightMillis: i64 = Inheritance.callStatic(TimeTypeTest, "millisForHourLocal", .{ 0 });
        const dayMillis: i64 = Inheritance.callStatic(TimeTypeTest, "millisForHourLocal", .{ 12 });
        _ = Inheritance.callStatic(Assertions, "assertEquals", .{ util.?.NIGHT, Inheritance.call(util.?, "getNightOrDay", .{ nightMillis }) });
        _ = Inheritance.callStatic(Assertions, "assertEquals", .{ util.?.DAY, Inheritance.call(util.?, "getNightOrDay", .{ dayMillis }) });
    }
    

    pub fn boundaries_day_for_long_based_api(self: *Self) void {
        _ = self;
        const util: ?*TimeTypeUtil = TimeTypeUtil.create();
        for (@constCast(&[_]i32{ 6, 18 })[0..]) |h| {
            const millis: i64 = Inheritance.callStatic(TimeTypeTest, "millisForHourLocal", .{ h });
            _ = Inheritance.callStatic(Assertions, "assertFalse", .{ Inheritance.call(util.?, "isNight", .{ millis }) });
            _ = Inheritance.callStatic(Assertions, "assertEquals", .{ util.?.DAY, Inheritance.call(util.?, "getNightOrDay", .{ millis }) });
        }
    }
    

    pub fn constants_accessible_and_stable(self: *Self) void {
        _ = self;
        const util: ?*TimeTypeUtil = TimeTypeUtil.create();
        _ = Inheritance.callStatic(Assertions, "assertEquals", .{ String.literal("Night"), util.?.NIGHT });
        _ = Inheritance.callStatic(Assertions, "assertEquals", .{ String.literal("Day"), util.?.DAY });
    }
    

    pub fn getInstance_returns_same_singleton(self: *Self) void {
        _ = self;
        const a: ?*TimeTypeUtil = Inheritance.upcast(?*TimeTypeUtil, TimeTypeUtil.getInstance());
        const b: ?*TimeTypeUtil = Inheritance.upcast(?*TimeTypeUtil, TimeTypeUtil.getInstance());
        _ = Inheritance.callStatic(Assertions, "assertSame", .{ a, b });
    }
    pub const TestableTimeTypeUtil = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.time.TestableTimeTypeUtil";
        base: TimeTypeUtil = undefined,
        hour: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(hour: i32) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = TimeTypeUtil.create().*;
            this.initFields();
            this.hour = hour;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        pub fn getHourOfDay(self: *Self) i32 {
            return self.hour;
        }
    };
};

