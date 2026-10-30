// 
// AllBinary Open License Version 1 
// Copyright (c) 2007 AllBinary 
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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;

pub const CacheType = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.cache.CacheType";
    vendor: ?*String = null,
    @"type": ?*String = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(vendor: ?*String, @"type": ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.vendor = vendor;
        this.@"type" = @"type";
        return this;
    }
    

    pub fn getVendor(self: *Self) ?*String {
        return self.vendor;
    }
    

    pub fn getType(self: *Self) ?*String {
        return self.@"type";
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("CacheType: Vendor: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getVendor() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Type: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getType() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

