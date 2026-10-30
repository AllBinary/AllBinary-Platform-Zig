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
// package org.allbinary.android.api5

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Activity = @import("android/app/Activity.zig").Activity;
const TouchScreenTypeFactory = @import("org/allbinary/input/motion/button/TouchScreenTypeFactory.zig").TouchScreenTypeFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const ActivityFractureUtilAPI1 = @import("org/allbinary/android/api1/ActivityFractureUtilAPI1.zig").ActivityFractureUtilAPI1;
const TouchScreenFactory = @import("org/allbinary/input/motion/button/TouchScreenFactory.zig").TouchScreenFactory;

pub const ActivityFractureUtilAPI5 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.api5.ActivityFractureUtilAPI5";
    base: ActivityFractureUtilAPI1 = undefined,
    FEATURE_TOUCHSCREEN_MULTITOUCH: ?*String = null,
    FEATURE_TOUCHSCREEN: ?*String = null,
    FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT: ?*String = null,
    var instance5: ?*ActivityFractureUtilAPI5 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance5 = ActivityFractureUtilAPI5.create();
    }

    fn initFields(this: *Self) void {
        this.FEATURE_TOUCHSCREEN_MULTITOUCH = String.literal("android.hardware.touchscreen.multitouch");
        this.FEATURE_TOUCHSCREEN = String.literal("android.hardware.touchscreen");
        this.FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT = String.literal("android.hardware.touchscreen.multitouch.distinct");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ActivityFractureUtilAPI1.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*ActivityFractureUtilAPI5 {
        return Inheritance.upcast(?*ActivityFractureUtilAPI5, ActivityFractureUtilAPI5.instance5);
    }
    

    pub fn process(self: *Self, activity: ?*Activity) void {
        const touchScreenFactory: ?*TouchScreenFactory = Inheritance.upcast(?*TouchScreenFactory, TouchScreenFactory.getInstance());
        const touchScreenTypeFactory: ?*TouchScreenTypeFactory = Inheritance.upcast(?*TouchScreenTypeFactory, TouchScreenTypeFactory.getInstance());
        _ = Inheritance.call(touchScreenFactory.?, "setTouch", .{ Inheritance.call(self, "isTouch", .{ activity }) });
        _ = Inheritance.call(touchScreenFactory.?, "setMultiTouch", .{ Inheritance.call(self, "isMultiTouch", .{ activity }) });
        _ = Inheritance.call(touchScreenFactory.?, "setMultiTouchDistinct", .{ Inheritance.call(self, "isMultiTouchDistinct", .{ activity }) });
        _ = Inheritance.call(touchScreenTypeFactory.?, "update", .{ activity });
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(touchScreenFactory)), self, commonStrings.?.PROCESS });
    }
    

    pub fn isTouch(self: *Self, activity: ?*Activity) bool {
        return Inheritance.call(self, "isFeature", .{ activity, self.FEATURE_TOUCHSCREEN });
    }
    

    pub fn isMultiTouch(self: *Self, activity: ?*Activity) bool {
        return Inheritance.call(self, "isFeature", .{ activity, self.FEATURE_TOUCHSCREEN_MULTITOUCH });
    }
    

    pub fn isMultiTouchDistinct(self: *Self, activity: ?*Activity) bool {
        return Inheritance.call(self, "isFeature", .{ activity, self.FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT });
    }
    

    pub fn isFeature(self: *Self, activity: ?*Activity, property: ?*String) bool {
        _ = self;
        return Inheritance.call(activity.?.getPackageManager().?, "hasSystemFeature", .{ property });
    }
};

