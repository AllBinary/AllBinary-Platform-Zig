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
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const MotionRectangles = @import("org/allbinary/media/image/comparison/motion/MotionRectangles.zig").MotionRectangles;
const MotionRectanglesImageInputOutput = @import("org/allbinary/media/image/comparison/motion/MotionRectanglesImageInputOutput.zig").MotionRectanglesImageInputOutput;
const MotionRectanglesResultsEvent = @import("org/allbinary/media/image/comparison/motion/MotionRectanglesResultsEvent.zig").MotionRectanglesResultsEvent;
const MotionRectanglesResultsListener = @import("org/allbinary/media/image/comparison/motion/MotionRectanglesResultsListener.zig").MotionRectanglesResultsListener;

pub const SaveMotionRectanglesResultsWorker = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker";
    pub const java_interfaces = .{ MotionRectanglesResultsListener };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    running: bool = false,
    motionRectanglesVector: ?*BasicArrayList = null,
    // Implements MotionRectanglesResultsListener

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.running = false;
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.motionRectanglesVector = Inheritance.upcast(@TypeOf(this.motionRectanglesVector), BasicArrayListD.create());
        return this;
    }
    

    pub fn getMotionRectanglesVector(self: *Self) ?*BasicArrayList {
        return self.motionRectanglesVector;
    }
    

    pub fn onMotionRectanglesImageComparisonResultsEvent(self: *Self, motionRectanglesResultsEvent: ?*MotionRectanglesResultsEvent) void {
        _ = Inheritance.call(self.getMotionRectanglesVector().?, "add", .{ motionRectanglesResultsEvent });
        _ = self.run();
    }
    

    pub fn onEvent(self: *Self, allBinaryEventObject: ?*AllBinaryEventObject) void {
        _ = Inheritance.call(self, "onMotionRectanglesImageComparisonResultsEvent", .{ Inheritance.cast(?*MotionRectanglesResultsEvent, allBinaryEventObject) });
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
            const motionRectanglesResultsEvent: ?*MotionRectanglesResultsEvent = Inheritance.cast(?*MotionRectanglesResultsEvent, Inheritance.call(self.getMotionRectanglesVector().?, "get", .{ 0 }));
            const motionRectangles: ?*MotionRectangles = Inheritance.upcast(?*MotionRectangles, Inheritance.receiver(motionRectanglesResultsEvent.?, "getMotionRectangles").getMotionRectangles());
            _ = Inheritance.call(MotionRectanglesImageInputOutput.create(), "save", .{ motionRectangles, Inheritance.receiver(motionRectanglesResultsEvent.?, "getFrame").getFrame() });
            _ = Inheritance.call(self.getMotionRectanglesVector().?, "remove", .{ motionRectangles });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ CommonLabels.getInstance().?.ELAPSED + timeHelper.?.getElapsedTNT(), self, self.commonStrings.?.RUN });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END, self, self.commonStrings.?.RUN });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
    }
};

