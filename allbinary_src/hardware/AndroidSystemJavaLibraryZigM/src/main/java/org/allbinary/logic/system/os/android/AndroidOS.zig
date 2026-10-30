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
const AndroidInfoFactory = @import("org/allbinary/android/AndroidInfoFactory.zig").AndroidInfoFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const AndroidSystemProperties = @import("org/allbinary/logic/system/os/android/AndroidSystemProperties.zig").AndroidSystemProperties;

pub const AndroidOS = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.os.android.AndroidOS";
    base: GenericOperatingSystem = undefined,
    stringBuffer: ?*StringMaker = null,
    DEVICE_ID: ?*String = null,
    DEVICE_SOFTWARE_VERSION: ?*String = null,
    LINE_1_NUMBER: ?*String = null,
    OUYA: ?*String = null,

    fn initFields(this: *Self) void {
        this.stringBuffer = StringMaker.create();
        this.DEVICE_ID = String.literal("DeviceId");
        this.DEVICE_SOFTWARE_VERSION = String.literal("DeviceSoftwareVersion");
        this.LINE_1_NUMBER = String.literal("Line1Number");
        this.OUYA = String.literal("ouya");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = GenericOperatingSystem.create().*;
        this.initFields();
        const SDK_VERSION: i32 = Inheritance.receiverOf(AndroidInfoFactory.getInstance().?, "getVersion").getVersion();
        if (SDK_VERSION > 10) {
            Inheritance.fieldPointer(this, "scalable").* = true;
        }
        const properties: ?*AndroidSystemProperties = Inheritance.upcast(?*AndroidSystemProperties, AndroidSystemProperties.getInstance());
        const commonStrings: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ this.DEVICE_ID });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ properties.?.getDeviceId() });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.SPACE });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ this.DEVICE_SOFTWARE_VERSION });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ properties.?.getDeviceSoftwareVersion() });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.SPACE });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ this.LINE_1_NUMBER });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ properties.?.getLine1Number() });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.SPACE });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ String.literal("NetworkCountryIso") });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ properties.?.getNetworkCountryIso() });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.SPACE });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ String.literal("NetworkOperator") });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ properties.?.getNetworkOperator() });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.SPACE });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ String.literal("NetworkOperatorName") });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ properties.?.getNetworkOperatorName() });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.SPACE });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ String.literal("NetworkType") });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(this.stringBuffer.?, "appendint", .{ @as(i32, @intCast(properties.?.getNetworkType())) });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.SPACE });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ String.literal("PhoneType") });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(this.stringBuffer.?, "appendint", .{ @as(i32, @intCast(properties.?.getPhoneType())) });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.SPACE });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ String.literal("SimCountryIso") });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ properties.?.getSimCountryIso() });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.SPACE });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ String.literal("SimOperator") });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ properties.?.getSimOperator() });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.SPACE });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ String.literal("SimOperatorName") });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ properties.?.getSimOperatorName() });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.SPACE });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ String.literal("SimSerialNumber") });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ properties.?.getSimSerialNumber() });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.SPACE });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ String.literal("SubscriberId") });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ properties.?.getSubscriberId() });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.SPACE });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ String.literal("VoiceMailAlphaTag") });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ properties.?.getVoiceMailAlphaTag() });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.SPACE });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ String.literal("VoiceMailNumber") });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.EQUALS });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ properties.?.getVoiceMailNumber() });
        _ = Inheritance.call(this.stringBuffer.?, "append", .{ commonStrings.?.SPACE });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isOverScan(self: *Self) bool {
        const properties: ?*AndroidSystemProperties = Inheritance.upcast(?*AndroidSystemProperties, AndroidSystemProperties.getInstance());
        if (Inheritance.call(Inheritance.receiverOf(properties.?.getDevice().?, "toLowerCase").toLowerCase().?, "indexOf", .{ self.OUYA }) >= 0) {
            return true;
        }
        return false;
    }
    

    pub fn getOverScanXPercent(self: *Self) i32 {
        _ = self;
        return 90;
    }
    

    pub fn getOverScanYPercent(self: *Self) i32 {
        _ = self;
        return 90;
    }
    

    pub fn toString(self: *Self) ?*String {
        const osBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(osBuffer.?, "append", .{ self.base.toString() });
        _ = Inheritance.call(osBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(osBuffer.?, "append", .{ String.literal("Other System Info: \n") });
        _ = Inheritance.call(osBuffer.?, "append", .{ Object.toString(Object.of(self.stringBuffer)) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(osBuffer)));
    }
};

