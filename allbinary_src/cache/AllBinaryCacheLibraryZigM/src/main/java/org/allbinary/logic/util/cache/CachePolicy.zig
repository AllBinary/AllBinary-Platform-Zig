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
// package org.allbinary.logic.util.cache

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const CachePolicy = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.cache.CachePolicy";
    name: ?*String = null,
    maxTime: i64 = 0,
    maxSize: i64 = 0,

    fn initFields(this: *Self) void {
        
        this.maxTime = 0;
        this.maxSize = 0;
    }
    

    pub fn create3(name: ?*String, maxTime: i64, maxSize: i64) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        _ = Inheritance.call(this, "setMaxTime", .{ maxTime });
        _ = Inheritance.call(this, "setMaxSize", .{ maxSize });
        return this;
    }
    

    pub fn getMaxTime(self: *Self) i64 {
        return self.maxTime;
    }
    

    pub fn setMaxTime(self: *Self, maxTime: i64) void {
        self.maxTime = maxTime;
    }
    

    pub fn getMaxSize(self: *Self) i64 {
        return self.maxSize;
    }
    

    pub fn setMaxSize(self: *Self, maxSize: i64) void {
        self.maxSize = maxSize;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
};

