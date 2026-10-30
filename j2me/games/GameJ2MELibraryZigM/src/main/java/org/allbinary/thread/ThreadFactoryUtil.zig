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
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const RunnableCanvas = @import("org/allbinary/canvas/RunnableCanvas.zig").RunnableCanvas;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const DemoCanvas = @import("org/allbinary/game/displayable/canvas/DemoCanvas.zig").DemoCanvas;
const GameCanvasRunnableInterface = @import("org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.zig").GameCanvasRunnableInterface;
const RunnableCanvasSingleThreadStartRunnable = @import("org/allbinary/game/displayable/canvas/RunnableCanvasSingleThreadStartRunnable.zig").RunnableCanvasSingleThreadStartRunnable;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABRunnable = @import("org/allbinary/thread/ABRunnable.zig").ABRunnable;
const PrimaryThreadPool = @import("org/allbinary/thread/PrimaryThreadPool.zig").PrimaryThreadPool;
const ThreadPool = @import("org/allbinary/thread/ThreadPool.zig").ThreadPool;
const Thread = @import("java/lang/Thread.zig").Thread;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const ThreadFactoryUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thread.ThreadFactoryUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*ThreadFactoryUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ThreadFactoryUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ThreadFactoryUtil {
        return Inheritance.upcast(?*ThreadFactoryUtil, ThreadFactoryUtil.instance);
    }
    

    pub fn getInstanceGameCanvasRunnable(self: *Self, runnable: ?*GameCanvasRunnableInterface) ?*Thread {
        return Inheritance.upcast(?*Thread, Inheritance.call(self, "getInstanceType", .{ runnable, Inheritance.receiver(runnable.?, "getType").getType() }));
    }
    

    pub fn getInstanceForRunnable(self: *Self, runnable: ?*ABRunnable) ?*Thread {
        return Inheritance.upcast(?*Thread, Inheritance.call(self, "getInstanceType", .{ runnable, Inheritance.receiver(runnable.?, "getType").getType() }));
    }
    

    pub fn getInstanceType(self: *Self, runnable: ?*Runnable, @"type": i32) ?*Thread {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        if (J2MEUtil.isHTML()) {
            if (@"type" == DemoCanvas.TYPE or @"type" == AllBinaryGameCanvas.TYPE) {
                const demoGameSingleThreadStartRunnable: ?*RunnableCanvasSingleThreadStartRunnable = Inheritance.callStatic(RunnableCanvasSingleThreadStartRunnable, "create1", .{ Inheritance.cast(?*RunnableCanvas, runnable) });
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ runnable }) }))), self, commonStrings.?.CONSTRUCTOR });
                const primaryThreadPool: ?*ThreadPool = Inheritance.upcast(?*ThreadPool, PrimaryThreadPool.getInstance());
                _ = Inheritance.call(primaryThreadPool.?, "runTask", .{ demoGameSingleThreadStartRunnable });
            } else {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Using Pseudo Thread for Runnable under PlayN/HTML5: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ runnable }) }))), self, commonStrings.?.CONSTRUCTOR });
                const primaryThreadPool: ?*ThreadPool = Inheritance.upcast(?*ThreadPool, PrimaryThreadPool.getInstance());
                _ = Inheritance.call(primaryThreadPool.?, "runTask", .{ runnable });
            }
        }
        const thread: ?*Thread = Inheritance.callStatic(Thread, "create2", .{ runnable, Object.toString(Object.of(runnable)) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(thread)), self, commonStrings.?.CONSTRUCTOR });
        return thread;
    }
    

    pub fn start(self: *Self, thread: ?*Thread) void {
        _ = self;
        _ = thread.?.start();
    }
};

