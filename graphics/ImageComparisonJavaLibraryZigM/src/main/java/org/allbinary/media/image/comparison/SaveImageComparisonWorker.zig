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
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const ComparisonImageInputOutput = @import("org/allbinary/media/image/comparison/ComparisonImageInputOutput.zig").ComparisonImageInputOutput;
const ImageComparisonResult = @import("org/allbinary/media/image/comparison/ImageComparisonResult.zig").ImageComparisonResult;
const ImageComparisonResultsEvent = @import("org/allbinary/media/image/comparison/ImageComparisonResultsEvent.zig").ImageComparisonResultsEvent;
const ImageComparisonResultsListener = @import("org/allbinary/media/image/comparison/ImageComparisonResultsListener.zig").ImageComparisonResultsListener;

pub const SaveImageComparisonWorker = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.SaveImageComparisonWorker";
    pub const java_interfaces = .{ ImageComparisonResultsListener };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    running: bool = false,
    imageComparisonInfoVector: ?*BasicArrayList = null,
    // Implements ImageComparisonResultsListener

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.running = false;
        this.imageComparisonInfoVector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
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
            const imageComparisonInfo: ?*ImageComparisonResult = Inheritance.upcast(?*ImageComparisonResult, Inheritance.receiver(imageComparisonResultsEvent.?, "getImageComparisonResult").getImageComparisonResult());
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(imageComparisonInfo)), self, self.commonStrings.?.RUN });
            _ = Inheritance.call(ComparisonImageInputOutput.create(), "save", .{ imageComparisonInfo, imageComparisonInfo.?.getFrameTwo() });
            _ = Inheritance.call(self.imageComparisonInfoVector.?, "remove", .{ imageComparisonInfo });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ CommonLabels.getInstance().?.ELAPSED + timeHelper.?.getElapsedTNT(), self, self.commonStrings.?.RUN });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END, self, self.commonStrings.?.RUN });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
    }
};

