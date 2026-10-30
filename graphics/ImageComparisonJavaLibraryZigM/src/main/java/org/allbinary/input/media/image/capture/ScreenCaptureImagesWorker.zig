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
// package org.allbinary.input.media.image.capture

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const BufferedImageFrameCacheable = @import("org/allbinary/media/image/cache/BufferedImageFrameCacheable.zig").BufferedImageFrameCacheable;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const CaptureWorkerInterface = @import("org/allbinary/input/media/image/capture/CaptureWorkerInterface.zig").CaptureWorkerInterface;
const CapturedBufferedImagesCacheSingleton = @import("org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton.zig").CapturedBufferedImagesCacheSingleton;
const CapturedImageWorkerResultsEvent = @import("org/allbinary/input/media/image/capture/CapturedImageWorkerResultsEvent.zig").CapturedImageWorkerResultsEvent;
const ProcessingFrameIndexFactory = @import("org/allbinary/input/media/image/capture/ProcessingFrameIndexFactory.zig").ProcessingFrameIndexFactory;
const ScreenScavangerRobot = @import("org/allbinary/input/media/image/capture/ScreenScavangerRobot.zig").ScreenScavangerRobot;
const Long = @import("java/lang/Long.zig").Long;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const ScreenCaptureImagesWorker = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker";
    pub const java_interfaces = .{ CaptureWorkerInterface };
    base: BasicEventHandler = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    running: bool = false,
    screenScavangerRobot: ?*ScreenScavangerRobot = null,
    // Implements CaptureWorkerInterface
    var index: i64 = undefined;

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.running = false;
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        this.initFields();
        this.screenScavangerRobot = ScreenScavangerRobot.create();
        ScreenCaptureImagesWorker.index = Inheritance.upcast(@TypeOf(ScreenCaptureImagesWorker.index), ProcessingFrameIndexFactory.next());
        Inheritance.bindOverrides(this);
        return this;
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
    

    // throws Exception
    pub fn setThread(self: *Self, thread: ?*Thread) void {
        _ = thread;
        _ = self;
    }
    

    pub fn run(self: *Self) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.RUN });
            _ = Inheritance.call(self, "setRunning", .{ true });
            const timeHelper: ?*TimeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 1000 });
            while (self.isRunning()) {
                _ = timeHelper.?.setStartTimeTNT();
                const bufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, self.screenScavangerRobot.?.getScreenAsBufferedImages()[@intCast(0)]);
                const frame: ?*Long = Inheritance.callStatic(Long, "create1", .{ ScreenCaptureImagesWorker.index });
                ScreenCaptureImagesWorker.index += 1;
                _ = Inheritance.call(CapturedBufferedImagesCacheSingleton.getInstance().?, "add", .{ Inheritance.callStatic(BufferedImageFrameCacheable, "create2", .{ bufferedImage, frame }) });
                const capturedImageEvent: ?*CapturedImageWorkerResultsEvent = Inheritance.callStatic(CapturedImageWorkerResultsEvent, "create3", .{ self, frame, bufferedImage });
                _ = Inheritance.call(self, "fireEvent", .{ capturedImageEvent });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ CommonLabels.getInstance().?.ELAPSED + timeHelper.?.getElapsedTNT(), self, self.commonStrings.?.RUN });
                _ = Inheritance.call(self, "setRunning", .{ false });
            }
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END, self, self.commonStrings.?.RUN });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
    }
};

