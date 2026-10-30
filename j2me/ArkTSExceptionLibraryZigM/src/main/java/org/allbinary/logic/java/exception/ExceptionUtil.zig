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
// package org.allbinary.logic.java.exception

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

//ActualPlatform
pub const ExceptionUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.exception.ExceptionUtil";
    PRETEND_EXCEPTION: ?anyerror = null,
    NONE: ?*String = null,
    var instance: ?*ExceptionUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ExceptionUtil.create();
    }

    fn initFields(this: *Self) void {
        this.PRETEND_EXCEPTION = exception: { _ = String.literal("Not Really An Exception"); break :exception error.Exception; };
        this.NONE = String.literal("No Stack Trace");
    }
    

    pub fn getInstance() ?*ExceptionUtil {
        return Inheritance.upcast(?*ExceptionUtil, ExceptionUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getStackTrace(self: *Self, e: ?anyerror) ?*String {
        _ = e;
        if (true) {
        }
        if (true) {
        }
        if (true) {
        }
        if (true) {
        }
        return self.NONE;
    }
};

