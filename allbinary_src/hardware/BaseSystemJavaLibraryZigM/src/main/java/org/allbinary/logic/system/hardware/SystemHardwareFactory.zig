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
// package org.allbinary.logic.system.hardware

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const HardwareFactory = @import("org/allbinary/logic/system/hardware/HardwareFactory.zig").HardwareFactory;
const HardwareInterface = @import("org/allbinary/logic/system/hardware/HardwareInterface.zig").HardwareInterface;
const NoHardware = @import("org/allbinary/logic/system/hardware/NoHardware.zig").NoHardware;

pub const SystemHardwareFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.SystemHardwareFactory";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    hardwareInterface: ?*HardwareInterface = null,
    var instance: ?*SystemHardwareFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SystemHardwareFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.hardwareInterface = Inheritance.upcast(?*HardwareInterface, NoHardware.getInstance());
    }
    

    pub fn getInstance() ?*SystemHardwareFactory {
        return Inheritance.upcast(?*SystemHardwareFactory, SystemHardwareFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance1(self: *Self, operatingSystemInterface: ?*GenericOperatingSystem) ?*HardwareInterface {
        { // try
            if (Object.same(self.hardwareInterface, NoHardware.getInstance())) {
                self.hardwareInterface = Inheritance.upcast(@TypeOf(self.hardwareInterface), Inheritance.call(HardwareFactory.getInstance().?, "getInstance", .{ operatingSystemInterface }));
            }
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Found Hardware"), self, self.commonStrings.?.CONSTRUCTOR });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.CONSTRUCTOR, e });
        return self.hardwareInterface;
    }
    

    pub fn static_toString() ?*String {
        const systemHardwareFactory: ?*SystemHardwareFactory = Inheritance.upcast(?*SystemHardwareFactory, SystemHardwareFactory.getInstance());
        const osBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(osBuffer.?, "append", .{ String.literal("Hardware Info: \n") });
        if (systemHardwareFactory.?.hardwareInterface != null) {
            _ = Inheritance.call(osBuffer.?, "append", .{ Object.toString(Object.of(systemHardwareFactory.?.hardwareInterface)) });
        } else {
            _ = Inheritance.call(osBuffer.?, "append", .{ StringUtil.getInstance().?.NULL_STRING });
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(osBuffer)));
    }
};

