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
// package org.allbinary.input.automation.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputAutomationModuleFactoryInterface = @import("org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface.zig").InputAutomationModuleFactoryInterface;
const InputAutomationModuleConfiguration = @import("org/allbinary/input/automation/module/configuration/InputAutomationModuleConfiguration.zig").InputAutomationModuleConfiguration;
const InputAutomationConfigurationModuleChangeEvent = @import("org/allbinary/input/automation/configuration/InputAutomationConfigurationModuleChangeEvent.zig").InputAutomationConfigurationModuleChangeEvent;

pub const InputAutomationConfigurationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getChangeEvent(inputAutomationModuleInterface: ?*InputAutomationModuleFactoryInterface) ?*InputAutomationConfigurationModuleChangeEvent {
        const inputAutomationModuleConfiguration: ?*InputAutomationModuleConfiguration = Inheritance.callStatic(InputAutomationModuleConfiguration, "create1", .{ inputAutomationModuleInterface });
        const inputAutomationConfigurationModuleChangeEvent: ?*InputAutomationConfigurationModuleChangeEvent = Inheritance.callStatic(InputAutomationConfigurationModuleChangeEvent, "create1", .{ inputAutomationModuleConfiguration });
        return inputAutomationConfigurationModuleChangeEvent;
    }
};

