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

//NoPlatform
pub const SystemProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.os.SystemProperties";
    var instance: ?*SystemProperties = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SystemProperties.create();
    }
    

    pub fn getInstance() ?*SystemProperties {
        return Inheritance.upcast(?*SystemProperties, SystemProperties.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getArch(self: *Self) ?*String {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getVersion(self: *Self) ?*String {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getUserHomePath(self: *Self) ?*String {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

