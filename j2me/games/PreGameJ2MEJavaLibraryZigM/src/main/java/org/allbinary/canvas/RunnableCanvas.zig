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
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const NullWaitGameRunnable = @import("org/allbinary/game/displayable/canvas/NullWaitGameRunnable.zig").NullWaitGameRunnable;
const MyCanvas = @import("org/allbinary/graphics/displayable/MyCanvas.zig").MyCanvas;
const ABSystemWrapper = @import("org/allbinary/logic/ABSystemWrapper.zig").ABSystemWrapper;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const NullThread = @import("org/allbinary/thread/NullThread.zig").NullThread;
const RunnableInterface = @import("org/allbinary/thread/RunnableInterface.zig").RunnableInterface;
const ThreadObjectUtil = @import("org/allbinary/thread/ThreadObjectUtil.zig").ThreadObjectUtil;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const RunnableCanvasRefreshHelper = @import("org/allbinary/canvas/RunnableCanvasRefreshHelper.zig").RunnableCanvasRefreshHelper;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const RunnableCanvas = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.canvas.RunnableCanvas";
    base: MyCanvas = undefined,
    nullUtil: ?*NullUtil = null,
    stdUtil: ?*StdUtil = null,
    systemWrapper: ?*ABSystemWrapper = null,
    tsUtil: ?*TsUtil = null,
    thread: ?*Thread = null,
    currentThread: ?*Thread = null,
    running: bool = false,
    loopTimeHelper: ?*TimeDelayHelper = null,
    runnableCanvasRefreshHelper: ?*Processor = null,
    commonLabels: ?*CommonLabels = null,
    threadObjectUtil: ?*ThreadObjectUtil = null,
    SET_RUNNING: ?*String = null,
    IS_RUNNING: ?*String = null,
    THREAD: ?*String = null,
    NOT_EQUAL: ?*String = null,
    PAUSE_SLEEP: ?*String = null,
    START_PAUSE: ?*String = null,
    END_PAUSE: ?*String = null,
    PROCESS_LOOP_SLEEP: ?*String = null,
    pauseWait: i64 = 0,
    notified: bool = false,
    // Implements RunnableInterface

    fn initFields(this: *Self) void {
        this.nullUtil = Inheritance.upcast(?*NullUtil, NullUtil.getInstance());
        this.stdUtil = Inheritance.upcast(?*StdUtil, StdUtil.getInstance());
        this.systemWrapper = Inheritance.upcast(?*ABSystemWrapper, ABSystemWrapper.getInstance());
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
        this.thread = Inheritance.upcast(?*Thread, NullThread.NULL_THREAD);
        this.currentThread = Inheritance.upcast(?*Thread, NullThread.NULL_THREAD);
        this.running = false;
        this.loopTimeHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ NullWaitGameRunnable.getInstance().?.WAIT });
        this.runnableCanvasRefreshHelper = Inheritance.upcast(?*Processor, Processor.getInstance());
        this.commonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
        this.threadObjectUtil = Inheritance.upcast(?*ThreadObjectUtil, ThreadObjectUtil.getInstance());
        this.SET_RUNNING = String.literal("setRunning");
        this.IS_RUNNING = String.literal("isRunning");
        this.THREAD = String.literal("Thread: ");
        this.NOT_EQUAL = String.literal(" != ");
        this.PAUSE_SLEEP = String.literal("pause sleep");
        this.START_PAUSE = String.literal("start pause - game thread sleep at: ");
        this.END_PAUSE = String.literal("end pause - game thread sleep at: ");
        this.PROCESS_LOOP_SLEEP = String.literal("processLoopSleep");
        this.pauseWait = 0;
        this.notified = false;
    }
    

    pub fn create3(commandListener: ?*CommandListener, childNameList: ?*BasicArrayList, hasParam: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(MyCanvas, "create2", .{ CommonStrings.getInstance().?.UNKNOWN, childNameList }).*;
        this.initFields();
        _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("RunnableCanvas delay: ") }).?, "appendint", .{ @as(i32, @intCast(this.loopTimeHelper.?.delay)) }))), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        this.runnableCanvasRefreshHelper = Inheritance.upcast(@TypeOf(this.runnableCanvasRefreshHelper), Inheritance.callStatic(RunnableCanvasRefreshHelper, "create1", .{ this }));
        if (commandListener != null) {
            _ = Inheritance.call(this, "initCommands", .{ commandListener });
        } else if (hasParam) {
            _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ String.literal("commandListener was null"), this, String.literal("initCommands") });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        _ = cmdListener;
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED, self, String.literal("initCommands") });
    }
    

    pub fn isMainCanvas(self: *Self) bool {
        if (Inheritance.receiver(self, "getCustomCommandListener").getCustomCommandListener() != null) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn setThread(self: *Self, thread: ?*Thread) void {
        self.thread = thread;
    }
    

    pub fn setRunning(self: *Self, running: bool) void {
        self.running = running;
        if (!self.running) {
            self.thread = Inheritance.upcast(@TypeOf(self.thread), NullThread.NULL_THREAD);
            {
                const monitor_N67638 = Object.monitor(self).enter();
                defer monitor_N67638.exit();
                _ = Inheritance.call(self.threadObjectUtil.?, "notifyObject", .{ self });
            }
        }
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.IS_RUNNING }).?, "appendboolean", .{ self.running }))), self, self.SET_RUNNING });
    }
    

    pub fn isRunning(self: *Self) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (Object.same(self.thread, self.currentThread)) {
            return self.running;
        } else {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.THREAD });
            if (self.thread != null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.thread)) });
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.NOT_EQUAL });
            if (self.currentThread != null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ self.currentThread }) });
            }
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.IS_RUNNING });
            return false;
        }
    }
    

    pub fn getLoopTimeHelperP(self: *Self) ?*TimeDelayHelper {
        return self.loopTimeHelper;
    }
    

    pub fn setWait(self: *Self, wait: i32) void {
        self.loopTimeHelper.?.delay = Inheritance.upcast(@TypeOf(self.loopTimeHelper.?.delay), wait);
        self.pauseWait = @as(i64, @intCast(wait)) * 3;
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("setWait - delay: ") }).?, "appendint", .{ @as(i32, @intCast(self.loopTimeHelper.?.delay)) }))), self, Inheritance.fieldPointer(self, "commonStrings").*.?.CONSTRUCTOR });
    }
    

    pub fn getWait(self: *Self) i32 {
        return self.loopTimeHelper.?.delay;
    }
    

    pub fn setCurrentThread(self: *Self) void {
        self.currentThread = Inheritance.upcast(@TypeOf(self.currentThread), Thread.currentThread());
    }
    

    pub fn setCurrentThreadFake(self: *Self) void {
        self.currentThread = self.thread;
    }
    

    pub fn showNotify(self: *Self) void {
        { // try
            _ = self.stopWaiting();
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("showNotify"), e });
    }
    

    // throws Exception
    pub fn stopWaiting(self: *Self) void {
        self.notified = true;
        {
            const monitor_N68973 = Object.monitor(self).enter();
            defer monitor_N68973.exit();
            _ = Inheritance.call(self.threadObjectUtil.?, "notifyObject", .{ self });
        }
        _ = Inheritance.receiver(self, "repaint").repaint();
    }
    

    // throws Exception
    pub fn waitOnNotify(self: *Self, wait: i64) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (!self.notified) {
            if (wait > 0) {
                _ = Inheritance.call(self.threadObjectUtil.?, "waitObjectFor", .{ self, wait });
            } else {
                _ = Inheritance.call(self.threadObjectUtil.?, "waitObject", .{ self });
            }
        }
    }
    

    // throws Exception
    pub fn processSleep(self: *Self) void {
        _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(self.pauseWait), .awake) catch {});
    }
    

    pub fn isPausable(self: *Self) bool {
        _ = self;
        return false;
    }
    

    // throws Exception
    pub fn processGameSleep(self: *Self, sleep: i64) void {
        _ = self;
        _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(sleep), .awake) catch {});
    }
    

    // throws Exception
    pub fn processLoopSleep(self: *Self) void {
        _ = self.runnableCanvasRefreshHelper.?.process();
        if (Inheritance.receiver(self, "isPaused").isPaused()) {
            const stringMaker: ?*StringMaker = StringMaker.create();
            if (self.isRunning() and !self.isSingleThread()) {
                _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                const currentTimeMillis: i64 = self.systemWrapper.?.currentTimeMillis();
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ self.START_PAUSE }).?, "appendlong", .{ currentTimeMillis }).?, "append", .{ self.PAUSE_SLEEP }).?, "appendlong", .{ self.pauseWait }))), self, self.PROCESS_LOOP_SLEEP });
                while (Inheritance.receiver(self, "isPaused").isPaused() and self.isRunning() and !self.isSingleThread()) {
                    _ = self.processSleep();
                    if (!self.isPausable()) {
                        _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ self.END_PAUSE }).?, "appendlong", .{ currentTimeMillis }))), self, self.PROCESS_LOOP_SLEEP });
                        return;
                    }
                }
            }
        }
        var elapsedTime: i64 = self.loopTimeHelper.?.getElapsedTNT();
        const wait: i64 = @as(i64, @intCast(self.loopTimeHelper.?.delay));
        if (elapsedTime > wait) {
            elapsedTime = wait;
        } else {
            _ = Inheritance.call(self, "processGameSleep", .{ wait - elapsedTime });
        }
    }
    

    pub fn isSingleThread(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn run(self: *Self) void {
        _ = self.setCurrentThread();
    }
    

    // throws Exception
    pub fn end2(self: *Self) void {
        _ = self;
    }
    

    pub fn getType(self: *Self) i32 {
        _ = self;
        return -1;
    }
};

