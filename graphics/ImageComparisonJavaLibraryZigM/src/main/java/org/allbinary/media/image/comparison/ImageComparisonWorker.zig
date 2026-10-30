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
// package org.allbinary.media.image.comparison

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CapturedImageWorkerResultsEvent = @import("org/allbinary/input/media/image/capture/CapturedImageWorkerResultsEvent.zig").CapturedImageWorkerResultsEvent;
const CapturedImageWorkerResultsListener = @import("org/allbinary/input/media/image/capture/CapturedImageWorkerResultsListener.zig").CapturedImageWorkerResultsListener;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const ImageComparator = @import("org/allbinary/media/image/comparison/ImageComparator.zig").ImageComparator;
const ImageComparatorConstraintsInterface = @import("org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface.zig").ImageComparatorConstraintsInterface;
const ImageComparisonResult = @import("org/allbinary/media/image/comparison/ImageComparisonResult.zig").ImageComparisonResult;
const ImageComparisonResultCacheSingleton = @import("org/allbinary/media/image/comparison/ImageComparisonResultCacheSingleton.zig").ImageComparisonResultCacheSingleton;
const ImageComparisonResultFrameCacheable = @import("org/allbinary/media/image/comparison/ImageComparisonResultFrameCacheable.zig").ImageComparisonResultFrameCacheable;
const ImageComparisonResultsEvent = @import("org/allbinary/media/image/comparison/ImageComparisonResultsEvent.zig").ImageComparisonResultsEvent;
const Long = @import("java/lang/Long.zig").Long;

pub const ImageComparisonWorker = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.ImageComparisonWorker";
    base: BasicEventHandler = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    bufferedImageVector: ?*BasicArrayList = null,
    imageComparatorConstraintsInterface: ?*ImageComparatorConstraintsInterface = null,
    imageComparator: ?*ImageComparator = null,
    running: bool = false,
    index2: i32 = 0,
    // Implements CapturedImageWorkerResultsListener

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.bufferedImageVector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        
        
        this.running = false;
        this.index2 = 0;
    }
    

    pub fn create1(imageComparatorConstraintsInterface: ?*ImageComparatorConstraintsInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        this.initFields();
        this.imageComparatorConstraintsInterface = imageComparatorConstraintsInterface;
        this.imageComparator = Inheritance.callStatic(ImageComparator, "create1", .{ imageComparatorConstraintsInterface });
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
    

    pub fn onCaptureEvent(self: *Self, capturedImageWorkerResultsEvent: ?*CapturedImageWorkerResultsEvent) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.bufferedImageVector.?, "add", .{ capturedImageWorkerResultsEvent });
        if (self.bufferedImageVector.?.size() > 1) {
            _ = self.run();
        }
    }
    

    pub fn onEvent(self: *Self, allBinaryEventObject: ?*AllBinaryEventObject) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self, "onCaptureEvent", .{ Inheritance.cast(?*CapturedImageWorkerResultsEvent, allBinaryEventObject) });
    }
    

    pub fn run(self: *Self) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.RUN });
            _ = Inheritance.call(self, "setRunning", .{ true });
            const timeHelper: ?*TimeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 1000 });
            _ = timeHelper.?.setStartTimeTNT();
            if (Inheritance.call(self.imageComparatorConstraintsInterface.?, "isFrameAllowed", .{ self.index2 })) {
                const capturedImageWorkerResultsEvent: []?*CapturedImageWorkerResultsEvent = array_N66963: { const array_N66963_array = allocator.alloc(?*CapturedImageWorkerResultsEvent, @intCast(2)) catch unreachable; @memset(array_N66963_array, null); break :array_N66963 array_N66963_array; };
                capturedImageWorkerResultsEvent[@intCast(0)] = Inheritance.cast(?*CapturedImageWorkerResultsEvent, Inheritance.call(self.bufferedImageVector.?, "get", .{ 0 }));
                capturedImageWorkerResultsEvent[@intCast(1)] = Inheritance.cast(?*CapturedImageWorkerResultsEvent, Inheritance.call(self.bufferedImageVector.?, "get", .{ 1 }));
                if (Inheritance.call(self.imageComparatorConstraintsInterface.?, "isImageValid", .{ Inheritance.receiverOf(capturedImageWorkerResultsEvent[@intCast(0)].?, "getBufferedImage").getBufferedImage() }) and Inheritance.call(self.imageComparatorConstraintsInterface.?, "isImageValid", .{ Inheritance.receiverOf(capturedImageWorkerResultsEvent[@intCast(1)].?, "getBufferedImage").getBufferedImage() })) {
                    const imageComparisonResult: ?*ImageComparisonResult = Inheritance.upcast(?*ImageComparisonResult, Inheritance.call(self.imageComparator.?, "compare", .{ Inheritance.receiverOf(capturedImageWorkerResultsEvent[@intCast(0)].?, "getBufferedImage").getBufferedImage(), Inheritance.receiverOf(capturedImageWorkerResultsEvent[@intCast(1)].?, "getBufferedImage").getBufferedImage(), Inheritance.receiverOf(capturedImageWorkerResultsEvent[@intCast(0)].?, "getFrame").getFrame(), Inheritance.receiverOf(capturedImageWorkerResultsEvent[@intCast(1)].?, "getFrame").getFrame(), 0 }));
                    const frame: ?*Long = Inheritance.upcast(?*Long, Inheritance.receiverOf(capturedImageWorkerResultsEvent[@intCast(1)].?, "getFrame").getFrame());
                    const imageComparisonResultFrameCacheable: ?*ImageComparisonResultFrameCacheable = Inheritance.callStatic(ImageComparisonResultFrameCacheable, "create2", .{ imageComparisonResult, frame });
                    _ = Inheritance.call(ImageComparisonResultCacheSingleton.getInstance().?, "add", .{ imageComparisonResultFrameCacheable });
                    _ = Inheritance.call(self, "fireEvent", .{ Inheritance.callStatic(ImageComparisonResultsEvent, "create2", .{ self, imageComparisonResult }) });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Image Comparison Result: ") }).?, "append", .{ Object.toString(Object.of(imageComparisonResult)) }).?, "append", .{ String.literal(" for frame: ") }).?, "appendlong", .{ frame }))), self, self.commonStrings.?.RUN });
                } else {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("An Image Was Not Valid: Image Worker Event Processing terminated"), self, self.commonStrings.?.RUN });
                }
            }
            _ = Inheritance.call(self.bufferedImageVector.?, "remove", .{ 0 });
            self.index2 += 1;
            const message: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Frame: ") }).?, "appendint", .{ self.index2 }).?, "append", .{ CommonLabels.getInstance().?.ELAPSED }).?, "appendlong", .{ @as(i64, @intCast(timeHelper.?.getElapsedTNT())) }))));
            _ = Inheritance.call(self.logUtil.?, "putF", .{ message, self, self.commonStrings.?.RUN });
            _ = Inheritance.call(self, "setRunning", .{ false });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END, self, self.commonStrings.?.RUN });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
    }
};

