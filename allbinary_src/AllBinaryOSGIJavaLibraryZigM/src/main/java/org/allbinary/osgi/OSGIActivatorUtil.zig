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
// package org.allbinary.osgi

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BundleContext = @import("org/osgi/framework/BundleContext.zig").BundleContext;
const NullServiceReferenceFactory = @import("org/osgi/framework/NullServiceReferenceFactory.zig").NullServiceReferenceFactory;
const ServiceReference = @import("org/osgi/framework/ServiceReference.zig").ServiceReference;
const ServiceRegistration = @import("org/osgi/framework/ServiceRegistration.zig").ServiceRegistration;

pub const OSGIActivatorUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.osgi.OSGIActivatorUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn registerAsService(bundleContext: ?*BundleContext, anyType: ?Object, serviceName: ?*String) void {
        _ = Inheritance.callStatic(OSGIActivatorUtil, "registerAsService", .{ bundleContext, anyType, serviceName, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable() });
    }
    

    // throws Exception
    pub fn registerAsService4(bundleContext: ?*BundleContext, anyType: ?Object, serviceName: ?*String, properties: ?*ABHashtable) void {
        const serviceRegistration: ?*ServiceRegistration = Inheritance.upcast(?*ServiceRegistration, Inheritance.call(bundleContext.?, "registerService", .{ serviceName, anyType, properties }));
        var serviceReference: ?*ServiceReference = Inheritance.upcast(?*ServiceReference, serviceRegistration.?.getReference());
        serviceReference = Inheritance.upcast(@TypeOf(serviceReference), Inheritance.call(bundleContext.?, "getServiceReference", .{ serviceName }));
        if (Object.same(serviceReference, NullServiceReferenceFactory.getInstance().?.NULL_SERVICE_REFERENCE)) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No Such Service Reference"); break :exception error.Exception; }});
        }
    }
};

