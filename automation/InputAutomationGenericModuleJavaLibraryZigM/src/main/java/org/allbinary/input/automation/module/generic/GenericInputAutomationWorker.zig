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
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AbstractInputAutomationWorker = @import("org/allbinary/input/automation/module/AbstractInputAutomationWorker.zig").AbstractInputAutomationWorker;
const InputAutomationActionInterface = @import("org/allbinary/input/automation/module/InputAutomationActionInterface.zig").InputAutomationActionInterface;
const GenericProfile = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile.zig").GenericProfile;
const GenericProfileDataWorkerType = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerType.zig").GenericProfileDataWorkerType;
const GenericProfileAction = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction.zig").GenericProfileAction;
const GenericProfileActionScript = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/script/GenericProfileActionScript.zig").GenericProfileActionScript;
const CapturedBufferedImagesCacheSingleton = @import("org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton.zig").CapturedBufferedImagesCacheSingleton;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const J2SECacheInterface = @import("org/allbinary/logic/util/cache/J2SECacheInterface.zig").J2SECacheInterface;
const ImageComparatorConstraintsInterface = @import("org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface.zig").ImageComparatorConstraintsInterface;
const ImageComparisonWorker = @import("org/allbinary/media/image/comparison/ImageComparisonWorker.zig").ImageComparisonWorker;
const MotionRectangleConstraintsInterface = @import("org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface.zig").MotionRectangleConstraintsInterface;
const MotionRectanglesWorker = @import("org/allbinary/media/image/comparison/motion/MotionRectanglesWorker.zig").MotionRectanglesWorker;
const CaptureWorkerUtil = @import("org/allbinary/input/automation/module/generic/CaptureWorkerUtil.zig").CaptureWorkerUtil;
const GenericProfileCaptureWorkerFactory = @import("org/allbinary/input/automation/module/generic/GenericProfileCaptureWorkerFactory.zig").GenericProfileCaptureWorkerFactory;
const Long = @import("java/lang/Long.zig").Long;

