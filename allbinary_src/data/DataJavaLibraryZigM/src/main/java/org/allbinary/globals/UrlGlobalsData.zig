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
// package org.allbinary.globals

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const UrlGlobalsData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.globals.UrlGlobalsData";
    pub const NAME: ?*String = String.literal("URLGLOBALS_NAME");
    pub const WEBAPPPATH: ?*String = String.literal("URLGLOBALS_WEBAPPPATH");
    pub const TESTINGMODE: ?*String = String.literal("URLGLOBALS_TESTINGMODE");
    pub const TESTINGHTMLPATH: ?*String = String.literal("URLGLOBALS_TESTINGHTMLPATH");
    pub const MAINPATH: ?*String = String.literal("URLGLOBALS_MAINPATH");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

