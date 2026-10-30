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
// package org.allbinary

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Activity = @import("android/app/Activity.zig").Activity;
const Build = @import("android/os/Build.zig").Build;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const AndroidUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.AndroidUtil";
    pub var NULL_ACTIVITY: ?*Activity = undefined;
    var version: i32 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_ACTIVITY = Activity.create();
        version = (std.fmt.parseInt(i32, Build.VERSION.?.SDK.?.bytes, 10) catch @panic("java.lang.NumberFormatException"));
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn isMemoryRestrictive() bool {
        if (AndroidUtil.version < 30) {
            return true;
        }
        return false;
    }
    

    pub fn isAndroid() bool {
        return true;
    }
};

