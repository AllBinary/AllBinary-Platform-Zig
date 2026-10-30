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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const System = @import("java/lang/System.zig").System;
const Long = @import("java/lang/Long.zig").Long;

pub const TimeDelayHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.time.TimeDelayHelper";
    startTime: i64 = 0,
    elapsedTimeAtPause: i64 = 0,
    delay: i32 = 0,

    fn initFields(this: *Self) void {
        this.startTime = @as(i64, @intCast(-1));
        this.elapsedTimeAtPause = @as(i64, std.math.minInt(i64));
        
    }
    

    pub fn create1(delay: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.delay = delay;
        _ = this.setStartTimeTNT();
        return this;
    }
    

    pub fn isTimeTNT(self: *Self) bool {
        const currentTime: i64 = std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds();
        if (currentTime - self.startTime > @as(i64, @intCast(self.delay))) {
            self.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    pub fn isTimeSinceTNT(self: *Self, delay: i32) bool {
        const currentTime: i64 = std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds();
        if (currentTime - self.startTime > @as(i64, @intCast(delay))) {
            self.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    pub fn isTime(self: *Self, currentTime: i64) bool {
        if (currentTime - self.startTime > @as(i64, @intCast(self.delay))) {
            self.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    pub fn isTimeWithoutReset(self: *Self, currentTime: i64) bool {
        if (currentTime - self.startTime > @as(i64, @intCast(self.delay))) {
            return true;
        }
        return false;
    }
    

    pub fn isTimeSince(self: *Self, delay: i32, currentTime: i64) bool {
        _ = delay;
        if (currentTime - self.startTime > @as(i64, @intCast(self.delay))) {
            self.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    pub fn getElapsedTNT(self: *Self) i64 {
        return std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds() - self.startTime;
    }
    

    pub fn getElapsed(self: *Self, currentTime: i64) i64 {
        return currentTime - self.startTime;
    }
    

    pub fn isElapsed(self: *Self, currentTime: i64, time: i64) bool {
        if (Inheritance.call(self, "getElapsed", .{ currentTime }) > time) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn isElapsedTNT(self: *Self, time: i64) bool {
        if (self.getElapsedTNT() > time) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn setStartTime(self: *Self, startTime: i64) void {
        self.startTime = startTime;
    }
    

    pub fn getStartTime(self: *Self) i64 {
        return self.startTime;
    }
    

    pub fn setStartTimeTNT(self: *Self) void {
        self.startTime = std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds();
    }
    

    pub fn pause(self: *Self) void {
        self.elapsedTimeAtPause = self.getElapsedTNT();
        self.startTime = @as(i64, std.math.maxInt(i64));
    }
    

    pub fn @"resume"(self: *Self) bool {
        if (self.elapsedTimeAtPause != @as(i64, std.math.minInt(i64))) {
            self.startTime = std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds() + self.elapsedTimeAtPause;
            self.elapsedTimeAtPause = @as(i64, std.math.minInt(i64));
            _ = self.setStartTimeTNT();
            return true;
        }
        return false;
    }
    

    pub fn toStringAt(self: *Self, currentTime: i64) ?*String {
        const elapsed: i64 = Inheritance.call(self, "getElapsed", .{ currentTime });
        if (elapsed > 0) {
            const commonLabels: ?*CommonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
            const elapsedAsString: ?*String = Inheritance.upcast(?*String, String.valueOf(elapsed));
            return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ commonLabels.?.START }).?, "appendlong", .{ self.startTime }).?, "append", .{ commonLabels.?.CURRENT }).?, "appendlong", .{ currentTime }).?, "append", .{ commonLabels.?.ELAPSED }).?, "append", .{ elapsedAsString }))));
        } else {
            return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        }
    }
    

    pub fn toString(self: *Self) ?*String {
        const currentTime: i64 = std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds();
        const elapsed: i64 = Inheritance.call(self, "getElapsed", .{ currentTime });
        if (elapsed > 0) {
            const commonLabels: ?*CommonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
            const elapsedAsString: ?*String = Inheritance.upcast(?*String, String.valueOf(elapsed));
            return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ commonLabels.?.START }).?, "appendlong", .{ self.startTime }).?, "append", .{ commonLabels.?.CURRENT }).?, "appendlong", .{ currentTime }).?, "append", .{ commonLabels.?.ELAPSED }).?, "append", .{ elapsedAsString }))));
        } else {
            return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        }
    }
};

