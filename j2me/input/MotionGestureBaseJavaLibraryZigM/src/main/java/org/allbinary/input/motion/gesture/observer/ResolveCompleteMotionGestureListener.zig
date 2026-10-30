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
const CompleteMotionGestureInputEventHandler = @import("org/allbinary/game/input/CompleteMotionGestureInputEventHandler.zig").CompleteMotionGestureInputEventHandler;
const GameKeyCompleteMotionGestureInputEvent = @import("org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.zig").GameKeyCompleteMotionGestureInputEvent;
const GameKeyFromMotionGestureEventListener = @import("org/allbinary/game/input/motion/action/GameKeyFromMotionGestureEventListener.zig").GameKeyFromMotionGestureEventListener;
const MotionGestureToMotionGestureActionAssociation = @import("org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation.zig").MotionGestureToMotionGestureActionAssociation;
const MotionGestureConfiguration = @import("org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration.zig").MotionGestureConfiguration;
const MotionGestureConfigurationFactory = @import("org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.zig").MotionGestureConfigurationFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const CompleteMotionGestureListenerInterface = @import("org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface.zig").CompleteMotionGestureListenerInterface;

pub const ResolveCompleteMotionGestureListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.gesture.observer.ResolveCompleteMotionGestureListener";
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
        _ = Inheritance.call(this.logUtil.?, "putF", .{ String.literal("MotionGesture to CompleteMotionGesture Reciever"), this, commonStrings.?.CONSTRUCTOR });
        _ = Inheritance.call(CompleteMotionGestureInputEventHandler.getInstance().?, "addListener", .{ GameKeyFromMotionGestureEventListener.create() });
        return this;
    }
    

    // throws Exception
    pub fn onMotionGestureCompleted(self: *Self, list: ?*BasicArrayList) void {
        _ = self;
        const configuration: ?*MotionGestureConfiguration = Inheritance.upcast(?*MotionGestureConfiguration, MotionGestureConfigurationFactory.getInstance());
        const commandActionsList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, configuration.?.getAssociateCommandActionsList());
        const size: i32 = commandActionsList.?.size();
        {
            var index: i32 = size - 1;
            while (index >= 0) : (index -= 1) {
            const association: ?*MotionGestureToMotionGestureActionAssociation = Inheritance.cast(?*MotionGestureToMotionGestureActionAssociation, commandActionsList.?.objectArray[@intCast(index)]);
            if (Inheritance.call(association.?, "isMotionGestureArrayEquals", .{ list }) == true) {
                const completeMotionGestureInputEvent: ?*GameKeyCompleteMotionGestureInputEvent = Inheritance.cast(?*GameKeyCompleteMotionGestureInputEvent, association.?.getCommandAction());
                _ = Inheritance.call(CompleteMotionGestureInputEventHandler.getInstance().?, "fireEvent", .{ completeMotionGestureInputEvent });
                break;
            }
            }
        }
    }
};

