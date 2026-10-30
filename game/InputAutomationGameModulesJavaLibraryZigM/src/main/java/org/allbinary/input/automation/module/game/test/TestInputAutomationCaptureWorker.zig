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
// package org.allbinary.input.automation.module.game.test

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AbstractInputAutomationWorker = @import("org/allbinary/input/automation/module/AbstractInputAutomationWorker.zig").AbstractInputAutomationWorker;
const InputAutomationActionInterface = @import("org/allbinary/input/automation/module/InputAutomationActionInterface.zig").InputAutomationActionInterface;
const GenericProfileAction = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction.zig").GenericProfileAction;
const GenericProfileActions = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActions.zig").GenericProfileActions;
const GenericProfileActionScript = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/script/GenericProfileActionScript.zig").GenericProfileActionScript;
const CapturedBufferedImagesCacheSingleton = @import("org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton.zig").CapturedBufferedImagesCacheSingleton;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const J2SECacheInterface = @import("org/allbinary/logic/util/cache/J2SECacheInterface.zig").J2SECacheInterface;
const ImageComparatorConstraintsInterface = @import("org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface.zig").ImageComparatorConstraintsInterface;
const MotionRectangleConstraintsInterface = @import("org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface.zig").MotionRectangleConstraintsInterface;

pub const TestInputAutomationCaptureWorker = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker";
    base: AbstractInputAutomationWorker = undefined,
    logUtil: ?*LogUtil = null,
    genericProfileActions: ?*GenericProfileActions = null,
    MESSAGE: ?*String = null,
    PROCESS_DATA_WORKER_RESULTS: ?*String = null,
    IMAGE_AVAILABLE_SO_PROCESSING: ?*String = null,
    IMAGE_NOT_AVAILABLE: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.genericProfileActions = null;
        this.MESSAGE = String.literal("GenericInputAutomationCaptureWorker");
        this.PROCESS_DATA_WORKER_RESULTS = String.literal("processDataWorkerResults");
        this.IMAGE_AVAILABLE_SO_PROCESSING = String.literal("Image Available so processing");
        this.IMAGE_NOT_AVAILABLE = String.literal("Image Not Available");
    }
    

    pub fn create4(inputAutomationActionInterface: ?*InputAutomationActionInterface, genericProfileActions: ?*GenericProfileActions, imageComparatorConstraintsInterface: ?*ImageComparatorConstraintsInterface, motionRectangleConstraintsInterface: ?*MotionRectangleConstraintsInterface) *Self {
        _ = imageComparatorConstraintsInterface;
        _ = motionRectangleConstraintsInterface;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbstractInputAutomationWorker, "create1", .{ inputAutomationActionInterface }).*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.MESSAGE, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        _ = Inheritance.call(this, "setGenericProfileActions", .{ genericProfileActions });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processDataWorkerResults(self: *Self) void {
        const cacheInterface: ?*J2SECacheInterface = Inheritance.cast(?*J2SECacheInterface, CapturedBufferedImagesCacheSingleton.getInstance());
        if (Inheritance.receiverOf(Inheritance.receiver(cacheInterface.?, "keySet").keySet().?, "size").size() > 0) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.IMAGE_AVAILABLE_SO_PROCESSING, self, self.PROCESS_DATA_WORKER_RESULTS });
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.receiverOf(Inheritance.receiver(cacheInterface.?, "keySet").keySet().?, "toArray").toArray()[@intCast(0)]);
            const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(self.getGenericProfileActions().?, "getHashMap").getHashMap());
            const set: ?*Set = Inheritance.upcast(?*Set, hashMap.?.keySet());
            const actionNameArray: []?Object = set.?.toArray();
            const size: i32 = @as(i32, @intCast(actionNameArray.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const actionNameString: ?*String = Inheritance.cast(?*String, actionNameArray[@intCast(index)]);
                const genericProfileAction: ?*GenericProfileAction = Inheritance.cast(?*GenericProfileAction, Inheritance.call(hashMap.?, "get", .{ actionNameString }));
                const genericProfileActionScript: ?*GenericProfileActionScript = Inheritance.upcast(?*GenericProfileActionScript, genericProfileAction.?.getGenericProfileActionScript());
                const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(genericProfileActionScript.?, "getProfileActionConditionInterfaceVector").getProfileActionConditionInterfaceVector()); _ = vector;
                }
            }
            _ = Inheritance.call(cacheInterface.?, "get", .{ anyType });
        } else {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.IMAGE_NOT_AVAILABLE, self, self.PROCESS_DATA_WORKER_RESULTS });
        }
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS });
        _ = Inheritance.receiver(self, "startDataWorkers").startDataWorkers();
        _ = self.processDataWorkerResults();
    }
    

    pub fn getGenericProfileActions(self: *Self) ?*GenericProfileActions {
        return self.genericProfileActions;
    }
    

    pub fn setGenericProfileActions(self: *Self, genericProfileActions: ?*GenericProfileActions) void {
        self.genericProfileActions = genericProfileActions;
    }
};

