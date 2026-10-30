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
// package org.allbinary.business.installer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const Portion = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.installer.Portion";
    current: ?*Integer = null,
    total: ?*Integer = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.current = Inheritance.cast(?*Integer, Inheritance.call(hashMap.?, "get", .{ String.literal("current") }));
        this.total = Inheritance.cast(?*Integer, Inheritance.call(hashMap.?, "get", .{ String.literal("total") }));
        return this;
    }
    

    pub fn getCurrent(self: *Self) ?*Integer {
        return self.current;
    }
    

    pub fn getTotal(self: *Self) ?*Integer {
        return self.total;
    }
};

