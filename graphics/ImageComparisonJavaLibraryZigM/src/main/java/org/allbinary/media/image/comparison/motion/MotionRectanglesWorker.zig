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
// package org.allbinary.media.image.comparison.motion

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const ImageComparisonResult = @import("org/allbinary/media/image/comparison/ImageComparisonResult.zig").ImageComparisonResult;
const ImageComparisonResultsEvent = @import("org/allbinary/media/image/comparison/ImageComparisonResultsEvent.zig").ImageComparisonResultsEvent;
const ImageComparisonResultsListener = @import("org/allbinary/media/image/comparison/ImageComparisonResultsListener.zig").ImageComparisonResultsListener;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const AllMotionRectangles = @import("org/allbinary/media/image/comparison/motion/AllMotionRectangles.zig").AllMotionRectangles;
const AllMotionRectanglesResultsCacheSingleton = @import("org/allbinary/media/image/comparison/motion/AllMotionRectanglesResultsCacheSingleton.zig").AllMotionRectanglesResultsCacheSingleton;
const ConsolidateMotionRectangles = @import("org/allbinary/media/image/comparison/motion/ConsolidateMotionRectangles.zig").ConsolidateMotionRectangles;
const ConsolidatedMotionRectanglesResultsCacheSingleton = @import("org/allbinary/media/image/comparison/motion/ConsolidatedMotionRectanglesResultsCacheSingleton.zig").ConsolidatedMotionRectanglesResultsCacheSingleton;
const ConstrainedMotionRectangles = @import("org/allbinary/media/image/comparison/motion/ConstrainedMotionRectangles.zig").ConstrainedMotionRectangles;
const ConstrainedMotionRectanglesResultsCacheSingleton = @import("org/allbinary/media/image/comparison/motion/ConstrainedMotionRectanglesResultsCacheSingleton.zig").ConstrainedMotionRectanglesResultsCacheSingleton;
const MotionRectangleConstraintsInterface = @import("org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface.zig").MotionRectangleConstraintsInterface;
const MotionRectangles = @import("org/allbinary/media/image/comparison/motion/MotionRectangles.zig").MotionRectangles;
const MotionRectanglesResultsEvent = @import("org/allbinary/media/image/comparison/motion/MotionRectanglesResultsEvent.zig").MotionRectanglesResultsEvent;
const MotionRectanglesResultsFrameCacheable = @import("org/allbinary/media/image/comparison/motion/MotionRectanglesResultsFrameCacheable.zig").MotionRectanglesResultsFrameCacheable;

pub const MotionRectanglesWorker = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.motion.MotionRectanglesWorker";
    base: BasicEventHandler = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    imageComparisonInfoVector: ?*BasicArrayList = null,
    motionRectangleConstraintsInterface: ?*MotionRectangleConstraintsInterface = null,
    index: i64 = 0,
    running: bool = false,
    // Implements ImageComparisonResultsListener

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.imageComparisonInfoVector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        
        this.index = 0;
        this.running = false;
    }
    

    pub fn create1(motionRectangleConstraintsInterface: ?*MotionRectangleConstraintsInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        this.initFields();
        this.motionRectangleConstraintsInterface = motionRectangleConstraintsInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onImageComparisonResultsEvent(self: *Self, imageComparisonResultsEvent: ?*ImageComparisonResultsEvent) void {
        _ = Inheritance.call(self.imageComparisonInfoVector.?, "add", .{ imageComparisonResultsEvent });
        _ = self.run();
    }
    

    pub fn onEvent(self: *Self, allBinaryEventObject: ?*AllBinaryEventObject) void {
        _ = Inheritance.call(self, "onImageComparisonResultsEvent", .{ Inheritance.cast(?*ImageComparisonResultsEvent, allBinaryEventObject) });
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
    

    pub fn run(self: *Self) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.RUN });
            _ = Inheritance.call(self, "setRunning", .{ true });
            const timeHelper: ?*TimeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 1000 });
            _ = timeHelper.?.setStartTimeTNT();
            const imageComparisonResultsEvent: ?*ImageComparisonResultsEvent = Inheritance.cast(?*ImageComparisonResultsEvent, Inheritance.call(self.imageComparisonInfoVector.?, "get", .{ 0 }));
            const imageComparisonInfo: ?*ImageComparisonResult = Inheritance.cast(?*ImageComparisonResult, Inheritance.receiver(imageComparisonResultsEvent.?, "getImageComparisonResult").getImageComparisonResult());
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(imageComparisonInfo)), self, self.commonStrings.?.RUN });
            const allMotionRectangles: ?*AllMotionRectangles = Inheritance.callStatic(AllMotionRectangles, "create1", .{ imageComparisonInfo });
            _ = Inheritance.call(AllMotionRectanglesResultsCacheSingleton.getInstance().?, "add", .{ Inheritance.callStatic(MotionRectanglesResultsFrameCacheable, "create2", .{ allMotionRectangles, imageComparisonInfo.?.getFrameTwo() }) });
            const consolidatedMotionRectangles: ?*ConsolidateMotionRectangles = Inheritance.callStatic(ConsolidateMotionRectangles, "create1", .{ allMotionRectangles });
            _ = Inheritance.call(ConsolidatedMotionRectanglesResultsCacheSingleton.getInstance().?, "add", .{ Inheritance.callStatic(MotionRectanglesResultsFrameCacheable, "create2", .{ consolidatedMotionRectangles, imageComparisonInfo.?.getFrameTwo() }) });
            const constrainedMotionRectangles: ?*ConstrainedMotionRectangles = Inheritance.callStatic(ConstrainedMotionRectangles, "create2", .{ self.motionRectangleConstraintsInterface, consolidatedMotionRectangles });
            _ = Inheritance.call(constrainedMotionRectangles.?, "applyMotionRectangleConstraints", .{ consolidatedMotionRectangles });
            _ = Inheritance.call(ConstrainedMotionRectanglesResultsCacheSingleton.getInstance().?, "add", .{ Inheritance.callStatic(MotionRectanglesResultsFrameCacheable, "create2", .{ constrainedMotionRectangles, imageComparisonInfo.?.getFrameTwo() }) });
            _ = Inheritance.call(self, "fireEvent", .{ Inheritance.callStatic(MotionRectanglesResultsEvent, "create3", .{ self, imageComparisonInfo.?.getFrameTwo(), Inheritance.cast(?*MotionRectangles, constrainedMotionRectangles) }) });
            _ = Inheritance.call(self.imageComparisonInfoVector.?, "remove", .{ imageComparisonResultsEvent });
            self.index += 1;
            _ = Inheritance.call(self.logUtil.?, "putF", .{ CommonLabels.getInstance().?.ELAPSED + timeHelper.?.getElapsedTNT(), self, self.commonStrings.?.RUN });
            _ = Inheritance.call(self, "setRunning", .{ false });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END, self, self.commonStrings.?.RUN });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
    }
};

