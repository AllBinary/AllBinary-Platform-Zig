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
// const Rectangle = @import("java/awt/Rectangle.zig").Rectangle;
// const InputEvent = @import("java/awt/event/InputEvent.zig").InputEvent;
// const KeyEvent = @import("java/awt/event/KeyEvent.zig").KeyEvent;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const InputRobotFactory = @import("org/allbinary/input/automation/robot/InputRobotFactory.zig").InputRobotFactory;
const InputRobotInterface = @import("org/allbinary/input/automation/robot/InputRobotInterface.zig").InputRobotInterface;
const TempInputRobotNames = @import("org/allbinary/input/automation/robot/TempInputRobotNames.zig").TempInputRobotNames;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const MotionRectangles = @import("org/allbinary/media/image/comparison/motion/MotionRectangles.zig").MotionRectangles;
const MotionRectanglesResultsEvent = @import("org/allbinary/media/image/comparison/motion/MotionRectanglesResultsEvent.zig").MotionRectanglesResultsEvent;
const MotionRectanglesResultsListener = @import("org/allbinary/media/image/comparison/motion/MotionRectanglesResultsListener.zig").MotionRectanglesResultsListener;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const TestInputForMotionRectanglesResultsWorker = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker";
    pub const java_interfaces = .{ MotionRectanglesResultsListener };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    index: i64 = 0,
    running: bool = false,
    motionRectanglesVector: ?*BasicArrayList = null,
    // Implements MotionRectanglesResultsListener

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.index = 0;
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
    

    pub fn onMotionRectanglesImageComparisonResultsEvent(self: *Self, motionRectanglesImageComparisonResultsEvent: ?*MotionRectanglesResultsEvent) void {
        _ = Inheritance.call(self.getMotionRectanglesVector().?, "add", .{ Inheritance.receiver(motionRectanglesImageComparisonResultsEvent.?, "getMotionRectangles").getMotionRectangles() });
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
            const motionRectangles: ?*MotionRectangles = Inheritance.cast(?*MotionRectangles, Inheritance.call(self.getMotionRectanglesVector().?, "get", .{ 0 }));
            const motionRectangleVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, motionRectangles.?.getVector());
            if (motionRectangleVector.?.size() > 0) {
                const rectangle: ?*Rectangle = Inheritance.cast(?*Rectangle, Inheritance.call(motionRectangleVector.?, "get", .{ 0 }));
                const robotHashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(InputRobotFactory.getInstance().?, "get").get());
                const inputTypeNameArray: []?Object = Inheritance.receiverOf(Inheritance.receiver(robotHashtable.?, "keySet").keySet().?, "toArray").toArray();
                const size: i32 = @as(i32, @intCast(inputTypeNameArray.len));
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    const inputTypeNameString: ?*String = Inheritance.cast(?*String, inputTypeNameArray[@intCast(index)]);
                    const inputRobotInterface: ?*InputRobotInterface = Inheritance.cast(?*InputRobotInterface, Inheritance.call(robotHashtable.?, "get", .{ inputTypeNameString }));
                    _ = Inheritance.call(inputRobotInterface.?, "mouseMoveToTarget", .{ rectangle });
                    if (Inheritance.call(inputRobotInterface.?.getName().?, "compareTo", .{ TempInputRobotNames.DX_NAME }) == 0) {
                        _ = Inheritance.call(inputRobotInterface.?, "mousePress", .{ InputEvent.BUTTON1_MASK });
                        _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(300), .awake) catch {});
                        _ = Inheritance.call(inputRobotInterface.?, "mouseRelease", .{ InputEvent.BUTTON1_MASK });
                        _ = Inheritance.call(inputRobotInterface.?, "mousePress", .{ InputEvent.BUTTON2_MASK });
                        _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(300), .awake) catch {});
                        _ = Inheritance.call(inputRobotInterface.?, "mouseRelease", .{ InputEvent.BUTTON2_MASK });
                        _ = Inheritance.call(inputRobotInterface.?, "mousePress", .{ InputEvent.BUTTON3_MASK });
                        _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(300), .awake) catch {});
                        _ = Inheritance.call(inputRobotInterface.?, "mouseRelease", .{ InputEvent.BUTTON3_MASK });
                        _ = Inheritance.call(inputRobotInterface.?, "keyPress", .{ KeyEvent.VK_1 });
                        _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(300), .awake) catch {});
                        _ = Inheritance.call(inputRobotInterface.?, "keyRelease", .{ KeyEvent.VK_1 });
                        _ = Inheritance.call(inputRobotInterface.?, "keyPress", .{ KeyEvent.VK_2 });
                        _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(300), .awake) catch {});
                        _ = Inheritance.call(inputRobotInterface.?, "keyRelease", .{ KeyEvent.VK_2 });
                        _ = Inheritance.call(inputRobotInterface.?, "keyPress", .{ KeyEvent.VK_3 });
                        _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(300), .awake) catch {});
                        _ = Inheritance.call(inputRobotInterface.?, "keyRelease", .{ KeyEvent.VK_3 });
                        _ = Inheritance.call(inputRobotInterface.?, "keyPress", .{ KeyEvent.VK_4 });
                        _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(300), .awake) catch {});
                        _ = Inheritance.call(inputRobotInterface.?, "keyRelease", .{ KeyEvent.VK_4 });
                        _ = Inheritance.call(inputRobotInterface.?, "keyPress", .{ KeyEvent.VK_F1 });
                        _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(300), .awake) catch {});
                        _ = Inheritance.call(inputRobotInterface.?, "keyRelease", .{ KeyEvent.VK_F1 });
                    }
                    }
                }
            }
            self.index += 1;
            _ = Inheritance.call(self.getMotionRectanglesVector().?, "remove", .{ motionRectangles });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ CommonLabels.getInstance().?.ELAPSED + timeHelper.?.getElapsedTNT(), self, self.commonStrings.?.RUN });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END, self, self.commonStrings.?.RUN });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
    }
};

