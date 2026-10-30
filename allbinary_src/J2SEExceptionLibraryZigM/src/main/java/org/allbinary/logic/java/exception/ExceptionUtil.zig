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
const ByteArrayOutputStream = @import("java/io/ByteArrayOutputStream.zig").ByteArrayOutputStream;
const PrintStream = @import("java/io/PrintStream.zig").PrintStream;

//ActualPlatform
pub const ExceptionUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.exception.ExceptionUtil";
    NONE: ?*String = null,
    var instance: ?*ExceptionUtil = undefined;
    pub var PRETEND_EXCEPTION: ?anyerror = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ExceptionUtil.create();
        PRETEND_EXCEPTION = exception: { _ = String.literal("Not Really An Exception"); break :exception error.Exception; };
    }

    fn initFields(this: *Self) void {
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
        if (e != null) {
            const byteArrayOutputStream: ?*ByteArrayOutputStream = ByteArrayOutputStream.create();
            const printStream: ?*PrintStream = Inheritance.callStatic(PrintStream, "create1", .{ byteArrayOutputStream });
            _ = printStream.?.println(e);
            const output: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(byteArrayOutputStream)));
            if (output != null) {
                return Inheritance.callStatic(String, "create1", .{ output });
            }
        }
        return self.NONE;
    }
};

