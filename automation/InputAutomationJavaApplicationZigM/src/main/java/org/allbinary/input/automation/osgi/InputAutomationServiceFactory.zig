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
// package org.allbinary.input.automation.osgi

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Bundle = @import("org/osgi/framework/Bundle.zig").Bundle;
const ServiceFactory = @import("org/osgi/framework/ServiceFactory.zig").ServiceFactory;
const ServiceRegistration = @import("org/osgi/framework/ServiceRegistration.zig").ServiceRegistration;
const InputAutomationJFrame = @import("org/allbinary/input/automation/InputAutomationJFrame.zig").InputAutomationJFrame;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const InputAutomationServiceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.osgi.InputAutomationServiceFactory";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    // Implements ServiceFactory
    var inputAutomationServiceFactory: ?*InputAutomationServiceFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        inputAutomationServiceFactory = InputAutomationServiceFactory.create();
    }

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
    

    pub fn getInstance() ?*InputAutomationServiceFactory {
        return Inheritance.upcast(?*InputAutomationServiceFactory, InputAutomationServiceFactory.inputAutomationServiceFactory);
    }
    

    pub fn getService(self: *Self, bundle: ?*Bundle, registration: ?*ServiceRegistration) ?Object {
        _ = bundle;
        _ = registration;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("getService") });
        return Inheritance.upcast(?Object, InputAutomationJFrame.getInstance());
    }
    

    pub fn ungetService(self: *Self, bundle: ?*Bundle, registration: ?*ServiceRegistration, service: ?Object) void {
        _ = bundle;
        _ = registration;
        _ = service;
        _ = self;
    }
};

