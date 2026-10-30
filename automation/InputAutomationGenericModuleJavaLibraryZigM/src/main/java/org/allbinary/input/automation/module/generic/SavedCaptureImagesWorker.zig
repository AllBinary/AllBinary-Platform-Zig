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
// package org.allbinary.input.automation.module.generic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const File = @import("java/io/File.zig").File;
// const ImageIO = @import("javax/imageio/ImageIO.zig").ImageIO;
const SavedCaptureGenericProfileDataWorkerType = @import("org/allbinary/input/automation/module/generic/configuration/profile/SavedCaptureGenericProfileDataWorkerType.zig").SavedCaptureGenericProfileDataWorkerType;
const CaptureWorkerInterface = @import("org/allbinary/input/media/image/capture/CaptureWorkerInterface.zig").CaptureWorkerInterface;
const CapturedBufferedImagesCacheSingleton = @import("org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton.zig").CapturedBufferedImagesCacheSingleton;
const CapturedImageWorkerResultsEvent = @import("org/allbinary/input/media/image/capture/CapturedImageWorkerResultsEvent.zig").CapturedImageWorkerResultsEvent;
const ProcessingFrameIndexFactory = @import("org/allbinary/input/media/image/capture/ProcessingFrameIndexFactory.zig").ProcessingFrameIndexFactory;
const ScreenScavangerRobot = @import("org/allbinary/input/media/image/capture/ScreenScavangerRobot.zig").ScreenScavangerRobot;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LongUtil = @import("org/allbinary/logic/java/number/LongUtil.zig").LongUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const MediaDataFactory = @import("org/allbinary/logic/visual/media/MediaDataFactory.zig").MediaDataFactory;
const BufferedImageFrameCacheable = @import("org/allbinary/media/image/cache/BufferedImageFrameCacheable.zig").BufferedImageFrameCacheable;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const Long = @import("java/lang/Long.zig").Long;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const SavedCaptureImagesWorker = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.SavedCaptureImagesWorker";
    base: BasicEventHandler = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    running: bool = false,
    screenScavangerRobot: ?*ScreenScavangerRobot = null,
    savedCaptureGenericProfileDataWorkerType: ?*SavedCaptureGenericProfileDataWorkerType = null,
    // Implements CaptureWorkerInterface
    var index: i64 = undefined;

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.running = false;
        
        
    }
    

    pub fn create1(savedCaptureGenericProfileDataWorkerType: ?*SavedCaptureGenericProfileDataWorkerType) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicEventHandler.create().*;
        this.initFields();
        this.savedCaptureGenericProfileDataWorkerType = savedCaptureGenericProfileDataWorkerType;
        this.screenScavangerRobot = ScreenScavangerRobot.create();
        SavedCaptureImagesWorker.index = Inheritance.upcast(@TypeOf(SavedCaptureImagesWorker.index), ProcessingFrameIndexFactory.next());
        Inheritance.bindOverrides(this);
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
    

    pub fn run(self: *Self) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.RUN });
            _ = Inheritance.call(self, "setRunning", .{ true });
            const timeHelper: ?*TimeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 1000 });
            while (self.isRunning()) {
                _ = timeHelper.?.setStartTimeTNT();
                const frame: ?*Long = Inheritance.callStatic(Long, "create1", .{ SavedCaptureImagesWorker.index });
                const filePathStringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(filePathStringBuffer.?, "append", .{ Inheritance.receiver(self.savedCaptureGenericProfileDataWorkerType.?, "getPath").getPath() });
                _ = Inheritance.call(filePathStringBuffer.?, "append", .{ Inheritance.callStatic(LongUtil, "fillIn", .{ String.valueOf(frame.?) }) });
                _ = Inheritance.call(filePathStringBuffer.?, "append", .{ Inheritance.receiverOf(MediaDataFactory.getInstance().?.JPG.?, "getExtension").getExtension() });
                const filePath: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(filePathStringBuffer)));
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Loading Image File Path: "), filePath), self, self.commonStrings.?.RUN });
                const file: ?*File = Inheritance.callStatic(File, "create1", .{ filePath });
                if (file.?.isFile()) {
                    const bufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.callStatic(ImageIO, "read", .{ file }));
                    SavedCaptureImagesWorker.index += 1;
                    _ = Inheritance.call(CapturedBufferedImagesCacheSingleton.getInstance().?, "add", .{ Inheritance.callStatic(BufferedImageFrameCacheable, "create2", .{ bufferedImage, frame }) });
                    const capturedImageEvent: ?*CapturedImageWorkerResultsEvent = Inheritance.callStatic(CapturedImageWorkerResultsEvent, "create3", .{ self, frame, bufferedImage });
                    _ = Inheritance.call(self, "fireEvent", .{ capturedImageEvent });
                } else {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Could Not Load File: "), filePath), self, self.commonStrings.?.RUN });
                }
                _ = Inheritance.call(self.logUtil.?, "putF", .{ CommonLabels.getInstance().?.ELAPSED + timeHelper.?.getElapsedTNT(), self, self.commonStrings.?.RUN });
                _ = Inheritance.call(self, "setRunning", .{ false });
            }
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END, self, self.commonStrings.?.RUN });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
    }
};

