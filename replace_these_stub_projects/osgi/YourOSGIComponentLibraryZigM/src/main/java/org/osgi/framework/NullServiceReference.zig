// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.osgi.framework

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const NullServiceReference = struct {
    const Self = @This();
    pub const java_name = "org.osgi.framework.NullServiceReference";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getProperty(self: *Self, key: ?*String) ?Object {
        _ = key;
        _ = self;
        return Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }
    

    pub fn getPropertyKeys(self: *Self) []?*String {
        _ = self;
        return Inheritance.receiverOf(StringUtil.getInstance().?, "getArrayInstance").getArrayInstance();
    }
    

    pub fn compareTo(self: *Self, o: ?Object) i32 {
        _ = o;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

