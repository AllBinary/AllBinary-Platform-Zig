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
// package org.allbinary.input.automation.module

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CaptureWorkerInterface = @import("org/allbinary/input/media/image/capture/CaptureWorkerInterface.zig").CaptureWorkerInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ImageComparisonWorker = @import("org/allbinary/media/image/comparison/ImageComparisonWorker.zig").ImageComparisonWorker;
const MotionRectanglesWorker = @import("org/allbinary/media/image/comparison/motion/MotionRectanglesWorker.zig").MotionRectanglesWorker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const RunnableInterface = @import("org/allbinary/thread/RunnableInterface.zig").RunnableInterface;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const InputAutomationActionInterface = @import("org/allbinary/input/automation/module/InputAutomationActionInterface.zig").InputAutomationActionInterface;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const AbstractInputAutomationWorker = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.AbstractInputAutomationWorker";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    index: i64 = 0,
    running: bool = false,
    inputAutomationActionInterface: ?*InputAutomationActionInterface = null,
    captureWorkerInterface: ?*CaptureWorkerInterface = null,
    imageComparisonWorker: ?*ImageComparisonWorker = null,
    motionRectanglesWorker: ?*MotionRectanglesWorker = null,
    captureThread: ?*Thread = null,
    // Implements RunnableInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.index = 0;
        this.running = false;
        this.inputAutomationActionInterface = null;
        this.captureWorkerInterface = null;
        this.imageComparisonWorker = null;
        this.motionRectanglesWorker = null;
        this.captureThread = null;
    }
    

    pub fn create1(inputAutomationActionInterface: ?*InputAutomationActionInterface) *Self {
        _ = inputAutomationActionInterface;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn setThread(self: *Self, thread: ?*Thread) void {
        _ = thread;
        _ = self;
    }
    

    pub fn isRunning(self: *Self) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return self.running;
    }
    

    pub fn setRunning(self: *Self, running: bool) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        self.running = running;
    }
    

    pub fn isAnyDataWorkerRunning(self: *Self) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (self.captureThread != null and (self.captureThread.?.isAlive() or Inheritance.receiverOf(self.getCaptureWorker().?, "isRunning").isRunning() or Inheritance.receiverOf(self.getMotionRectanglesWorker().?, "isRunning").isRunning() or Inheritance.receiverOf(self.getImageComparisonWorker().?, "isRunning").isRunning())) {
            return true;
        }
        return false;
    }
    

    // throws Exception
    pub fn startDataWorkers(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (!self.isAnyDataWorkerRunning()) {
            self.captureThread = Inheritance.callStatic(Thread, "create1", .{ self.getCaptureWorker() });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Starting CaptureWorkers - Need more images - Thread State: "), Object.toString(Object.of(self.captureThread.?.getState()))), self, String.literal("startCaptureWorkers") });
            _ = self.captureThread.?.start();
        }
    }
    

    // throws Exception
    pub fn waitForDataWorkers(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        while (self.isAnyDataWorkerRunning()) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Waiting"), self, self.commonStrings.?.RUN });
            _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(250), .awake) catch {});
        }
    }
    

    // throws Exception
    pub fn stopDataWorkers(self: *Self) void {
        _ = Inheritance.call(self.getCaptureWorker().?, "setRunning", .{ false });
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn run(self: *Self) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.RUN });
            _ = Inheritance.call(self, "setRunning", .{ true });
            const timeHelper: ?*TimeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 1000 });
            while (self.isRunning()) {
                _ = timeHelper.?.setStartTimeTNT();
                _ = self.process();
                self.index += 1;
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(CommonLabels.getInstance().?.ELAPSED + timeHelper.?.getElapsedTNT(), String.literal(" Index: ")), self.index), self, self.commonStrings.?.RUN });
            }
            _ = self.stopDataWorkers();
            _ = self.waitForDataWorkers();
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END, self, self.commonStrings.?.RUN });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
    }
    

    pub fn getInputAutomationActionInterface(self: *Self) ?*InputAutomationActionInterface {
        return self.inputAutomationActionInterface;
    }
    

    pub fn setInputAutomationActionInterface(self: *Self, inputAutomationActionInterface: ?*InputAutomationActionInterface) void {
        self.inputAutomationActionInterface = inputAutomationActionInterface;
    }
    

    pub fn getCaptureWorker(self: *Self) ?*CaptureWorkerInterface {
        return self.captureWorkerInterface;
    }
    

    pub fn setCaptureWorker(self: *Self, captureWorkerInterface: ?*CaptureWorkerInterface) void {
        self.captureWorkerInterface = captureWorkerInterface;
    }
    

    pub fn getImageComparisonWorker(self: *Self) ?*ImageComparisonWorker {
        return self.imageComparisonWorker;
    }
    

    pub fn setImageComparisonWorker(self: *Self, imageComparisonWorker: ?*ImageComparisonWorker) void {
        self.imageComparisonWorker = imageComparisonWorker;
    }
    

    pub fn getMotionRectanglesWorker(self: *Self) ?*MotionRectanglesWorker {
        return self.motionRectanglesWorker;
    }
    

    pub fn setMotionRectanglesWorker(self: *Self, motionRectanglesWorker: ?*MotionRectanglesWorker) void {
        self.motionRectanglesWorker = motionRectanglesWorker;
    }
};

