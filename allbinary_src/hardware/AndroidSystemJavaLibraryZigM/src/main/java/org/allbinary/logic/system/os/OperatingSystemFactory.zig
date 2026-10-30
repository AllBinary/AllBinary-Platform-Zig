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
// package org.allbinary.logic.system.os

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AndroidOperatingSystemFactory = @import("org/allbinary/logic/system/os/android/AndroidOperatingSystemFactory.zig").AndroidOperatingSystemFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;
const NoOperatingSystem = @import("org/allbinary/logic/system/os/NoOperatingSystem.zig").NoOperatingSystem;
const OperatingSystems = @import("org/allbinary/logic/system/os/OperatingSystems.zig").OperatingSystems;
const SystemProperties = @import("org/allbinary/logic/system/os/SystemProperties.zig").SystemProperties;

pub const OperatingSystemFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.os.OperatingSystemFactory";
    logUtil: ?*LogUtil = null,
    genericOperatingSystem: ?*GenericOperatingSystem = null,
    hasDetected: bool = false,
    var instance: ?*OperatingSystemFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OperatingSystemFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.genericOperatingSystem = Inheritance.upcast(?*GenericOperatingSystem, NoOperatingSystem.NO_OPERATING_SYSTEM);
        this.hasDetected = false;
    }
    

    pub fn getInstance() ?*OperatingSystemFactory {
        return Inheritance.upcast(?*OperatingSystemFactory, OperatingSystemFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getOperatingSystemInstance(self: *Self) ?*GenericOperatingSystem {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        { // try
            const systemProperties: ?*SystemProperties = Inheritance.upcast(?*SystemProperties, SystemProperties.getInstance());
            const osName: ?*String = Inheritance.upcast(?*String, systemProperties.?.getName());
            if (!self.hasDetected) {
                self.hasDetected = true;
                if (Inheritance.call(osName.?, "indexOf", .{ OperatingSystems.getInstance().?.ANDROID }) >= 0) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Found a Android OS"), self, commonStrings.?.GET_INSTANCE });
                    self.genericOperatingSystem = Inheritance.upcast(@TypeOf(self.genericOperatingSystem), Inheritance.receiverOf(AndroidOperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance());
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Operating System Info: ") }).?, "append", .{ Object.toString(Object.of(self.genericOperatingSystem)) }))), self, commonStrings.?.GET_INSTANCE });
                } else if (Inheritance.call(osName.?, "indexOf", .{ OperatingSystems.getInstance().?.HARMONY }) >= 0) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Found a Harmony OS"), self, commonStrings.?.GET_INSTANCE });
                    self.genericOperatingSystem = Inheritance.upcast(@TypeOf(self.genericOperatingSystem), Inheritance.receiverOf(AndroidOperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance());
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Operating System Info: ") }).?, "append", .{ Object.toString(Object.of(self.genericOperatingSystem)) }))), self, commonStrings.?.GET_INSTANCE });
                } else {
                    std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("OS Not Supported: ") }).?, "append", .{ osName }))); break :exception error.Exception; }});
                }
            }
        }
        // catch (Exception e):
//             self.genericOperatingSystem = Inheritance.upcast(@TypeOf(self.genericOperatingSystem), NoOperatingSystem.NO_OPERATING_SYSTEM);
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET_INSTANCE, e });
        return self.genericOperatingSystem;
    }
};

