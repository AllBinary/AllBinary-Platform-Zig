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
const AbstractInputAutomationFactory = @import("org/allbinary/input/automation/module/AbstractInputAutomationFactory.zig").AbstractInputAutomationFactory;
const InputAutomationActionInterface = @import("org/allbinary/input/automation/module/InputAutomationActionInterface.zig").InputAutomationActionInterface;
const InputAutomationModuleData = @import("org/allbinary/input/automation/module/InputAutomationModuleData.zig").InputAutomationModuleData;
const GenericModuleConfigurationJPanel = @import("org/allbinary/input/automation/module/generic/configuration/GenericModuleConfigurationJPanel.zig").GenericModuleConfigurationJPanel;
const GenericProfile = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile.zig").GenericProfile;
const NoImageComparatorConstraints = @import("org/allbinary/input/automation/module/generic/constraints/NoImageComparatorConstraints.zig").NoImageComparatorConstraints;
const NoMotionRectangleConstraints = @import("org/allbinary/input/automation/module/generic/constraints/NoMotionRectangleConstraints.zig").NoMotionRectangleConstraints;
const RunnableInterface = @import("org/allbinary/thread/RunnableInterface.zig").RunnableInterface;
const GenericInputAutomationAction = @import("org/allbinary/input/automation/module/generic/GenericInputAutomationAction.zig").GenericInputAutomationAction;
const GenericInputAutomationWorker = @import("org/allbinary/input/automation/module/generic/GenericInputAutomationWorker.zig").GenericInputAutomationWorker;

pub const GenericModuleFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.GenericModuleFactory";
    base: AbstractInputAutomationFactory = undefined,
    var NAME: ?*String = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NAME = Inheritance.upcast(?*String, String.plus(String.literal("Generic"), InputAutomationModuleData.MODULE_NAME_END));
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbstractInputAutomationFactory, "create2", .{ GenericModuleFactory.NAME, GenericModuleConfigurationJPanel.create() }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self) ?*RunnableInterface {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const genericProfile: ?*GenericProfile = Inheritance.upcast(?*GenericProfile, Inheritance.receiverOf((Inheritance.cast(?*GenericModuleConfigurationJPanel, Inheritance.receiver(self, "getConfigurationJPanel").getConfigurationJPanel())).?, "getSelectedGenericProfile").getSelectedGenericProfile());
        const inputAutomationActionInterface: ?*InputAutomationActionInterface = Inheritance.cast(?*InputAutomationActionInterface, GenericInputAutomationAction.create());
        return Inheritance.cast(?*RunnableInterface, Inheritance.callStatic(GenericInputAutomationWorker, "create4", .{ inputAutomationActionInterface, genericProfile, NoMotionRectangleConstraints.create(), NoImageComparatorConstraints.create() }));
    }
};

