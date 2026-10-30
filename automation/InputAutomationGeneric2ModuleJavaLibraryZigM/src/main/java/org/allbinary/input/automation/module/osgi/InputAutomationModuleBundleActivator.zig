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
const BundleActivator = @import("org/osgi/framework/BundleActivator.zig").BundleActivator;
const BundleContext = @import("org/osgi/framework/BundleContext.zig").BundleContext;
const ServiceFactory = @import("org/osgi/framework/ServiceFactory.zig").ServiceFactory;
const ServiceReference = @import("org/osgi/framework/ServiceReference.zig").ServiceReference;
const InputAutomationModuleServiceInterface = @import("bundle/input/automation/module/InputAutomationModuleServiceInterface.zig").InputAutomationModuleServiceInterface;
const InputAutomationConfigurationModuleChangeListener = @import("bundle/input/automation/module/configuration/InputAutomationConfigurationModuleChangeListener.zig").InputAutomationConfigurationModuleChangeListener;
const InputAutomationConfigurationModuleChangeEvent = @import("org/allbinary/input/automation/configuration/InputAutomationConfigurationModuleChangeEvent.zig").InputAutomationConfigurationModuleChangeEvent;
const InputAutomationConfigurationUtil = @import("org/allbinary/input/automation/configuration/InputAutomationConfigurationUtil.zig").InputAutomationConfigurationUtil;
const InputAutomationModuleFactoryInterface = @import("org/allbinary/input/automation/module/InputAutomationModuleFactoryInterface.zig").InputAutomationModuleFactoryInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const OSGIActivatorUtil = @import("org/allbinary/osgi/OSGIActivatorUtil.zig").OSGIActivatorUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const InputAutomationModuleBundleActivator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    inputAutomationModuleInterface: []?*InputAutomationModuleFactoryInterface = &.{},
    serviceFactory: ?*ServiceFactory = null,
    // Implements BundleActivator

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.inputAutomationModuleInterface = &.{};
        this.serviceFactory = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = this.init();
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getInputAutomationConfigurationModuleChangeListener(self: *Self, context: ?*BundleContext) ?*InputAutomationConfigurationModuleChangeListener {
        const serviceReference: ?*ServiceReference = Inheritance.upcast(?*ServiceReference, Inheritance.call(context.?, "getServiceReference", .{ Inheritance.receiverOf(InputAutomationConfigurationModuleChangeListener.?, "getName").getName() }));
        if (serviceReference != null) {
            const inputAutomationConfigurationModuleChangeListener: ?*InputAutomationConfigurationModuleChangeListener = Inheritance.cast(?*InputAutomationConfigurationModuleChangeListener, Inheritance.call(context.?, "getService", .{ serviceReference }));
            if (inputAutomationConfigurationModuleChangeListener == null) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("No Service For ServiceReference"); break :exception error.Exception; }});
            }
            return inputAutomationConfigurationModuleChangeListener;
        } else {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("No ServiceReference: "), Inheritance.receiverOf(InputAutomationConfigurationModuleChangeListener.?, "getName").getName()), self, String.literal("addModules") });
            return null;
        }
    }
    

    pub fn addModules(self: *Self, context: ?*BundleContext) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("addModules") });
            const inputAutomationConfigurationModuleChangeListener: ?*InputAutomationConfigurationModuleChangeListener = Inheritance.upcast(?*InputAutomationConfigurationModuleChangeListener, Inheritance.call(self, "getInputAutomationConfigurationModuleChangeListener", .{ context }));
            if (inputAutomationConfigurationModuleChangeListener != null) {
                {
                    var index: i32 = 0;
                    while (index < @as(i32, @intCast(self.getInputAutomationModuleInterface().len))) : (index += 1) {
                    const inputAutomationConfigurationModuleChangeEvent: ?*InputAutomationConfigurationModuleChangeEvent = Inheritance.upcast(?*InputAutomationConfigurationModuleChangeEvent, Inheritance.callStatic(InputAutomationConfigurationUtil, "getChangeEvent", .{ self.getInputAutomationModuleInterface()[@intCast(index)] }));
                    _ = Inheritance.call(inputAutomationConfigurationModuleChangeListener.?, "onAdd", .{ inputAutomationConfigurationModuleChangeEvent });
                    }
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.EXCEPTION, self, String.literal("addModules") });
    }
    

    // throws Exception
    pub fn registerAsService(self: *Self, bundleContext: ?*BundleContext) void {
        _ = Inheritance.callStatic(OSGIActivatorUtil, "registerAsService", .{ bundleContext, self.getServiceFactory(), Inheritance.receiverOf(InputAutomationModuleServiceInterface.?, "getName").getName() });
    }
    

    pub fn removeModules(self: *Self, context: ?*BundleContext) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("removeModules") });
            const inputAutomationConfigurationModuleChangeListener: ?*InputAutomationConfigurationModuleChangeListener = Inheritance.upcast(?*InputAutomationConfigurationModuleChangeListener, Inheritance.call(self, "getInputAutomationConfigurationModuleChangeListener", .{ context }));
            if (inputAutomationConfigurationModuleChangeListener != null) {
                {
                    var index: i32 = 0;
                    while (index < @as(i32, @intCast(self.getInputAutomationModuleInterface().len))) : (index += 1) {
                    const inputAutomationConfigurationModuleChangeEvent: ?*InputAutomationConfigurationModuleChangeEvent = Inheritance.upcast(?*InputAutomationConfigurationModuleChangeEvent, Inheritance.callStatic(InputAutomationConfigurationUtil, "getChangeEvent", .{ self.getInputAutomationModuleInterface()[@intCast(index)] }));
                    _ = Inheritance.call(inputAutomationConfigurationModuleChangeListener.?, "onRemove", .{ inputAutomationConfigurationModuleChangeEvent });
                    }
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.EXCEPTION, self, String.literal("removeModules") });
    }
    

    // throws Exception
    pub fn start(self: *Self, context: ?*BundleContext) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.START });
        _ = Inheritance.call(self, "addModules", .{ context });
        _ = Inheritance.call(self, "registerAsService", .{ context });
    }
    

    // throws Exception
    pub fn stop(self: *Self, context: ?*BundleContext) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("stop") });
        _ = Inheritance.call(self, "removeModules", .{ context });
    }
    

    pub fn getInputAutomationModuleInterface(self: *Self) []?*InputAutomationModuleFactoryInterface {
        return self.inputAutomationModuleInterface;
    }
    

    pub fn setInputAutomationModuleInterface(self: *Self, inputAutomationModuleInterface: []?*InputAutomationModuleFactoryInterface) void {
        self.inputAutomationModuleInterface = inputAutomationModuleInterface;
    }
    

    pub fn getServiceFactory(self: *Self) ?Object {
        return Inheritance.upcast(?Object, self.serviceFactory);
    }
    

    pub fn setServiceFactory(self: *Self, serviceObject: ?*ServiceFactory) void {
        self.serviceFactory = serviceObject;
    }
};

