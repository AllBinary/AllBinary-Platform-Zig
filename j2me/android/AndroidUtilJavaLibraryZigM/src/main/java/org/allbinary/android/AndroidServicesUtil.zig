// 
// AllBinary Open License Version 1 
// Copyright (c) 2019 AllBinary 
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
// package org.allbinary.android

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const List = @import("java/util/List.zig").List;
const ActivityManager = @import("android/app/ActivityManager.zig").ActivityManager;
const RunningServiceInfo = @import("android/app/ActivityManager/RunningServiceInfo.zig").RunningServiceInfo;
const ComponentName = @import("android/content/ComponentName.zig").ComponentName;
const Context = @import("android/content/Context.zig").Context;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;

pub const AndroidServicesUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.AndroidServicesUtil";
    logUtil: ?*LogUtil = null,
    resourceUtil: ?*ResourceUtil = null,
    SERVICE_LIMIT_MAX: i32 = 0,
    IS_SERVICE_RUNNING: ?*String = null,
    SERVICE_NOT_FOUND_RUNNING: ?*String = null,
    var instance: ?*AndroidServicesUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AndroidServicesUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.resourceUtil = Inheritance.upcast(?*ResourceUtil, ResourceUtil.getInstance());
        this.SERVICE_LIMIT_MAX = 1000;
        this.IS_SERVICE_RUNNING = String.literal("isServiceRunning");
        this.SERVICE_NOT_FOUND_RUNNING = String.literal("Service not found Running: ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*AndroidServicesUtil {
        return Inheritance.upcast(?*AndroidServicesUtil, AndroidServicesUtil.instance);
    }
    

    pub fn isServiceRunning(self: *Self, name: ?*String) bool {
        const activityManager: ?*ActivityManager = Inheritance.cast(?*ActivityManager, Inheritance.call(self.resourceUtil.?.getContext().?, "getSystemService", .{ Context.ACTIVITY_SERVICE }));
        const runningServicesList: ?*List = Inheritance.upcast(?*List, Inheritance.call(activityManager.?, "getRunningServices", .{ self.SERVICE_LIMIT_MAX }));
        var runningServiceInfo: ?*RunningServiceInfo = null;
        var serviceComponent: ?*ComponentName = null;
        var serviceName: ?*String = null;
        const size: i32 = runningServicesList.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            runningServiceInfo = Inheritance.upcast(@TypeOf(runningServiceInfo), Inheritance.call(runningServicesList.?, "get", .{ index }));
            serviceComponent = Inheritance.upcast(@TypeOf(serviceComponent), runningServiceInfo.?.service);
            serviceName = Inheritance.upcast(@TypeOf(serviceName), Object.toString(Object.of(serviceComponent)));
            if (Inheritance.call(serviceName.?, "indexOf", .{ name }) >= 0) {
                return true;
            }
            }
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.SERVICE_NOT_FOUND_RUNNING, name), self, self.IS_SERVICE_RUNNING });
        return false;
    }
};

