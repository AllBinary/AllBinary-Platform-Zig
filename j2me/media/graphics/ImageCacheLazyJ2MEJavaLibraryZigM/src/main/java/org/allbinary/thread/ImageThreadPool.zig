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
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ThreadPool = @import("org/allbinary/thread/ThreadPool.zig").ThreadPool;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

//This is mainly for network communications.
pub const ImageThreadPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thread.ImageThreadPool";
    base: ThreadPool = undefined,
    logUtil: ?*LogUtil = null,
    var instance: ?*ThreadPool = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?*ThreadPool, Inheritance.callStatic(ImageThreadPool, "create3", .{ String.literal("ImageLoader"), 1, ThreadPool.NORMAL_PRIORITY }));
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*ThreadPool {
        return Inheritance.upcast(?*ThreadPool, ImageThreadPool.instance);
    }
    

    pub fn create3(poolName: ?*String, numThreads: i32, priority: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ThreadPool, "create3", .{ poolName, numThreads, priority }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn runTask(self: *Self, task: ?*Runnable) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(&self.base, "runTask", .{ task });
    }
    

    pub fn startTask(self: *Self, task: ?*Runnable) void {
        _ = task;
        _ = self;
    }
    

    pub fn completedTask(self: *Self, task: ?*Runnable) void {
        _ = task;
        _ = self;
    }
};

