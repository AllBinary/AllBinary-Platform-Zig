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
// package org.allbinary.input.automation.module.game.test

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AbstractInputAutomationFactory = @import("org/allbinary/input/automation/module/AbstractInputAutomationFactory.zig").AbstractInputAutomationFactory;
const InputAutomationModuleData = @import("org/allbinary/input/automation/module/InputAutomationModuleData.zig").InputAutomationModuleData;
const BlankModuleConfigurationJPanel = @import("org/allbinary/input/automation/module/configuration/BlankModuleConfigurationJPanel.zig").BlankModuleConfigurationJPanel;
const RunnableInterface = @import("org/allbinary/thread/RunnableInterface.zig").RunnableInterface;

pub const TestModuleFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.game.test.TestModuleFactory";
    base: AbstractInputAutomationFactory = undefined,
    blankModuleConfigurationJPanel: ?*BlankModuleConfigurationJPanel = null,
    var NAME: ?*String = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NAME = Inheritance.upcast(?*String, String.plus(String.literal("Test New Game"), InputAutomationModuleData.MODULE_NAME_END));
    }

    fn initFields(this: *Self) void {
        this.blankModuleConfigurationJPanel = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbstractInputAutomationFactory, "create2", .{ TestModuleFactory.NAME, BlankModuleConfigurationJPanel.create() }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, TestModuleFactory.NAME);
    }
    

    pub fn getConfigurationJPanel(self: *Self) ?*JPanel {
        return Inheritance.upcast(?*JPanel, self.blankModuleConfigurationJPanel);
    }
    

    // throws Exception
    pub fn getInstance(self: *Self) ?*RunnableInterface {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return null;
    }
};

