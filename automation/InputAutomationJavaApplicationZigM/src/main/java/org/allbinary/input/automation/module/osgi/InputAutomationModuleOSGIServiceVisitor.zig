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
const InputAutomationModuleService = @import("bundle/input/automation/module/InputAutomationModuleService.zig").InputAutomationModuleService;
const InputAutomationJFrame = @import("org/allbinary/input/automation/InputAutomationJFrame.zig").InputAutomationJFrame;
const InputAutomationConfigurationUtil = @import("org/allbinary/input/automation/configuration/InputAutomationConfigurationUtil.zig").InputAutomationConfigurationUtil;
const InputAutomationModuleFactoryInterface = @import("org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface.zig").InputAutomationModuleFactoryInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const OSGIServiceInterface = @import("org/allbinary/osgi/OSGIServiceInterface.zig").OSGIServiceInterface;
const OSGIServiceVisitorInterface = @import("org/allbinary/osgi/OSGIServiceVisitorInterface.zig").OSGIServiceVisitorInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const InputAutomationModuleOSGIServiceVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    // Implements OSGIServiceVisitorInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn visit(self: *Self, anyType: ?Object) ?Object {
        return Inheritance.upcast(?Object, Inheritance.call(self, "visit", .{ Inheritance.cast(?*OSGIServiceInterface, anyType) }));
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn visit(self: *Self, osgiServiceInterface: ?*OSGIServiceInterface) ?*Boolean {
        _ = self;
        { // try
            const inputAutomationModuleService: ?*InputAutomationModuleService = Inheritance.cast(?*InputAutomationModuleService, osgiServiceInterface);
            const inputAutomationModuleInterfaceArray: []?*InputAutomationModuleFactoryInterface = inputAutomationModuleService.?.getInputAutomationModuleInterfaceArray();
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(inputAutomationModuleInterfaceArray.len))) : (index += 1) {
                _ = Inheritance.call(InputAutomationJFrame.getInstance().?, "onAdd", .{ Inheritance.callStatic(InputAutomationConfigurationUtil, "getChangeEvent", .{ inputAutomationModuleInterfaceArray[@intCast(index)] }) });
                }
            }
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("visit"), e });
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
};

