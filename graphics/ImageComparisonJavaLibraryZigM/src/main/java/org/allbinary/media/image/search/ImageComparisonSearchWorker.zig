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
// package org.allbinary.media.image.search

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
const ImageComparisonResult = @import("org/allbinary/media/image/comparison/ImageComparisonResult.zig").ImageComparisonResult;
const ImageComparisonResultsEvent = @import("org/allbinary/media/image/comparison/ImageComparisonResultsEvent.zig").ImageComparisonResultsEvent;
const ImageComparisonResultsListener = @import("org/allbinary/media/image/comparison/ImageComparisonResultsListener.zig").ImageComparisonResultsListener;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const ImageComparisonSearchConstraintsInterface = @import("org/allbinary/media/image/search/ImageComparisonSearchConstraintsInterface.zig").ImageComparisonSearchConstraintsInterface;

pub const ImageComparisonSearchWorker = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.search.ImageComparisonSearchWorker";
    base: BasicEventHandler = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    imageComparisonInfoVector: ?*BasicArrayList = null,
    index: i64 = 0,
    running: bool = false,
    imageSearchConstraintsInterface: ?*ImageComparisonSearchConstraintsInterface = null,
    // Implements ImageComparisonResultsListener

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.index = 0;
        this.running = false;
        
    }
    

    pub fn create1(imageSearchConstraintsInterface: ?*ImageComparisonSearchConstraintsInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        this.initFields();
        this.imageComparisonInfoVector = Inheritance.upcast(@TypeOf(this.imageComparisonInfoVector), BasicArrayListD.create());
        this.imageSearchConstraintsInterface = imageSearchConstraintsInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onImageComparisonResultsEvent(self: *Self, imageComparisonResultsEvent: ?*ImageComparisonResultsEvent) void {
        _ = Inheritance.call(self.imageComparisonInfoVector.?, "add", .{ Inheritance.receiver(imageComparisonResultsEvent.?, "getImageComparisonResult").getImageComparisonResult() });
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
            const imageComparisonInfo: ?*ImageComparisonResult = Inheritance.cast(?*ImageComparisonResult, Inheritance.call(self.imageComparisonInfoVector.?, "get", .{ 0 }));
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(imageComparisonInfo)), self, self.commonStrings.?.RUN });
            const latestBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, imageComparisonInfo.?.getBufferedImages()[@intCast(1)]); _ = latestBufferedImage;
            _ = Inheritance.call(self.imageComparisonInfoVector.?, "remove", .{ imageComparisonInfo });
            self.index += 1;
            _ = Inheritance.call(self.logUtil.?, "putF", .{ CommonLabels.getInstance().?.ELAPSED + timeHelper.?.getElapsedTNT(), self, self.commonStrings.?.RUN });
            _ = Inheritance.call(self, "setRunning", .{ false });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END, self, self.commonStrings.?.RUN });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
    }
};