pub const GenericInputAutomationWorker = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.GenericInputAutomationWorker";
    base: AbstractInputAutomationWorker = undefined,
    logUtil: ?*LogUtil = null,
    PROCESS_DATA_WORKER_RESULTS: ?*String = null,
    lastFrame: ?*Long = null,
    frame: ?*Long = null,
    genericProfile: ?*GenericProfile = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.PROCESS_DATA_WORKER_RESULTS = String.literal("processDataWorkerResults");
        this.lastFrame = Inheritance.callStatic(Long, "create1", .{ -1 });
        this.frame = null;
        this.genericProfile = null;
    }
    

    pub fn create4(inputAutomationActionInterface: ?*InputAutomationActionInterface, genericProfile: ?*GenericProfile, motionRectangleConstraintsInterface: ?*MotionRectangleConstraintsInterface, imageComparatorConstraintsInterface: ?*ImageComparatorConstraintsInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbstractInputAutomationWorker, "create1", .{ inputAutomationActionInterface }).*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        _ = Inheritance.call(this, "setCaptureWorker", .{ Inheritance.callStatic(GenericProfileCaptureWorkerFactory, "getInstance", .{ genericProfile }) });
        _ = Inheritance.call(this, "setInputAutomationActionInterface", .{ inputAutomationActionInterface });
        _ = Inheritance.call(this, "setImageComparisonWorker", .{ Inheritance.callStatic(ImageComparisonWorker, "create1", .{ imageComparatorConstraintsInterface }) });
        _ = Inheritance.call(this, "setMotionRectanglesWorker", .{ Inheritance.callStatic(MotionRectanglesWorker, "create1", .{ motionRectangleConstraintsInterface }) });
        _ = Inheritance.call(this, "setGenericProfile", .{ genericProfile });
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(this.getGenericProfile().?, "getGenericProfileDataWorkerTypeVector").getGenericProfileDataWorkerTypeVector());
        const size: i32 = vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const genericProfileDataWorkerType: ?*GenericProfileDataWorkerType = Inheritance.cast(?*GenericProfileDataWorkerType, Inheritance.call(vector.?, "get", .{ index }));
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Adding Listener: "), genericProfileDataWorkerType), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
            if (Object.same(genericProfileDataWorkerType, GenericProfileDataWorkerType.COMPARISON)) {
                _ = Inheritance.call(Inheritance.receiver(this, "getCaptureWorker").getCaptureWorker().?, "addListenerInterface", .{ Inheritance.receiver(this, "getImageComparisonWorker").getImageComparisonWorker() });
            } else if (Object.same(genericProfileDataWorkerType, GenericProfileDataWorkerType.MOTION)) {
                _ = Inheritance.call(Inheritance.receiver(this, "getImageComparisonWorker").getImageComparisonWorker().?, "addListenerInterface", .{ Inheritance.receiver(this, "getMotionRectanglesWorker").getMotionRectanglesWorker() });
            }
            }
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processDataWorkerResults(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, self.PROCESS_DATA_WORKER_RESULTS });
        _ = Inheritance.receiver(self, "waitForDataWorkers").waitForDataWorkers();
        const cacheInterface: ?*J2SECacheInterface = Inheritance.cast(?*J2SECacheInterface, CapturedBufferedImagesCacheSingleton.getInstance());
        const keyArray: []?Object = Inheritance.receiverOf(Inheritance.receiver(cacheInterface.?, "keySet").keySet().?, "toArray").toArray();
        if (@as(i32, @intCast(keyArray.len)) > 0) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Image Available"), self, self.PROCESS_DATA_WORKER_RESULTS });
            _ = Inheritance.call(self, "setFrame", .{ Inheritance.cast(?*Long, keyArray[@intCast(@as(i32, @intCast(keyArray.len)) - 1)]) });
            if (self.getFrame() > self.lastFrame) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Processing new frame: "), self.getFrame()), self, self.PROCESS_DATA_WORKER_RESULTS });
                const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(Inheritance.receiverOf(self.getGenericProfile().?, "getGenericProfileActions").getGenericProfileActions().?, "getHashMap").getHashMap());
                const set: ?*Set = Inheritance.upcast(?*Set, hashMap.?.keySet());
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.literal("Processing "), set.?.size()), String.literal("Actions")), self, self.PROCESS_DATA_WORKER_RESULTS });
                const actionNameArray: []?Object = set.?.toArray();
                const size: i32 = @as(i32, @intCast(actionNameArray.len));
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    const actionNameString: ?*String = Inheritance.cast(?*String, actionNameArray[@intCast(index)]);
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Processing Action: "), actionNameString), self, self.PROCESS_DATA_WORKER_RESULTS });
                    const genericProfileAction: ?*GenericProfileAction = Inheritance.cast(?*GenericProfileAction, Inheritance.call(hashMap.?, "get", .{ actionNameString }));
                    const genericProfileActionScript: ?*GenericProfileActionScript = Inheritance.upcast(?*GenericProfileActionScript, genericProfileAction.?.getGenericProfileActionScript());
                    const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(genericProfileActionScript.?, "getProfileActionConditionInterfaceVector").getProfileActionConditionInterfaceVector());
                    _ = Inheritance.callStatic(CaptureWorkerUtil, "processProfileActionConditions", .{ vector, self.getFrame() });
                    }
                }
                self.lastFrame = Inheritance.upcast(@TypeOf(self.lastFrame), self.getFrame());
            }
        } else {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Image Not Available"), self, self.PROCESS_DATA_WORKER_RESULTS });
        }
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS });
        _ = Inheritance.receiver(self, "startDataWorkers").startDataWorkers();
        _ = self.processDataWorkerResults();
    }
    

    pub fn getGenericProfile(self: *Self) ?*GenericProfile {
        return self.genericProfile;
    }
    

    pub fn setGenericProfile(self: *Self, genericProfile: ?*GenericProfile) void {
        self.genericProfile = genericProfile;
    }
    

    pub fn getFrame(self: *Self) ?*Long {
        return self.frame;
    }
    

    pub fn setFrame(self: *Self, frame: ?*Long) void {
        self.frame = frame;
    }
};

