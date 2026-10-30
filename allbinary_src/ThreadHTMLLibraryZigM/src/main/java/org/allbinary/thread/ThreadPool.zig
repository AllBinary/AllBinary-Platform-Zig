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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const NullRunnable = @import("org/allbinary/thread/NullRunnable.zig").NullRunnable;
const PriorityRunnable = @import("org/allbinary/thread/PriorityRunnable.zig").PriorityRunnable;
const ThreadObjectUtil = @import("org/allbinary/thread/ThreadObjectUtil.zig").ThreadObjectUtil;
const ThreadPoolStrings = @import("org/allbinary/thread/ThreadPoolStrings.zig").ThreadPoolStrings;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const ThreadPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thread.ThreadPool";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    NULL_RUNNABLE: ?*NullRunnable = null,
    threadPoolStrings: ?*ThreadPoolStrings = null,
    threadObjectUtil: ?*ThreadObjectUtil = null,
    isAlive: bool = false,
    taskQueue: ?*BasicArrayList = null,
    numThreads: i32 = 0,
    runningTask: bool = false,
    currentPriorityRunnable: ?*PriorityRunnable = null,
    pub const NORMAL_PRIORITY: i32 = 5;

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.NULL_RUNNABLE = Inheritance.upcast(?*NullRunnable, NullRunnable.getInstance());
        this.threadPoolStrings = Inheritance.upcast(?*ThreadPoolStrings, ThreadPoolStrings.getInstance());
        this.threadObjectUtil = Inheritance.upcast(?*ThreadObjectUtil, ThreadObjectUtil.getInstance());
        this.isAlive = false;
        this.taskQueue = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.numThreads = 0;
        this.runningTask = false;
        this.currentPriorityRunnable = Inheritance.upcast(?*PriorityRunnable, this.threadObjectUtil.?.NULL_PRIORITY_RUNNABLE);
    }
    

    pub fn create3(poolName: ?*String, numThreads: i32, priority: i32) *Self {
        _ = poolName;
        _ = numThreads;
        _ = priority;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn runAPriorityTask(self: *Self) void {
        if (!Inheritance.receiver(self.currentPriorityRunnable.?, "isDone").isDone()) {
            _ = Inheritance.receiver(self.currentPriorityRunnable.?, "run").run();
        } else {
            const runnable: ?*Runnable = Inheritance.upcast(?*Runnable, self.getTask());
            if (Object.same(runnable, self.NULL_RUNNABLE)) {
                return;
            }
            self.currentPriorityRunnable = Inheritance.cast(?*PriorityRunnable, runnable);
            if (!(Object.same(self.currentPriorityRunnable, self.threadObjectUtil.?.NULL_PRIORITY_RUNNABLE))) {
                _ = Inheritance.receiver(self.currentPriorityRunnable.?, "reset").reset();
                _ = Inheritance.receiver(self.currentPriorityRunnable.?, "run").run();
            }
        }
    }
    

    // throws Exception
    pub fn runATask(self: *Self) void {
        const runnable: ?*Runnable = Inheritance.upcast(?*Runnable, self.getTask());
        if (runnable != null) {
            _ = runnable.?.run();
        }
    }
    

    pub fn init(self: *Self) void {
        if (!self.isAlive) {
            self.isAlive = true;
            self.taskQueue = Inheritance.upcast(@TypeOf(self.taskQueue), BasicArrayListD.create());
        }
    }
    

    pub fn runTaskWithPriority(self: *Self, task: ?*PriorityRunnable) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
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
                if (runnable.?.getPriority() > Inheritance.receiver(task.?, "getPriority").getPriority()) {
                    lowerPriorityRunnable = Inheritance.upcast(@TypeOf(lowerPriorityRunnable), runnable);
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
        }
    }
    

    pub fn runTask(self: *Self, task: ?*Runnable) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (!self.isAlive) {
            _ = self.init();
        }
        if (task != null) {
            _ = Inheritance.call(self.taskQueue.?, "add", .{ task });
        }
    }
    

    // throws InterruptedException
    pub fn getTask(self: *Self) ?*Runnable {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (self.taskQueue.?.isEmpty()) {
            return Inheritance.upcast(?*Runnable, self.NULL_RUNNABLE);
        }
        return Inheritance.cast(?*Runnable, Inheritance.call(self.taskQueue.?, "removeAt", .{ 0 }));
    }
    

    pub fn clear(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = self.taskQueue.?.clear();
    }
    

    pub fn close(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (self.isAlive) {
            self.isAlive = false;
            _ = self.taskQueue.?.clear();
            self.currentPriorityRunnable = Inheritance.upcast(@TypeOf(self.currentPriorityRunnable), self.threadObjectUtil.?.NULL_PRIORITY_RUNNABLE);
        }
    }
    

    pub fn join(self: *Self) void {
        self.isAlive = false;
        _ = self.taskQueue.?.clear();
        self.currentPriorityRunnable = Inheritance.upcast(@TypeOf(self.currentPriorityRunnable), self.threadObjectUtil.?.NULL_PRIORITY_RUNNABLE);
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
            self.currentPriorityRunnable = Inheritance.upcast(@TypeOf(self.currentPriorityRunnable), self.threadObjectUtil.?.NULL_PRIORITY_RUNNABLE);
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
};

