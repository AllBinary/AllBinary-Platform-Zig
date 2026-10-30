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
// const Set = @import("java/util/Set.zig").Set;
const InputRobotFactory = @import("org/allbinary/input/automation/robot/InputRobotFactory.zig").InputRobotFactory;
const InputRobotInterface = @import("org/allbinary/input/automation/robot/InputRobotInterface.zig").InputRobotInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ImageComparatorConstraintsInterface = @import("org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface.zig").ImageComparatorConstraintsInterface;
const MotionRectangleConstraintsInterface = @import("org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface.zig").MotionRectangleConstraintsInterface;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const AbstractInputAutomationWorker = @import("org/allbinary/input/automation/module/AbstractInputAutomationWorker.zig").AbstractInputAutomationWorker;
const InputAutomationActionInterface = @import("org/allbinary/input/automation/module/InputAutomationActionInterface.zig").InputAutomationActionInterface;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const TestInputAutomationActionWorker = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.TestInputAutomationActionWorker";
    base: AbstractInputAutomationWorker = undefined,
    logUtil: ?*LogUtil = null,
    sleep: i32 = 0,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create4(sleep: i32, inputAutomationActionInterface: ?*InputAutomationActionInterface, imageComparatorConstraintsInterface: ?*ImageComparatorConstraintsInterface, motionRectangleConstraintsInterface: ?*MotionRectangleConstraintsInterface) *Self {
        _ = imageComparatorConstraintsInterface;
        _ = motionRectangleConstraintsInterface;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbstractInputAutomationWorker, "create1", .{ inputAutomationActionInterface }).*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ String.literal("BasicTestAttackWorder"), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        this.sleep = sleep;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processBetweenWorkers(self: *Self) void {
        _ = self;
        _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(2000), .awake) catch {});
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS });
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(InputRobotFactory.getInstance().?, "get").get());
        const set: ?*Set = Inheritance.upcast(?*Set, Inheritance.receiver(hashtable.?, "keySet").keySet());
        const inputTypeNameArray: []?Object = set.?.toArray();
        const size: i32 = @as(i32, @intCast(inputTypeNameArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const inputTypeNameString: ?*String = Inheritance.cast(?*String, inputTypeNameArray[@intCast(index)]);
            const robot: ?*InputRobotInterface = Inheritance.cast(?*InputRobotInterface, Inheritance.call(hashtable.?, "get", .{ inputTypeNameString })); _ = robot;
            if (self.sleep > 0) {
                _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(self.sleep), .awake) catch {});
            }
            }
        }
    }
};

