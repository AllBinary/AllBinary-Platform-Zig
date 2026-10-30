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
// package bundle.input.automation.module.generic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputAutomationGenericModuleServiceFactory = @import("org/allbinary/input/automation/module/generic/InputAutomationGenericModuleServiceFactory.zig").InputAutomationGenericModuleServiceFactory;
const InputAutomationModuleBundleActivator = @import("org/allbinary/input/automation/module/osgi/InputAutomationModuleBundleActivator.zig").InputAutomationModuleBundleActivator;

pub const InputAutomationGenericModuleBundleActivator = struct {
    const Self = @This();
    pub const java_name = "bundle.input.automation.module.generic.InputAutomationGenericModuleBundleActivator";
    base: InputAutomationModuleBundleActivator = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = InputAutomationModuleBundleActivator.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        const inputAutomationGenericModuleServiceFactory: ?*InputAutomationGenericModuleServiceFactory = Inheritance.upcast(?*InputAutomationGenericModuleServiceFactory, InputAutomationGenericModuleServiceFactory.getInstance());
        _ = Inheritance.call(self, "setInputAutomationModuleInterface", .{ Inheritance.receiver(inputAutomationGenericModuleServiceFactory.?, "getInputAutomationModuleInterfaceArray").getInputAutomationModuleInterfaceArray() });
        _ = Inheritance.call(self, "setServiceFactory", .{ inputAutomationGenericModuleServiceFactory });
    }
};

