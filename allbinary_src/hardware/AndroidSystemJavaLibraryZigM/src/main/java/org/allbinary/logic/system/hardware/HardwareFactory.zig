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
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AndroidHardware = @import("org/allbinary/logic/system/hardware/android/AndroidHardware.zig").AndroidHardware;
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;
const OperatingSystems = @import("org/allbinary/logic/system/os/OperatingSystems.zig").OperatingSystems;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const HardwareInterface = @import("org/allbinary/logic/system/hardware/HardwareInterface.zig").HardwareInterface;
const NoHardware = @import("org/allbinary/logic/system/hardware/NoHardware.zig").NoHardware;

pub const HardwareFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.HardwareFactory";
    logUtil: ?*LogUtil = null,
    tsUtil: ?*TsUtil = null,
    var instance: ?*HardwareFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = HardwareFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
    }
    

    pub fn getInstance() ?*HardwareFactory {
        return Inheritance.upcast(?*HardwareFactory, HardwareFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getInstance1(self: *Self, os: ?*GenericOperatingSystem) ?*HardwareInterface {
        { // try
            const operatingSystems: ?*OperatingSystems = Inheritance.upcast(?*OperatingSystems, OperatingSystems.getInstance());
            if (Inheritance.call(self.tsUtil.?, "compareTo", .{ os.?.getName(), operatingSystems.?.ANDROID }) == 0) {
                return Inheritance.upcast(?*HardwareInterface, AndroidHardware.create());
            } else if (Inheritance.call(self.tsUtil.?, "compareTo", .{ os.?.getName(), operatingSystems.?.HARMONY }) == 0) {
                return Inheritance.upcast(?*HardwareInterface, AndroidHardware.create());
            }
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("No Hardware Imp for: "), os.?.getName()); break :exception error.Exception; }});
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Ignoring Exception Returning NoHardware"), self, commonStrings.?.GET_INSTANCE, e });
//             return Inheritance.upcast(?*HardwareInterface, NoHardware.create());
    }
};

