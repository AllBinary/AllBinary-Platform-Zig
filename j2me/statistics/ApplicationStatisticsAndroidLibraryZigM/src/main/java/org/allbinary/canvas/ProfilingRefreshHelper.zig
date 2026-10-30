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
// package org.allbinary.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const View = @import("android/view/View.zig").View;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AndroidGameStatistics = @import("org/allbinary/canvas/AndroidGameStatistics.zig").AndroidGameStatistics;
const System = @import("java/lang/System.zig").System;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const ProfilingRefreshHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.canvas.ProfilingRefreshHelper";
    base: AndroidGameStatistics = undefined,
    firstTime: bool = false,
    bestFrameProcessingTime: i32 = 0,
    worstFrameProcessingTime: i32 = 0,
    frameProcessingTimeElapsed: i64 = 0,
    var instance: ?*ProfilingRefreshHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ProfilingRefreshHelper.create();
    }

    fn initFields(this: *Self) void {
        this.firstTime = true;
        this.bestFrameProcessingTime = 0;
        this.worstFrameProcessingTime = 0;
        this.frameProcessingTimeElapsed = 0;
    }
    

    pub fn getInstance() ?*AndroidGameStatistics {
        return Inheritance.upcast(?*AndroidGameStatistics, ProfilingRefreshHelper.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = AndroidGameStatistics.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initView(self: *Self, view: ?*View) void {
        _ = Inheritance.call(&self.base, "initView", .{ view });
        self.frameProcessingTimeElapsed = Inheritance.receiverOf(Inheritance.receiver(self, "getTimeDelayHelper").getTimeDelayHelper().?, "getStartTime").getStartTime();
        self.bestFrameProcessingTime = @as(i32, std.math.maxInt(i32));
        self.worstFrameProcessingTime = 0;
    }
    

    pub fn nextFrame(self: *Self) void {
        self.frameProcessingTimeElapsed = std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds() - self.frameProcessingTimeElapsed;
        if (self.firstTime != true) {
            if (self.frameProcessingTimeElapsed > @as(i64, @intCast(self.worstFrameProcessingTime))) {
                self.worstFrameProcessingTime = @as(i32, @intCast(self.frameProcessingTimeElapsed));
            }
            if (self.frameProcessingTimeElapsed < @as(i64, @intCast(self.bestFrameProcessingTime))) {
                self.bestFrameProcessingTime = @as(i32, @intCast(self.frameProcessingTimeElapsed));
            }
        } else {
            self.firstTime = false;
        }
        _ = self.base.nextFrame();
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.base.toString() }).?, "append", .{ String.literal(" Worst: ") }).?, "appendint", .{ self.worstFrameProcessingTime }).?, "append", .{ String.literal(" Best: ") }).?, "appendint", .{ self.bestFrameProcessingTime }))));
    }
};

