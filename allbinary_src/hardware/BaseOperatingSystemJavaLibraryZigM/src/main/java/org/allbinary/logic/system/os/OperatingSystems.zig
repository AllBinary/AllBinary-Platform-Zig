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

pub const OperatingSystems = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.os.OperatingSystems";
    LINUX: ?*String = null,
    WINDOWS: ?*String = null,
    SOLARIS: ?*String = null,
    WINDOWS2000: ?*String = null,
    WINDOWS_NT: ?*String = null,
    WINDOWS_10: ?*String = null,
    WINDOWS_11: ?*String = null,
    WINDOWS_VISTA: ?*String = null,
    WINDOWS_XP: ?*String = null,
    ANDROID: ?*String = null,
    HARMONY: ?*String = null,
    unknownSpecificOSAllowed: bool = false,
    var instance: ?*OperatingSystems = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OperatingSystems.create();
    }

    fn initFields(this: *Self) void {
        this.LINUX = String.literal("Linux");
        this.WINDOWS = String.literal("Windows");
        this.SOLARIS = String.literal("Solaris");
        this.WINDOWS2000 = String.literal("Windows 2000");
        this.WINDOWS_NT = String.literal("Windows NT");
        this.WINDOWS_10 = String.literal("Windows 10");
        this.WINDOWS_11 = String.literal("Windows 11");
        this.WINDOWS_VISTA = String.literal("Windows Vista");
        this.WINDOWS_XP = String.literal("Windows XP");
        this.ANDROID = this.LINUX;
        this.HARMONY = String.literal("HarmonyOS");
        this.unknownSpecificOSAllowed = true;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn isUnknownSpecificOSAllowed(self: *Self) bool {
        return self.unknownSpecificOSAllowed;
    }
    

    pub fn setUnknownSpecificOSAllowed(self: *Self, aUnknownSpecificOSAllowed: bool) void {
        self.unknownSpecificOSAllowed = aUnknownSpecificOSAllowed;
    }
    

    pub fn getInstance() ?*OperatingSystems {
        return Inheritance.upcast(?*OperatingSystems, OperatingSystems.instance);
    }
};

