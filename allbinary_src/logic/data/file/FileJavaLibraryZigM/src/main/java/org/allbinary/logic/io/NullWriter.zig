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
const Writer = @import("java/io/Writer.zig").Writer;

pub const NullWriter = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.NullWriter";
    base: Writer = undefined,
    pub var NULL_WRITER: ?*NullWriter = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_WRITER = NullWriter.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Writer.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws IOException
    pub fn write__int(self: *Self, c: i32) void {
        _ = c;
        _ = self;
    }
    

    // throws IOException
    pub fn write3__charArray_int_int(self: *Self, cbuf: []u16, off: i32, len: i32) void {
        _ = cbuf;
        _ = off;
        _ = len;
        _ = self;
    }
    

    // throws IOException
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn write__String(self: *Self, str: ?*String) void {
        _ = str;
        _ = self;
    }
    

    // throws IOException
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn write3__String_int_int(self: *Self, str: ?*String, off: i32, len: i32) void {
        _ = str;
        _ = off;
        _ = len;
        _ = self;
    }
    

    // throws IOException
    pub fn flush(self: *Self) void {
        _ = self;
    }
    

    // throws IOException
    pub fn close(self: *Self) void {
        _ = self;
    }
};

