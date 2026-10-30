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
// package org.allbinary.logic.communication.java.vm.stats

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Long = @import("java/lang/Long.zig").Long;
const Thread = @import("java/lang/Thread.zig").Thread;
const Runtime = @import("java/lang/Runtime.zig").Runtime;

pub const JvmStatistics = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.java.vm.stats.JvmStatistics";
    runtime: ?*Runtime = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.runtime = Inheritance.upcast(@TypeOf(this.runtime), Runtime.getRuntime());
        return this;
    }
    

    pub fn getFreeMemoryBytes(self: *Self) i64 {
        return self.runtime.?.freeMemory();
    }
    

    pub fn getFreeMemoryKilobytes(self: *Self) i64 {
        return @divTrunc(self.getFreeMemoryBytes(), 1024);
    }
    

    pub fn getFreeMemoryMegabytes(self: *Self) i64 {
        return @divTrunc(self.getFreeMemoryKilobytes(), 1024);
    }
    

    pub fn getMaxMemoryBytes(self: *Self) i64 {
        return self.runtime.?.maxMemory();
    }
    

    pub fn getMaxMemoryKilobytes(self: *Self) i64 {
        return @divTrunc(self.getMaxMemoryBytes(), 1024);
    }
    

    pub fn getMaxMemoryMegabytes(self: *Self) i64 {
        return @divTrunc(self.getMaxMemoryKilobytes(), 1024);
    }
    

    pub fn getTotalMemoryBytes(self: *Self) i64 {
        return self.runtime.?.totalMemory();
    }
    

    pub fn getTotalMemoryKilobytes(self: *Self) i64 {
        return @divTrunc(self.getTotalMemoryBytes(), 1024);
    }
    

    pub fn getTotalMemoryMegabytes(self: *Self) i64 {
        return @divTrunc(self.getTotalMemoryKilobytes(), 1024);
    }
    

    pub fn getFreeMemoryBytesLong(self: *Self) ?*Long {
        return Inheritance.callStatic(Long, "create1", .{ self.getFreeMemoryBytes() });
    }
    

    pub fn getFreeMemoryKilobytesLong(self: *Self) ?*Long {
        return Inheritance.callStatic(Long, "create1", .{ self.getFreeMemoryKilobytes() });
    }
    

    pub fn getFreeMemoryMegabytesLong(self: *Self) ?*Long {
        return Inheritance.callStatic(Long, "create1", .{ self.getFreeMemoryMegabytes() });
    }
    

    pub fn getMaxMemoryBytesLong(self: *Self) ?*Long {
        return Inheritance.callStatic(Long, "create1", .{ self.getMaxMemoryBytes() });
    }
    

    pub fn getMaxMemoryKilobytesLong(self: *Self) ?*Long {
        return Inheritance.callStatic(Long, "create1", .{ self.getMaxMemoryKilobytes() });
    }
    

    pub fn getMaxMemoryMegabytesLong(self: *Self) ?*Long {
        return Inheritance.callStatic(Long, "create1", .{ self.getMaxMemoryMegabytes() });
    }
    

    pub fn getTotalMemoryBytesLong(self: *Self) ?*Long {
        return Inheritance.callStatic(Long, "create1", .{ self.getTotalMemoryBytes() });
    }
    

    pub fn getTotalMemoryKilobytesLong(self: *Self) ?*Long {
        return Inheritance.callStatic(Long, "create1", .{ self.getTotalMemoryKilobytes() });
    }
    

    pub fn getTotalMemoryMegabytesLong(self: *Self) ?*Long {
        return Inheritance.callStatic(Long, "create1", .{ self.getTotalMemoryMegabytes() });
    }
    

    pub fn getFreeMemoryBytesString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.getFreeMemoryBytesLong())));
    }
    

    pub fn getFreeMemoryKilobytesString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.getFreeMemoryKilobytesLong())));
    }
    

    pub fn getFreeMemoryMegabytesString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.getFreeMemoryMegabytesLong())));
    }
    

    pub fn getMaxMemoryBytesString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.getMaxMemoryBytesLong())));
    }
    

    pub fn getMaxMemoryKilobytesString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.getMaxMemoryKilobytesLong())));
    }
    

    pub fn getMaxMemoryMegabytesString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.getMaxMemoryMegabytesLong())));
    }
    

    pub fn getTotalMemoryBytesString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.getTotalMemoryBytesLong())));
    }
    

    pub fn getTotalMemoryKilobytesString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.getTotalMemoryKilobytesLong())));
    }
    

    pub fn getTotalMemoryMegabytesString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.getTotalMemoryMegabytesLong())));
    }
    

    pub fn getNumberOfThreads(self: *Self) i64 {
        _ = self;
        return Thread.activeCount();
    }
    

    pub fn getNumberOfThreadsLong(self: *Self) ?*Long {
        return Inheritance.callStatic(Long, "create1", .{ self.getNumberOfThreads() });
    }
    

    pub fn getNumberOfThreadsString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.getNumberOfThreadsLong())));
    }
    

    pub fn collectGarbage(self: *Self) void {
        _ = self.runtime.?.gc();
    }
};

