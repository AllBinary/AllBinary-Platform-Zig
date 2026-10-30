// Generated Code Do Not Modify
// package org.allbinary.time

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Calendar = @import("java/util/Calendar.zig").Calendar;
// const TimeZone = @import("java/util/TimeZone.zig").TimeZone;

pub const TimeTypeUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.time.TimeTypeUtil";
    NIGHT: ?*String = null,
    DAY: ?*String = null,
    var instance: ?*TimeTypeUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TimeTypeUtil.create();
    }

    fn initFields(this: *Self) void {
        this.NIGHT = String.literal("Night");
        this.DAY = String.literal("Day");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*TimeTypeUtil {
        return Inheritance.upcast(?*TimeTypeUtil, TimeTypeUtil.instance);
    }
    

    pub fn isNight(self: *Self) bool {
        const hoursOfDay: i32 = self.getHourOfDay();
        return hoursOfDay < 6 or hoursOfDay > 18;
    }
    

    pub fn getHourOfDay(self: *Self) i32 {
        _ = self;
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        return Inheritance.call(calendar.?, "get", .{ Calendar.HOUR_OF_DAY });
    }
    

    pub fn getNightOrDay(self: *Self) ?*String {
        return Inheritance.upcast(?*String, (if (self.isNight()) self.NIGHT else self.DAY));
    }
    

    pub fn getHourOfDay1(self: *Self, timeInMillis: i64) i32 {
        _ = self;
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        _ = Inheritance.call(calendar.?, "setTimeInMillis", .{ timeInMillis });
        return Inheritance.call(calendar.?, "get", .{ Calendar.HOUR_OF_DAY });
    }
    

    pub fn isNight1(self: *Self, timeInMillis: i64) bool {
        const hoursOfDay: i32 = Inheritance.call(self, "getHourOfDay", .{ timeInMillis });
        return hoursOfDay < 6 or hoursOfDay > 18;
    }
    

    pub fn getNightOrDay1(self: *Self, timeInMillis: i64) ?*String {
        return Inheritance.upcast(?*String, (if (Inheritance.call(self, "isNight", .{ timeInMillis })) self.NIGHT else self.DAY));
    }
};

