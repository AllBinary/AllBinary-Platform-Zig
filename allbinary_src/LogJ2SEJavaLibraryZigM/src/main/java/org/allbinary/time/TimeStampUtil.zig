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
// package org.allbinary.time

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const SimpleDateFormat = @import("java/text/SimpleDateFormat.zig").SimpleDateFormat;
const Calendar = @import("java/util/Calendar.zig").Calendar;
const Date = @import("java/util/Date.zig").Date;

//ActualPlatform
pub const TimeStampUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.time.TimeStampUtil";
    simpleDataFormat: ?*SimpleDateFormat = null,
    var instance: ?*TimeStampUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TimeStampUtil.create();
    }

    fn initFields(this: *Self) void {
        this.simpleDataFormat = Inheritance.callStatic(SimpleDateFormat, "create1", .{ String.literal("yyyy-MM-dd HH:mm:ss.SSS") });
    }
    

    pub fn getInstance() ?*TimeStampUtil {
        return Inheritance.upcast(?*TimeStampUtil, TimeStampUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getAsString(self: *Self) ?*String {
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const date: ?*Date = Inheritance.upcast(?*Date, calendar.?.getTime());
        return Inheritance.upcast(?*String, Inheritance.call(self.simpleDataFormat.?, "format", .{ date }));
    }
};

