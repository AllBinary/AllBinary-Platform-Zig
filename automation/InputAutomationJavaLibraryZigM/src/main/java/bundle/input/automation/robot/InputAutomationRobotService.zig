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
// package bundle.input.automation.robot

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputRobotInterface = @import("org/allbinary/input/automation/robot/InputRobotInterface.zig").InputRobotInterface;
const InputAutomationRobotServiceInterface = @import("bundle/input/automation/robot/InputAutomationRobotServiceInterface.zig").InputAutomationRobotServiceInterface;

pub const InputAutomationRobotService = struct {
    const Self = @This();
    pub const java_name = "bundle.input.automation.robot.InputAutomationRobotService";
    pub const java_interfaces = .{ InputAutomationRobotServiceInterface };
    inputRobotInterfaceArray: []?*InputRobotInterface = &.{},
    // Implements InputAutomationRobotServiceInterface

    fn initFields(this: *Self) void {
        this.inputRobotInterfaceArray = &.{};
    }
    

    pub fn create1(inputRobotInterfaceArray: []?*InputRobotInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setInputRobotInterfaceArray", .{ inputRobotInterfaceArray });
        return this;
    }
    

    pub fn getInputRobotInterfaceArray(self: *Self) []?*InputRobotInterface {
        return self.inputRobotInterfaceArray;
    }
    

    pub fn setInputRobotInterfaceArray(self: *Self, inputRobotInterfaceArray: []?*InputRobotInterface) void {
        self.inputRobotInterfaceArray = inputRobotInterfaceArray;
    }
};

