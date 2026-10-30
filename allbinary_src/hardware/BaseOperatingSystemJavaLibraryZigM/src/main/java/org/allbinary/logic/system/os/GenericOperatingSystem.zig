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
const CharacterSet = @import("org/allbinary/logic/java/character/CharacterSet.zig").CharacterSet;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const OperatingSystemInterface = @import("org/allbinary/logic/system/os/OperatingSystemInterface.zig").OperatingSystemInterface;
const SystemProperties = @import("org/allbinary/logic/system/os/SystemProperties.zig").SystemProperties;

pub const GenericOperatingSystem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.os.GenericOperatingSystem";
    pub const java_interfaces = .{ OperatingSystemInterface };
    osName: ?*String = null,
    osArch: ?*String = null,
    osVersion: ?*String = null,
    characterSet: ?*CharacterSet = null,
    scalable: bool = false,
    // Implements OperatingSystemInterface

    fn initFields(this: *Self) void {
        this.osName = null;
        this.osArch = null;
        this.osVersion = null;
        this.characterSet = CharacterSet.create();
        this.scalable = false;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const systemProperties: ?*SystemProperties = Inheritance.upcast(?*SystemProperties, SystemProperties.getInstance());
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        const EMPTY_STRING: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ systemProperties.?.getName() })) {
            this.osName = EMPTY_STRING;
        } else {
            this.osName = Inheritance.upcast(@TypeOf(this.osName), systemProperties.?.getName());
        }
        if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ systemProperties.?.getArch() })) {
            this.osArch = EMPTY_STRING;
        } else {
            this.osArch = Inheritance.upcast(@TypeOf(this.osArch), systemProperties.?.getArch());
        }
        if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ systemProperties.?.getVersion() })) {
            this.osVersion = EMPTY_STRING;
        } else {
            this.osVersion = Inheritance.upcast(@TypeOf(this.osVersion), systemProperties.?.getVersion());
        }
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.osName;
    }
    

    pub fn getVersion(self: *Self) ?*String {
        return self.osVersion;
    }
    

    pub fn getArch(self: *Self) ?*String {
        return self.osArch;
    }
    

    pub fn getCharacterSet(self: *Self) ?*CharacterSet {
        return self.characterSet;
    }
    

    pub fn isOverScan(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getOverScanXPercent(self: *Self) i32 {
        _ = self;
        return 100;
    }
    

    pub fn getOverScanYPercent(self: *Self) i32 {
        _ = self;
        return 100;
    }
    

    pub fn isScalable(self: *Self) bool {
        return self.scalable;
    }
    

    pub fn isAutoHide(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn toString(self: *Self) ?*String {
        const NEW_LINE: ?*String = Inheritance.upcast(?*String, CommonSeps.getInstance().?.NEW_LINE);
        const osBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(osBuffer.?, "append", .{ String.literal("Operating System Info: \n") });
        _ = Inheritance.call(osBuffer.?, "append", .{ self.getName() });
        _ = Inheritance.call(osBuffer.?, "append", .{ NEW_LINE });
        _ = Inheritance.call(osBuffer.?, "append", .{ self.getArch() });
        _ = Inheritance.call(osBuffer.?, "append", .{ NEW_LINE });
        _ = Inheritance.call(osBuffer.?, "append", .{ self.getVersion() });
        _ = Inheritance.call(osBuffer.?, "append", .{ NEW_LINE });
        _ = Inheritance.call(osBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ self.getCharacterSet() }) });
        _ = Inheritance.call(osBuffer.?, "append", .{ NEW_LINE });
        return Inheritance.upcast(?*String, Object.toString(Object.of(osBuffer)));
    }
};

