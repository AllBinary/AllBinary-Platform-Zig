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
// package org.allbinary.debug

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Debug = @import("android/os/Debug.zig").Debug;
const DebugInterface = @import("org/allbinary/debug/DebugInterface.zig").DebugInterface;
const System = @import("java/lang/System.zig").System;
const Long = @import("java/lang/Long.zig").Long;

pub const AndroidDebug = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.debug.AndroidDebug";
    pub const java_interfaces = .{ DebugInterface };
    startTime: i64 = 0,
    running: bool = false,
    bufferSize: i32 = 0,
    // Implements DebugInterface

    fn initFields(this: *Self) void {
        this.startTime = @as(i64, std.math.maxInt(i64));
        this.running = false;
        this.bufferSize = 32 * 1024 * 1024;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn start(self: *Self) void {
        _ = Inheritance.call(self, "setStartTime", .{ std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds() });
        _ = Inheritance.callStatic(Debug, "startMethodTracing", .{ String.literal("trace"), self.bufferSize });
        _ = Inheritance.call(self, "setRunning", .{ true });
    }
    

    pub fn stop(self: *Self) void {
        self.startTime = @as(i64, std.math.maxInt(i64));
        _ = Debug.stopMethodTracing();
        _ = Inheritance.call(self, "setRunning", .{ false });
    }
    

    pub fn getMaxTime(self: *Self) i64 {
        _ = self;
        return 120000;
    }
    

    pub fn setStartTime(self: *Self, startTime: i64) void {
        self.startTime = startTime;
    }
    

    pub fn getStartTime(self: *Self) i64 {
        return self.startTime;
    }
    

    pub fn setRunning(self: *Self, running: bool) void {
        self.running = running;
    }
    

    pub fn isRunning(self: *Self) bool {
        return self.running;
    }
};

