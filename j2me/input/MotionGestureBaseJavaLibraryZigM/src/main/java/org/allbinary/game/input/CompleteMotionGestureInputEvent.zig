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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MotionGestureInput = @import("org/allbinary/input/motion/gesture/MotionGestureInput.zig").MotionGestureInput;
const TouchMotionGestureFactory = @import("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.zig").TouchMotionGestureFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const CompleteMotionGestureInputInterface = @import("org/allbinary/game/input/CompleteMotionGestureInputInterface.zig").CompleteMotionGestureInputInterface;

pub const CompleteMotionGestureInputEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.CompleteMotionGestureInputEvent";
    pub const java_interfaces = .{ CompleteMotionGestureInputInterface };
    base: AllBinaryEventObject = undefined,
    logUtil: ?*LogUtil = null,
    name: ?*String = null,
    motionGestureInput: ?*MotionGestureInput = null,
    // Implements CompleteMotionGestureInputInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.name = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.motionGestureInput = Inheritance.upcast(?*MotionGestureInput, TouchMotionGestureFactory.getInstance().?.NO_MOTION);
    }
    

    pub fn create2(name: ?*String, motionGestureInput: ?*MotionGestureInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ motionGestureInput }).*;
        this.initFields();
        _ = Inheritance.call(this, "setName", .{ name });
        { // try
            _ = Inheritance.call(this, "setMotionGestureInput", .{ motionGestureInput });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(this.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, this, String.literal("InputToGameKeyEventAction"), e });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setMotionGestureInput(self: *Self, motionGestureInput: ?*MotionGestureInput) void {
        self.motionGestureInput = motionGestureInput;
    }
    

    pub fn getMotionGestureInput(self: *Self) ?*MotionGestureInput {
        return self.motionGestureInput;
    }
};

