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
// package org.allbinary.logic.system.os.android

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;
const NoOperatingSystem = @import("org/allbinary/logic/system/os/NoOperatingSystem.zig").NoOperatingSystem;
const OperatingSystems = @import("org/allbinary/logic/system/os/OperatingSystems.zig").OperatingSystems;
const SystemProperties = @import("org/allbinary/logic/system/os/SystemProperties.zig").SystemProperties;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AndroidOS = @import("org/allbinary/logic/system/os/android/AndroidOS.zig").AndroidOS;

pub const AndroidOperatingSystemFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.os.android.AndroidOperatingSystemFactory";
    logUtil: ?*LogUtil = null,
    tsUtil: ?*TsUtil = null,
    var instance: ?*AndroidOperatingSystemFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AndroidOperatingSystemFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
    }
    

    pub fn getInstance() ?*AndroidOperatingSystemFactory {
        return Inheritance.upcast(?*AndroidOperatingSystemFactory, AndroidOperatingSystemFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getOperatingSystemInstance(self: *Self) ?*GenericOperatingSystem {
        { // try
            var GenericOperatingSystem_: ?*GenericOperatingSystem = null;
            const systemProperties: ?*SystemProperties = Inheritance.upcast(?*SystemProperties, SystemProperties.getInstance());
            const osName: ?*String = Inheritance.upcast(?*String, systemProperties.?.getName());
            if (Inheritance.call(self.tsUtil.?, "compareTo", .{ osName, OperatingSystems.getInstance().?.ANDROID }) == 0) {
                GenericOperatingSystem_ = Inheritance.upcast(@TypeOf(GenericOperatingSystem_), AndroidOS.create());
            } else {
                if (Inheritance.receiverOf(OperatingSystems.getInstance().?, "isUnknownSpecificOSAllowed").isUnknownSpecificOSAllowed()) {
                    GenericOperatingSystem_ = Inheritance.upcast(@TypeOf(GenericOperatingSystem_), AndroidOS.create());
                } else {
                    std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Specific Android OS Not Supported: "), osName); break :exception error.Exception; }});
                }
            }
            return GenericOperatingSystem_;
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to get OperatingSystem returning NoOperatingSystem"), self, commonStrings.?.GET_INSTANCE, e });
//             return Inheritance.upcast(?*GenericOperatingSystem, NoOperatingSystem.NO_OPERATING_SYSTEM);
    }
};

