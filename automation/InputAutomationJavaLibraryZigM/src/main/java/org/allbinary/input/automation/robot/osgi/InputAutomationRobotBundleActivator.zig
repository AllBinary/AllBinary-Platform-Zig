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
// package org.allbinary.input.automation.robot.osgi

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BundleActivator = @import("org/osgi/framework/BundleActivator.zig").BundleActivator;
const BundleContext = @import("org/osgi/framework/BundleContext.zig").BundleContext;
const ServiceFactory = @import("org/osgi/framework/ServiceFactory.zig").ServiceFactory;
const ServiceReference = @import("org/osgi/framework/ServiceReference.zig").ServiceReference;
const InputAutomationRobotChangeListener = @import("bundle/input/automation/robot/InputAutomationRobotChangeListener.zig").InputAutomationRobotChangeListener;
const InputAutomationRobotServiceInterface = @import("bundle/input/automation/robot/InputAutomationRobotServiceInterface.zig").InputAutomationRobotServiceInterface;
const InputRobotInterface = @import("org/allbinary/input/automation/robot/InputRobotInterface.zig").InputRobotInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const OSGIActivatorUtil = @import("org/allbinary/osgi/OSGIActivatorUtil.zig").OSGIActivatorUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const InputAutomationRobotChangeEvent = @import("org/allbinary/input/automation/robot/osgi/InputAutomationRobotChangeEvent.zig").InputAutomationRobotChangeEvent;
const InputAutomationRobotUtil = @import("org/allbinary/input/automation/robot/osgi/InputAutomationRobotUtil.zig").InputAutomationRobotUtil;

pub const InputAutomationRobotBundleActivator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    inputRobotInterface: []?*InputRobotInterface = &.{},
    serviceFactory: ?*ServiceFactory = null,
    // Implements BundleActivator

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.inputRobotInterface = &.{};
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
    pub fn registerAsService(self: *Self, bundleContext: ?*BundleContext) void {
        _ = Inheritance.callStatic(OSGIActivatorUtil, "registerAsService", .{ bundleContext, self.getServiceFactory(), Inheritance.receiverOf(InputAutomationRobotServiceInterface.?, "getName").getName() });
    }
    

    // throws Exception
    pub fn getInputAutomationRobotChangeListener(self: *Self, context: ?*BundleContext) ?*InputAutomationRobotChangeListener {
        const serviceReference: ?*ServiceReference = Inheritance.upcast(?*ServiceReference, Inheritance.call(context.?, "getServiceReference", .{ Inheritance.receiverOf(InputAutomationRobotChangeListener.?, "getName").getName() }));
        if (serviceReference != null) {
            const inputAutomationRobotChangeListener: ?*InputAutomationRobotChangeListener = Inheritance.cast(?*InputAutomationRobotChangeListener, Inheritance.call(context.?, "getService", .{ serviceReference }));
            if (inputAutomationRobotChangeListener == null) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("No Service For ServiceReference"); break :exception error.Exception; }});
            }
            return inputAutomationRobotChangeListener;
        } else {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("No ServiceReference: "), Inheritance.receiverOf(InputAutomationRobotChangeListener.?, "getName").getName()), self, String.literal("getInputAutomationRobotChangeListener") });
            return null;
        }
    }
    

    pub fn addRobots(self: *Self, context: ?*BundleContext) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("addRobots") });
            const inputAutomationRobotChangeListener: ?*InputAutomationRobotChangeListener = Inheritance.upcast(?*InputAutomationRobotChangeListener, Inheritance.call(self, "getInputAutomationRobotChangeListener", .{ context }));
            if (inputAutomationRobotChangeListener != null) {
                {
                    var index: i32 = 0;
                    while (index < @as(i32, @intCast(self.getInputRobotInterface().len))) : (index += 1) {
                    const inputAutomationRobotChangeEvent: ?*InputAutomationRobotChangeEvent = Inheritance.upcast(?*InputAutomationRobotChangeEvent, Inheritance.callStatic(InputAutomationRobotUtil, "getChangeEvent", .{ self.getInputRobotInterface()[@intCast(index)] }));
                    _ = Inheritance.call(inputAutomationRobotChangeListener.?, "onAdd", .{ inputAutomationRobotChangeEvent });
                    }
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.EXCEPTION, self, String.literal("addModules") });
    }
    

    pub fn removeRobots(self: *Self, context: ?*BundleContext) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("removeRobots") });
            const inputAutomationRobotChangeListener: ?*InputAutomationRobotChangeListener = Inheritance.upcast(?*InputAutomationRobotChangeListener, Inheritance.call(self, "getInputAutomationRobotChangeListener", .{ context }));
            if (inputAutomationRobotChangeListener != null) {
                {
                    var index: i32 = 0;
                    while (index < @as(i32, @intCast(self.getInputRobotInterface().len))) : (index += 1) {
                    const inputAutomationRobotChangeEvent: ?*InputAutomationRobotChangeEvent = Inheritance.upcast(?*InputAutomationRobotChangeEvent, Inheritance.callStatic(InputAutomationRobotUtil, "getChangeEvent", .{ self.getInputRobotInterface()[@intCast(index)] }));
                    _ = Inheritance.call(inputAutomationRobotChangeListener.?, "onRemove", .{ inputAutomationRobotChangeEvent });
                    }
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.EXCEPTION, self, String.literal("removeRobots") });
    }
    

    // throws Exception
    pub fn start(self: *Self, context: ?*BundleContext) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.START });
        _ = Inheritance.call(self, "addRobots", .{ context });
        _ = Inheritance.call(self, "registerAsService", .{ context });
    }
    

    // throws Exception
    pub fn stop(self: *Self, context: ?*BundleContext) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Stop"), self, self.commonStrings.?.START });
        _ = Inheritance.call(self, "removeRobots", .{ context });
    }
    

    pub fn getServiceFactory(self: *Self) ?Object {
        return Inheritance.upcast(?Object, self.serviceFactory);
    }
    

    pub fn setServiceFactory(self: *Self, serviceObject: ?*ServiceFactory) void {
        self.serviceFactory = serviceObject;
    }
    

    pub fn getInputRobotInterface(self: *Self) []?*InputRobotInterface {
        return self.inputRobotInterface;
    }
    

    pub fn setInputRobotInterface(self: *Self, inputRobotInterface: []?*InputRobotInterface) void {
        self.inputRobotInterface = inputRobotInterface;
    }
};

