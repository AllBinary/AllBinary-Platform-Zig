// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
const System = @import("java/lang/System.zig").System;
const Long = @import("java/lang/Long.zig").Long;

pub const GameTickTimeDelayHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.time.GameTickTimeDelayHelper";
    timeDelta: i64 = 0,
    startTime: i64 = 0,
    lastStartTime: i64 = 0,

    fn initFields(this: *Self) void {
        this.timeDelta = 0;
        
        
    }
    

    pub fn create1(startTime: i64) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.startTime = startTime;
        this.lastStartTime = 0;
        return this;
    }
    

    pub fn setStartTime(self: *Self) i64 {
        self.startTime = std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds();
        return self.startTime;
    }
    

    pub fn loop(self: *Self) void {
        if (self.lastStartTime == @as(i64, std.math.minInt(i64))) {
            self.timeDelta = 0;
        } else {
            self.timeDelta = std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds() - self.lastStartTime;
        }
    }
    

    pub fn getTimeFromStart(self: *Self) i64 {
        return self.startTime - self.lastStartTime;
    }
};

