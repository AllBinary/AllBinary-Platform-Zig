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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;
const NoOperatingSystem = @import("org/allbinary/logic/system/os/NoOperatingSystem.zig").NoOperatingSystem;
const System = @import("java/lang/System.zig").System;

pub const OperatingSystemFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.os.OperatingSystemFactory";
    logUtil: ?*LogUtil = null,
    genericOperatingSystem: ?*GenericOperatingSystem = null,
    var instance: ?*OperatingSystemFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OperatingSystemFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.genericOperatingSystem = Inheritance.upcast(?*GenericOperatingSystem, NoOperatingSystem.NO_OPERATING_SYSTEM);
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
            const osString: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("OperatingSystem Info: ") }).?, "append", .{ Object.toString(Object.of(self.genericOperatingSystem)) }))));
            _ = std.debug.print("{s}\n", .{String.text(osString)});
            _ = Inheritance.call(self.logUtil.?, "putF", .{ osString, self, commonStrings.?.GET_INSTANCE });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET_INSTANCE, e });
        return self.genericOperatingSystem;
    }
};

