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
// package org.allbinary.osgi.service

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BundleContext = @import("org/osgi/framework/BundleContext.zig").BundleContext;
const ServiceReference = @import("org/osgi/framework/ServiceReference.zig").ServiceReference;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const OSGIServiceInterface = @import("org/allbinary/osgi/OSGIServiceInterface.zig").OSGIServiceInterface;
const OSGIServiceVisitorInterface = @import("org/allbinary/osgi/OSGIServiceVisitorInterface.zig").OSGIServiceVisitorInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const OSGIServiceUtil = @import("org/allbinary/osgi/service/OSGIServiceUtil.zig").OSGIServiceUtil;

pub const InputAutomationServiceConsumer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.osgi.service.InputAutomationServiceConsumer";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    osgiServiceUtil: ?*OSGIServiceUtil = null,
    registryName: ?*String = null,
    bundleContext: ?*BundleContext = null,
    osgiServiceVisitorInterface: ?*OSGIServiceVisitorInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.osgiServiceUtil = Inheritance.upcast(?*OSGIServiceUtil, OSGIServiceUtil.getInstance());
        this.registryName = null;
        this.bundleContext = null;
        this.osgiServiceVisitorInterface = null;
    }
    

    pub fn create3(registryName: ?*String, bundleContext: ?*BundleContext, osgiServiceVisitorInterface: ?*OSGIServiceVisitorInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setRegistryName", .{ registryName });
        _ = Inheritance.call(this, "setBundleContext", .{ bundleContext });
        _ = Inheritance.call(this, "setOsgiServiceVisitorInterface", .{ osgiServiceVisitorInterface });
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.PROCESS });
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.osgiServiceUtil.?, "getServicesObjectVector", .{ self.getBundleContext(), self.getServiceReferences() }));
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.literal("Processing "), vector.?.size()), String.literal(" Services")), self, self.commonStrings.?.PROCESS });
        const size: i32 = vector.?.size();
        var osgiServiceInterface: ?*OSGIServiceInterface = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            osgiServiceInterface = Inheritance.cast(?*OSGIServiceInterface, Inheritance.call(vector.?, "get", .{ index }));
            if (!Inheritance.call(self.getOsgiServiceVisitorInterface().?, "visit", .{ osgiServiceInterface })) {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Unable to process service: "), osgiServiceInterface); break :exception error.Exception; }});
            }
            }
        }
    }
    

    // throws Exception
    pub fn getServiceReferences(self: *Self) []?*ServiceReference {
        return Inheritance.call(self.getBundleContext().?, "getServiceReferences", .{ self.getRegistryName(), null });
    }
    

    pub fn getBundleContext(self: *Self) ?*BundleContext {
        return self.bundleContext;
    }
    

    pub fn setBundleContext(self: *Self, aBundleContext: ?*BundleContext) void {
        self.bundleContext = aBundleContext;
    }
    

    pub fn getRegistryName(self: *Self) ?*String {
        return self.registryName;
    }
    

    pub fn setRegistryName(self: *Self, registryName: ?*String) void {
        self.registryName = registryName;
    }
    

    pub fn getOsgiServiceVisitorInterface(self: *Self) ?*OSGIServiceVisitorInterface {
        return self.osgiServiceVisitorInterface;
    }
    

    pub fn setOsgiServiceVisitorInterface(self: *Self, osgiServiceVisitorInterface: ?*OSGIServiceVisitorInterface) void {
        self.osgiServiceVisitorInterface = osgiServiceVisitorInterface;
    }
};

