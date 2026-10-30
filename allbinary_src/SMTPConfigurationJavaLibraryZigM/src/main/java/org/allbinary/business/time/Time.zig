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
const Long = @import("java/lang/Long.zig").Long;

pub const Time = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.time.Time";
    timeLong: ?*Long = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(time: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.timeLong = Inheritance.callStatic(Long, "create1", .{ time });
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(time: i64) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.timeLong = Inheritance.callStatic(Long, "create1", .{ time });
        return this;
    }
    

    pub fn getLong(self: *Self) ?*Long {
        return self.timeLong;
    }
    

    pub fn getlong(self: *Self) i64 {
        return self.timeLong.?.longValue();
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.getLong())));
    }
};

