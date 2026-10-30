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
// package org.allbinary.business.time

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const TimeData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.time.TimeData";
    NAME: ?*String = null,
    START: ?*String = null,
    END: ?*String = null,
    var instance: ?*TimeData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TimeData.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("TIME_NAME");
        this.START = String.literal("TIME_START");
        this.END = String.literal("TIME_END");
    }
    

    pub fn getInstance() ?*TimeData {
        return Inheritance.upcast(?*TimeData, TimeData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

