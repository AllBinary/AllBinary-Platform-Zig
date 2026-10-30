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
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;

pub const SystemProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.os.SystemProperties";
    OS_NAME: ?*String = null,
    OS_ARCH: ?*String = null,
    OS_VERSION: ?*String = null,
    var instance: ?*SystemProperties = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SystemProperties.create();
    }

    fn initFields(this: *Self) void {
        this.OS_NAME = String.literal("os.name");
        this.OS_ARCH = String.literal("os.arch");
        this.OS_VERSION = String.literal("os.version");
    }
    

    pub fn getInstance() ?*SystemProperties {
        return Inheritance.upcast(?*SystemProperties, SystemProperties.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.OS_NAME;
    }
    

    pub fn getArch(self: *Self) ?*String {
        return self.OS_ARCH;
    }
    

    pub fn getVersion(self: *Self) ?*String {
        return self.OS_VERSION;
    }
    

    pub fn getUserHomePath(self: *Self) ?*String {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

