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
// package org.allbinary.input.automation.module.osgi

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BundleContext = @import("org/osgi/framework/BundleContext.zig").BundleContext;
const InputAutomationModuleServiceInterface = @import("bundle/input/automation/module/InputAutomationModuleServiceInterface.zig").InputAutomationModuleServiceInterface;
const InputAutomationServiceConsumer = @import("org/allbinary/osgi/service/InputAutomationServiceConsumer.zig").InputAutomationServiceConsumer;
const InputAutomationModuleOSGIServiceVisitor = @import("org/allbinary/input/automation/module/osgi/InputAutomationModuleOSGIServiceVisitor.zig").InputAutomationModuleOSGIServiceVisitor;

pub const InputAutomationModuleServiceConsumer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer";
    base: InputAutomationServiceConsumer = undefined,
    

    pub fn create1(bundleContext: ?*BundleContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(InputAutomationServiceConsumer, "create3", .{ Inheritance.receiverOf(InputAutomationModuleServiceInterface.?, "getName").getName(), bundleContext, InputAutomationModuleOSGIServiceVisitor.create() }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

