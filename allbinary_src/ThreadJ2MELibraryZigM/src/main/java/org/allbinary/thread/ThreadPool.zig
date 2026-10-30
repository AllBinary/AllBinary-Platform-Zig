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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const NullRunnable = @import("org/allbinary/thread/NullRunnable.zig").NullRunnable;
const PooledThread = @import("org/allbinary/thread/PooledThread.zig").PooledThread;
const PriorityRunnable = @import("org/allbinary/thread/PriorityRunnable.zig").PriorityRunnable;
const ThreadObjectUtil = @import("org/allbinary/thread/ThreadObjectUtil.zig").ThreadObjectUtil;
const ThreadPoolStrings = @import("org/allbinary/thread/ThreadPoolStrings.zig").ThreadPoolStrings;
const Thread = @import("java/lang/Thread.zig").Thread;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const ThreadPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thread.ThreadPool";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    NULL_RUNNABLE: ?*NullRunnable = null,
    threadPoolStrings: ?*ThreadPoolStrings = null,
    threadObjectUtil: ?*ThreadObjectUtil = null,
    poolName: ?*String = null,
    priority: i32 = 0,
    isAlive: bool = false,
    taskQueue: ?*BasicArrayList = null,
    threadID: i32 = 0,
    numThreads: i32 = 0,
    runningTask: bool = false,
    const ROOT_NAME: ?*String = String.literal("-PooledThread-");
    pub var NORMAL_PRIORITY: i32 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NORMAL_PRIORITY = Thread.NORM_PRIORITY;
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.NULL_RUNNABLE = Inheritance.upcast(?*NullRunnable, NullRunnable.getInstance());
        this.threadPoolStrings = Inheritance.upcast(?*ThreadPoolStrings, ThreadPoolStrings.getInstance());
        this.threadObjectUtil = Inheritance.upcast(?*ThreadObjectUtil, ThreadObjectUtil.getInstance());
        
        
        this.isAlive = false;
        this.taskQueue = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
        this.threadID = 0;
        
        this.runningTask = false;
    }
    

    pub fn create3(poolName: ?*String, numThreads: i32, priority: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.poolName = poolName;
        this.priority = priority;
        this.numThreads = numThreads;
        return this;
    }
    

    pub fn init(self: *Self) void {
        if (!self.isAlive) {
            self.isAlive = true;
            self.taskQueue = Inheritance.upcast(@TypeOf(self.taskQueue), BasicArrayListD.create());
            var pooledThread: ?*PooledThread = null;
            {
                var i: i32 = 0;
                while (i < self.numThreads) : (i += 1) {
                pooledThread = Inheritance.callStatic(PooledThread, "create1", .{ self });
                _ = Inheritance.call(pooledThread.?, "setPriority", .{ self.priority });
                _ = Inheritance.receiver(pooledThread.?, "start").start();
                }
            }
        }
    }
    

    // throws Exception
    pub fn runAPriorityTask(self: *Self) void {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn runTaskWithPriority(self: *Self, task: ?*PriorityRunnable) void {
        {
            const monitor_N66853 = Object.monitor(self).enter();
            defer monitor_N66853.exit();
            if (!self.isAlive) {
                _ = self.init();
            }
            if (task != null) {
                const size: i32 = self.taskQueue.?.size();
                var runnable: ?*PriorityRunnable = null;
                var lowerPriorityRunnable: ?*PriorityRunnable = Inheritance.upcast(?*PriorityRunnable, self.threadObjectUtil.?.NULL_PRIORITY_RUNNABLE);
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    runnable = Inheritance.cast(?*PriorityRunnable, Inheritance.call(self.taskQueue.?, "get", .{ index }));
                    if (Inheritance.receiver(runnable.?, "getPriority").getPriority() > Inheritance.receiver(task.?, "getPriority").getPriority()) {
                        lowerPriorityRunnable = runnable;
                        break;
                    }
                    }
                }
                if (Object.same(lowerPriorityRunnable, self.threadObjectUtil.?.NULL_PRIORITY_RUNNABLE)) {
                    _ = Inheritance.call(self.taskQueue.?, "add", .{ task });
                } else {
                    const index: i32 = Inheritance.call(self.taskQueue.?, "indexOf", .{ lowerPriorityRunnable });
                    _ = Inheritance.call(self.taskQueue.?, "addAt", .{ index, task });
                }
                _ = Object.monitor(self).notify();
            }
        }
    }
    

    pub fn runTask(self: *Self, task: ?*Runnable) void {
        {
            const monitor_N67540 = Object.monitor(self).enter();
            defer monitor_N67540.exit();
            if (!self.isAlive) {
                _ = self.init();
            }
            if (task != null) {
                _ = Inheritance.call(self.taskQueue.?, "add", .{ task });
                _ = Object.monitor(self).notify();
            }
        }
    }
    

    // throws InterruptedException
    pub fn getTask(self: *Self) ?*Runnable {
        {
            const monitor_N67728 = Object.monitor(self).enter();
            defer monitor_N67728.exit();
            while (self.taskQueue.?.size() == 0) {
                if (!self.isAlive) {
                    return Inheritance.upcast(?*Runnable, self.NULL_RUNNABLE);
                }
                _ = Object.monitor(self).wait(0);
            }
            const runnable: ?*Runnable = Inheritance.cast(?*Runnable, Inheritance.call(self.taskQueue.?, "removeAt", .{ 0 }));
            return Inheritance.upcast(?*Runnable, runnable);
        }
    }
    

    pub fn clear(self: *Self) void {
        {
            const monitor_N67963 = Object.monitor(self).enter();
            defer monitor_N67963.exit();
            if (self.isAlive) {
                _ = self.taskQueue.?.clear();
            }
        }
    }
    

    pub fn close(self: *Self) void {
        {
            const monitor_N68051 = Object.monitor(self).enter();
            defer monitor_N68051.exit();
            if (self.isAlive) {
                self.isAlive = false;
                _ = self.taskQueue.?.clear();
            }
        }
    }
    

    pub fn join(self: *Self) void {
        {
            const monitor_N68163 = Object.monitor(self).enter();
            defer monitor_N68163.exit();
            self.isAlive = false;
            _ = self.taskQueue.?.clear();
            _ = Object.monitor(self).notifyAll();
        }
    }
    

    pub fn isBusy(self: *Self) bool {
        if (!self.isAlive) {
            return false;
        }
        if (self.taskQueue.?.size() > 0) {
            return true;
        }
        if (self.runningTask) {
            return true;
        }
        return false;
    }
    

    pub fn threadStarted(self: *Self) void {
        _ = self;
    }
    

    pub fn threadStopped(self: *Self) void {
        if (self.numThreads == 1) {
            self.isAlive = false;
            _ = self.taskQueue.?.clear();
        }
    }
    

    pub fn startTask(self: *Self, task: ?*Runnable) void {
        _ = task;
        _ = self;
    }
    

    pub fn completedTask(self: *Self, task: ?*Runnable) void {
        _ = task;
        _ = self;
    }
    

    pub fn createName(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.poolName }).?, "append", .{ ThreadPool.ROOT_NAME }).?, "appendint", .{ value_N68714: { const value_N68714_value = self.threadID; self.threadID += 1; break :value_N68714 value_N68714_value; } }))));
    }
};

