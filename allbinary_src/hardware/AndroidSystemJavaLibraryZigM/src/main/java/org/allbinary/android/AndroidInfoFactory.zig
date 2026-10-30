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
// package org.allbinary.android

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Build = @import("android/os/Build.zig").Build;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const AndroidInfoFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.AndroidInfoFactory";
    version: i32 = 0,
    var instance: ?*AndroidInfoFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AndroidInfoFactory.create();
    }

    fn initFields(this: *Self) void {
        this.version = (std.fmt.parseInt(i32, Build.VERSION.?.SDK.?.bytes, 10) catch @panic("java.lang.NumberFormatException"));
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*AndroidInfoFactory {
        return Inheritance.upcast(?*AndroidInfoFactory, AndroidInfoFactory.instance);
    }
    

    pub fn getVersion(self: *Self) i32 {
        return self.version;
    }
};

