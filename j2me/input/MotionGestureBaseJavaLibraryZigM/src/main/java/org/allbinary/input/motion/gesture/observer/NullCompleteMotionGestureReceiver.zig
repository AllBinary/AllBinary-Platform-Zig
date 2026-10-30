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
// package org.allbinary.input.motion.gesture.observer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const CompleteMotionGestureListenerInterface = @import("org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface.zig").CompleteMotionGestureListenerInterface;

pub const NullCompleteMotionGestureReceiver = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver";
    pub const java_interfaces = .{ CompleteMotionGestureListenerInterface };
    logUtil: ?*LogUtil = null,
    // Implements CompleteMotionGestureListenerInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(this.logUtil.?, "putF", .{ String.literal("Null Gesture Reciever"), this, commonStrings.?.CONSTRUCTOR });
        return this;
    }
    

    // throws Exception
    pub fn onMotionGestureCompleted(self: *Self, list: ?*BasicArrayList) void {
        _ = list;
        _ = self;
    }
};

