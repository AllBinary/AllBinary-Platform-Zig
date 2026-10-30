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
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const BundleContext = @import("org/osgi/framework/BundleContext.zig").BundleContext;
const ServiceReference = @import("org/osgi/framework/ServiceReference.zig").ServiceReference;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const OSGIServiceInterface = @import("org/allbinary/osgi/OSGIServiceInterface.zig").OSGIServiceInterface;

pub const OSGIServiceUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.osgi.service.OSGIServiceUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*OSGIServiceUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OSGIServiceUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*OSGIServiceUtil {
        return Inheritance.upcast(?*OSGIServiceUtil, OSGIServiceUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getServicesObjectVector(self: *Self, bundleContext: ?*BundleContext, serviceReferences: []?*ServiceReference) ?*BasicArrayList {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        if (serviceReferences != null) {
            const size: i32 = @as(i32, @intCast(serviceReferences.len));
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Service References: "), size), self, String.literal("getServicesObjectVector") });
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const serviceReference: ?*ServiceReference = Inheritance.upcast(?*ServiceReference, serviceReferences[@intCast(index)]);
                if (serviceReference != null) {
                    const osgiServiceInterface: ?*OSGIServiceInterface = Inheritance.cast(?*OSGIServiceInterface, Inheritance.call(bundleContext.?, "getService", .{ serviceReference }));
                    if (osgiServiceInterface == null) {
                        std.debug.panic("{any}", .{exception: { _ = String.literal("No Service For Reference"); break :exception error.Exception; }});
                    }
                    _ = Inheritance.call(vector.?, "add", .{ osgiServiceInterface });
                }
                }
            }
        }
        return vector;
    }
};

