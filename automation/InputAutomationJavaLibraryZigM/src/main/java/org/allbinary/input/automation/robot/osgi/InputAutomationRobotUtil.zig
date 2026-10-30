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
// package org.allbinary.input.automation.robot.osgi

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputRobotInterface = @import("org/allbinary/input/automation/robot/InputRobotInterface.zig").InputRobotInterface;
const InputAutomationRobotChangeEvent = @import("org/allbinary/input/automation/robot/osgi/InputAutomationRobotChangeEvent.zig").InputAutomationRobotChangeEvent;
const InputAutomationRobotInterfaceWrapper = @import("org/allbinary/input/automation/robot/osgi/InputAutomationRobotInterfaceWrapper.zig").InputAutomationRobotInterfaceWrapper;

pub const InputAutomationRobotUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getChangeEvent(inputRobotInterface: ?*InputRobotInterface) ?*InputAutomationRobotChangeEvent {
        const inputAutomationRobotInterfaceWrapper: ?*InputAutomationRobotInterfaceWrapper = Inheritance.callStatic(InputAutomationRobotInterfaceWrapper, "create1", .{ inputRobotInterface });
        const inputAutomationRobotChangeEvent: ?*InputAutomationRobotChangeEvent = Inheritance.callStatic(InputAutomationRobotChangeEvent, "create1", .{ inputAutomationRobotInterfaceWrapper });
        return inputAutomationRobotChangeEvent;
    }
};

