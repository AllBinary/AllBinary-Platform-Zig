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
// package org.allbinary.logic.communication.sql

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const AbSqlData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.sql.AbSqlData";
    pub const ANYSINGLECHARACTERMATCH: ?*String = String.literal("_");
    pub const ANYMULTICHARACTERMATCH: ?*String = String.literal("%");
    pub const MAXNUM: i32 = 19;
    pub const MINSTRING: i32 = 1;
    pub const MAXSTRING: i32 = 255;
    pub const MAXBLOB: i32 = 32000;
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

