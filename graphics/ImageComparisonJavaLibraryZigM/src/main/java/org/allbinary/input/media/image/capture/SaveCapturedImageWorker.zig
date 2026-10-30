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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const CapturedImageInputOutput = @import("org/allbinary/input/media/image/capture/CapturedImageInputOutput.zig").CapturedImageInputOutput;
const CapturedImageWorkerResultsEvent = @import("org/allbinary/input/media/image/capture/CapturedImageWorkerResultsEvent.zig").CapturedImageWorkerResultsEvent;
const CapturedImageWorkerResultsListener = @import("org/allbinary/input/media/image/capture/CapturedImageWorkerResultsListener.zig").CapturedImageWorkerResultsListener;

pub const SaveCapturedImageWorker = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.media.image.capture.SaveCapturedImageWorker";
    pub const java_interfaces = .{ CapturedImageWorkerResultsListener };
    base: BasicEventHandler = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    running: bool = false,
    capturedImageWorkerResultsEventVector: ?*BasicArrayList = null,
    // Implements CapturedImageWorkerResultsListener

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.running = false;
        this.capturedImageWorkerResultsEventVector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        this.initFields();
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
    

    pub fn onCaptureEvent(self: *Self, capturedImageEvent: ?*CapturedImageWorkerResultsEvent) void {
        _ = Inheritance.call(self.capturedImageWorkerResultsEventVector.?, "add", .{ capturedImageEvent });
        _ = self.run();
    }
    

    pub fn onEvent(self: *Self, allBinaryEventObject: ?*AllBinaryEventObject) void {
        _ = Inheritance.call(self, "onCaptureEvent", .{ Inheritance.cast(?*CapturedImageWorkerResultsEvent, allBinaryEventObject) });
    }
    

    pub fn run(self: *Self) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.RUN });
            _ = Inheritance.call(self, "setRunning", .{ true });
            const timeHelper: ?*TimeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 1000 });
            _ = timeHelper.?.setStartTimeTNT();
            const capturedImageWorkerResultsEvent: ?*CapturedImageWorkerResultsEvent = Inheritance.upcast(?*CapturedImageWorkerResultsEvent, (Inheritance.cast(?*CapturedImageWorkerResultsEvent, Inheritance.call(self.capturedImageWorkerResultsEventVector.?, "get", .{ 0 }))));
            const screenBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.receiver(capturedImageWorkerResultsEvent.?, "getBufferedImage").getBufferedImage());
            _ = Inheritance.call(CapturedImageInputOutput.create(), "save", .{ screenBufferedImage, Inheritance.receiver(capturedImageWorkerResultsEvent.?, "getFrame").getFrame() });
            _ = Inheritance.call(self.capturedImageWorkerResultsEventVector.?, "remove", .{ capturedImageWorkerResultsEvent });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ CommonLabels.getInstance().?.ELAPSED + timeHelper.?.getElapsedTNT(), self, self.commonStrings.?.RUN });
            _ = Inheritance.call(self, "setRunning", .{ false });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END, self, self.commonStrings.?.RUN });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
    }
};

