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
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;

pub const NoTimeDelayHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.time.NoTimeDelayHelper";
    base: TimeDelayHelper = undefined,
    pub var SINGLETON: ?*NoTimeDelayHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = NoTimeDelayHelper.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 0 }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isTimeTNT(self: *Self) bool {
        _ = self;
        return true;
    }
    

    pub fn isTimeSinceTNT(self: *Self, delay: i32) bool {
        _ = delay;
        _ = self;
        return true;
    }
    

    pub fn isTime(self: *Self, currentTime: i64) bool {
        _ = currentTime;
        _ = self;
        return true;
    }
    

    pub fn isTimeSince(self: *Self, delay: i32, currentTime: i64) bool {
        _ = delay;
        _ = currentTime;
        _ = self;
        return true;
    }
};

