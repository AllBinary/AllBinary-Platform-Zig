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
// package org.allbinary.thread

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const ThreadPool = @import("org/allbinary/thread/ThreadPool.zig").ThreadPool;
const System = @import("java/lang/System.zig").System;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

//This is mainly for network communications.
pub const SecondaryThreadPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thread.SecondaryThreadPool";
    base: ThreadPool = undefined,
    var instance: ?*ThreadPool = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?*ThreadPool, Inheritance.callStatic(SecondaryThreadPool, "create3", .{ String.literal("Secondary"), 1, ThreadPool.NORMAL_PRIORITY }));
    }
    

    pub fn getInstance() ?*ThreadPool {
        return Inheritance.upcast(?*ThreadPool, SecondaryThreadPool.instance);
    }
    

    pub fn create3(poolName: ?*String, numThreads: i32, priority: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ThreadPool, "create3", .{ poolName, numThreads, priority }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn runTask(self: *Self, task: ?*Runnable) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ task }) }).?, "appendlong", .{ @as(i64, @intCast(std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds())) }))), self, Inheritance.fieldPointer(self, "threadPoolStrings").*.?.ADD_TASK });
        _ = Inheritance.call(&self.base, "runTask", .{ task });
    }
    

    pub fn startTask(self: *Self, task: ?*Runnable) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "threadPoolStrings").*.?.START_TASK }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ task }) }).?, "appendlong", .{ @as(i64, @intCast(std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds())) }))), self, Inheritance.fieldPointer(self, "commonStrings").*.?.RUN });
    }
    

    pub fn completedTask(self: *Self, task: ?*Runnable) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "threadPoolStrings").*.?.COMPLETE_TASK }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ task }) }).?, "appendlong", .{ @as(i64, @intCast(std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds())) }))), self, Inheritance.fieldPointer(self, "commonStrings").*.?.RUN });
    }
};

