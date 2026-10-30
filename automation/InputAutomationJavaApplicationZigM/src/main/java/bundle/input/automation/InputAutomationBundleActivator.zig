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
// package bundle.input.automation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BundleActivator = @import("org/osgi/framework/BundleActivator.zig").BundleActivator;
const BundleContext = @import("org/osgi/framework/BundleContext.zig").BundleContext;
const InputAutomationConfigurationModuleChangeListener = @import("bundle/input/automation/module/configuration/InputAutomationConfigurationModuleChangeListener.zig").InputAutomationConfigurationModuleChangeListener;
const InputAutomationRobotChangeListener = @import("bundle/input/automation/robot/InputAutomationRobotChangeListener.zig").InputAutomationRobotChangeListener;
const InputAutomationJFrame = @import("org/allbinary/input/automation/InputAutomationJFrame.zig").InputAutomationJFrame;
const InputAutomationModuleServiceConsumer = @import("org/allbinary/input/automation/module/osgi/InputAutomationModuleServiceConsumer.zig").InputAutomationModuleServiceConsumer;
const InputAutomationNewBundleRunnable = @import("org/allbinary/input/automation/module/osgi/InputAutomationNewBundleRunnable.zig").InputAutomationNewBundleRunnable;
const InputAutomationServiceFactory = @import("org/allbinary/input/automation/osgi/InputAutomationServiceFactory.zig").InputAutomationServiceFactory;
const InputAutomationRobotServiceConsumer = @import("org/allbinary/input/automation/robot/osgi/InputAutomationRobotServiceConsumer.zig").InputAutomationRobotServiceConsumer;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const OSGIActivatorUtil = @import("org/allbinary/osgi/OSGIActivatorUtil.zig").OSGIActivatorUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const InputAutomationBundleActivatorListenerInterface = @import("bundle/input/automation/InputAutomationBundleActivatorListenerInterface.zig").InputAutomationBundleActivatorListenerInterface;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const InputAutomationBundleActivator = struct {
    const Self = @This();
    pub const java_name = "bundle.input.automation.InputAutomationBundleActivator";
    pub const java_interfaces = .{ InputAutomationBundleActivatorListenerInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    // Implements BundleActivator
    // Implements InputAutomationBundleActivatorListenerInterface
    var moduleManagementThread: ?*Thread = null;
    var bundleContext: ?*BundleContext = null;

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
    

    pub fn getBundleContext() ?*BundleContext {
        return Inheritance.upcast(?*BundleContext, InputAutomationBundleActivator.bundleContext);
    }
    

    // throws Exception
    pub fn start(self: *Self, bundleContext_: ?*BundleContext) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.START });
            self.bundleContext = bundleContext_;
            InputAutomationBundleActivator.moduleManagementThread = Inheritance.upcast(@TypeOf(InputAutomationBundleActivator.moduleManagementThread), Inheritance.callStatic(Thread, "create1", .{ Inheritance.callStatic(InputAutomationNewBundleRunnable, "create1", .{ self }) }));
            _ = Inheritance.receiverOf(InputAutomationBundleActivator.moduleManagementThread.?, "start").start();
            _ = Inheritance.callStatic(InputAutomationJFrame, "create", .{ self });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.START, e });
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn registerAsService(self: *Self) void {
        _ = Inheritance.callStatic(OSGIActivatorUtil, "registerAsService", .{ self.getBundleContext(), InputAutomationServiceFactory.getInstance(), Inheritance.receiverOf(InputAutomationConfigurationModuleChangeListener.?, "getName").getName() });
        _ = Inheritance.callStatic(OSGIActivatorUtil, "registerAsService", .{ self.getBundleContext(), InputAutomationServiceFactory.getInstance(), Inheritance.receiverOf(InputAutomationRobotChangeListener.?, "getName").getName() });
    }
    

    // throws Exception
    pub fn useServices(self: *Self) void {
        _ = Inheritance.receiver(Inheritance.callStatic(InputAutomationRobotServiceConsumer, "create1", .{ self.getBundleContext() }), "process").process();
        _ = Inheritance.receiver(Inheritance.callStatic(InputAutomationModuleServiceConsumer, "create1", .{ self.getBundleContext() }), "process").process();
    }
    

    // throws Exception
    pub fn stop(self: *Self, context: ?*BundleContext) void {
        _ = context;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("stop") });
        if (InputAutomationJFrame.getInstance() != null) {
            _ = InputAutomationJFrame.destroy();
        } else {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Nothing to stop"), self, String.literal("stop") });
        }
    }
};

