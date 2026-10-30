// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ThreadObjectUtil = @import("org/allbinary/thread/ThreadObjectUtil.zig").ThreadObjectUtil;
const ThreadPool = @import("org/allbinary/thread/ThreadPool.zig").ThreadPool;
const Thread = @import("java/lang/Thread.zig").Thread;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const PooledThread = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thread.PooledThread";
    base: Thread = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    threadObjectUtil: ?*ThreadObjectUtil = null,
    threadPool: ?*ThreadPool = null,
    INTERRUPT_EXCEPTION: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.threadObjectUtil = Inheritance.upcast(?*ThreadObjectUtil, ThreadObjectUtil.getInstance());
        
        this.INTERRUPT_EXCEPTION = String.literal("Exit InterruptedException");
    }
    

    pub fn create1(threadPool: ?*ThreadPool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Thread, "create1", .{ threadPool.?.createName() }).*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.CONSTRUCTOR, this, this.commonStrings.?.CONSTRUCTOR });
        this.threadPool = threadPool;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn run(self: *Self) void {
        _ = self.threadPool.?.threadStarted();
        while (true) {
            var task2: ?*Runnable = Inheritance.upcast(?*Runnable, self.threadObjectUtil.?.NULL_PRIORITY_RUNNABLE);
            { // try
                task2 = Inheritance.upcast(@TypeOf(task2), self.threadPool.?.getTask());
                self.threadPool.?.runningTask = true;
                _ = Inheritance.call(self.threadPool.?, "startTask", .{ task2 });
            }
            // catch (InterruptedException ex):
//                 const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
//                 _ = Inheritance.call(logUtil.?, "putF", .{ self.INTERRUPT_EXCEPTION, self, self.commonStrings.?.RUN });
//                 break;
            if (Object.same(task2, self.threadObjectUtil.?.NULL_PRIORITY_RUNNABLE)) {
                break;
            }
            { // try
                _ = task2.?.run();
                _ = Inheritance.call(self.threadPool.?, "completedTask", .{ task2 });
                self.threadPool.?.runningTask = false;
            }
            // catch (Exception e):
//                 const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
//                 _ = Inheritance.call(logUtil.?, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.commonStrings.?.EXCEPTION_LABEL }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ task2 }) }))), self, self.commonStrings.?.RUN, e });
        }
        _ = self.threadPool.?.threadStopped();
    }
};

