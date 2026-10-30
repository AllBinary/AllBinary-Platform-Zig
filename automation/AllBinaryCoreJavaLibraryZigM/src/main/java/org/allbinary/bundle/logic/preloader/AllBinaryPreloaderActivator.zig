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
// package org.allbinary.bundle.logic.preloader

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BundleActivator = @import("org/osgi/framework/BundleActivator.zig").BundleActivator;
const BundleContext = @import("org/osgi/framework/BundleContext.zig").BundleContext;
const ServiceReference = @import("org/osgi/framework/ServiceReference.zig").ServiceReference;
const ServiceRegistration = @import("org/osgi/framework/ServiceRegistration.zig").ServiceRegistration;
const CryptServiceFactory = @import("org/allbinary/bundle/logic/system/loader/CryptServiceFactory.zig").CryptServiceFactory;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;

pub const AllBinaryPreloaderActivator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.bundle.logic.preloader.AllBinaryPreloaderActivator";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    // Implements BundleActivator
    var context: ?*BundleContext = null;
    const CRYPT_REGISTRY_NAME: ?*String = String.literal("bundle.abcs.logic.system.loader.CryptService");

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
        return Inheritance.upcast(?*BundleContext, AllBinaryPreloaderActivator.context);
    }
    

    // throws Exception
    pub fn start(self: *Self, context_: ?*BundleContext) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("start") });
            AllBinaryPreloaderActivator.context = Inheritance.upcast(@TypeOf(AllBinaryPreloaderActivator.context), context_);
            _ = self.registerAsService();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("start"), e });
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn registerAsService(self: *Self) void {
        _ = self;
        const properties: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        const serviceRegistration: ?*ServiceRegistration = Inheritance.upcast(?*ServiceRegistration, Inheritance.call(AllBinaryPreloaderActivator.context.?, "registerService", .{ AllBinaryPreloaderActivator.CRYPT_REGISTRY_NAME, CryptServiceFactory.create(), properties }));
        var serviceReference: ?*ServiceReference = Inheritance.upcast(?*ServiceReference, serviceRegistration.?.getReference());
        serviceReference = Inheritance.upcast(@TypeOf(serviceReference), Inheritance.call(AllBinaryPreloaderActivator.context.?, "getServiceReference", .{ AllBinaryPreloaderActivator.CRYPT_REGISTRY_NAME }));
        if (serviceReference == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No Such Service Reference"); break :exception error.Exception; }});
        }
    }
    

    // throws Exception
    pub fn stop(self: *Self, context_: ?*BundleContext) void {
        _ = context_;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("stop") });
    }
};

