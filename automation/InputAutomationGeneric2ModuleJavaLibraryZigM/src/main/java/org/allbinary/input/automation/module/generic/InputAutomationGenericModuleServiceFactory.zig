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
const InputAutomationModuleFactoryInterface = @import("org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface.zig").InputAutomationModuleFactoryInterface;
const InputAutomationModuleServiceFactory = @import("org/allbinary/input/automation/module/osgi/InputAutomationModuleServiceFactory.zig").InputAutomationModuleServiceFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const GenericModuleFactory = @import("org/allbinary/input/automation/module/generic/GenericModuleFactory.zig").GenericModuleFactory;

pub const InputAutomationGenericModuleServiceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.InputAutomationGenericModuleServiceFactory";
    base: InputAutomationModuleServiceFactory = undefined,
    logUtil: ?*LogUtil = null,
    var inputAutomationGenericModuleServiceFactory: ?*InputAutomationGenericModuleServiceFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        inputAutomationGenericModuleServiceFactory = InputAutomationGenericModuleServiceFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = InputAutomationModuleServiceFactory.create().*;
        this.initFields();
        { // try
            const inputAutomationModuleInterfaceArray: []?*InputAutomationModuleFactoryInterface = array_N65837: { const array_N65837_array = allocator.alloc(?*InputAutomationModuleFactoryInterface, @intCast(1)) catch unreachable; @memset(array_N65837_array, null); break :array_N65837 array_N65837_array; };
            inputAutomationModuleInterfaceArray[@intCast(0)] = Inheritance.upcast(@TypeOf(inputAutomationModuleInterfaceArray[@intCast(0)]), GenericModuleFactory.create());
            _ = Inheritance.call(this, "setInputAutomationModuleInterfaceArray", .{ inputAutomationModuleInterfaceArray });
        }
        // catch (Exception e):
//             _ = Inheritance.call(this.logUtil.?, "put", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.EXCEPTION, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR, e });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*InputAutomationGenericModuleServiceFactory {
        return Inheritance.upcast(?*InputAutomationGenericModuleServiceFactory, InputAutomationGenericModuleServiceFactory.inputAutomationGenericModuleServiceFactory);
    }
};

