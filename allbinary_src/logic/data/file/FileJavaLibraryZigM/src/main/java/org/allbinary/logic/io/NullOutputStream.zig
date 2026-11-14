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
// package org.allbinary.logic.io

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const IOException = @import("java/io/IOException.zig").IOException;
const OutputStream = @import("java/io/OutputStream.zig").OutputStream;

pub const NullOutputStream = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.NullOutputStream";
    base: OutputStream = undefined,
    pub var NULL_OUTPUT_STREAM: ?*NullOutputStream = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_OUTPUT_STREAM = NullOutputStream.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = OutputStream.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws IOException
    pub fn write(self: *Self, b: i32) void {
        _ = b;
        _ = self;
    }
    

    // throws IOException
    pub fn write3(self: *Self, b: []i8, off: i32, len: i32) void {
        _ = b;
        _ = off;
        _ = len;
        _ = self;
    }
    

    pub fn close(self: *Self) void {
        _ = self;
    }
};

