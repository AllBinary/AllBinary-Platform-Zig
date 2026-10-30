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

pub const InputAutomationRobotInterfaceWrapper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper";
    inputRobotInterface: ?*InputRobotInterface = null,

    fn initFields(this: *Self) void {
        this.inputRobotInterface = null;
    }
    

    pub fn create1(inputRobotInterface: ?*InputRobotInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setInputRobotInterface", .{ inputRobotInterface });
        return this;
    }
    

    pub fn getInputRobotInterface(self: *Self) ?*InputRobotInterface {
        return self.inputRobotInterface;
    }
    

    pub fn setInputRobotInterface(self: *Self, inputRobotInterface: ?*InputRobotInterface) void {
        self.inputRobotInterface = inputRobotInterface;
    }
};

