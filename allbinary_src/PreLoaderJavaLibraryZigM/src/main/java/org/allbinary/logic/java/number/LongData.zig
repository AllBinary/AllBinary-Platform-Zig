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
// package org.allbinary.logic.java.number

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Long = @import("java/lang/Long.zig").Long;

pub const LongData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.number.LongData";
    pub var MAX_LONG_LENGTH: i32 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        MAX_LONG_LENGTH = String.valueOf(Inheritance.callStatic(Long, "create1", .{ @as(i64, std.math.maxInt(i64)) }).?).?.length();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

