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
// package bundle.input.automation.module

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputAutomationModuleFactoryInterface = @import("org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface.zig").InputAutomationModuleFactoryInterface;
const InputAutomationModuleServiceInterface = @import("bundle/input/automation/module/InputAutomationModuleServiceInterface.zig").InputAutomationModuleServiceInterface;

pub const InputAutomationModuleService = struct {
    const Self = @This();
    pub const java_name = "bundle.input.automation.module.InputAutomationModuleService";
    pub const java_interfaces = .{ InputAutomationModuleServiceInterface };
    inputAutomationModuleInterfaceArray: []?*InputAutomationModuleFactoryInterface = &.{},
    // Implements InputAutomationModuleServiceInterface

    fn initFields(this: *Self) void {
        this.inputAutomationModuleInterfaceArray = &.{};
    }
    

    pub fn create1(inputAutomationModuleInterfaceArray: []?*InputAutomationModuleFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setInputAutomationModuleInterfaceArray", .{ inputAutomationModuleInterfaceArray });
        return this;
    }
    

    pub fn getInputAutomationModuleInterfaceArray(self: *Self) []?*InputAutomationModuleFactoryInterface {
        return self.inputAutomationModuleInterfaceArray;
    }
    

    pub fn setInputAutomationModuleInterfaceArray(self: *Self, inputAutomationModuleInterfaceArray: []?*InputAutomationModuleFactoryInterface) void {
        self.inputAutomationModuleInterfaceArray = inputAutomationModuleInterfaceArray;
    }
};

