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
const Reader = @import("java/io/Reader.zig").Reader;

pub const NullReader = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.NullReader";
    base: Reader = undefined,
    pub var NULL_READER: ?*NullReader = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_READER = NullReader.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Reader.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws IOException
    pub fn read(self: *Self) i32 {
        _ = self;
        return -1;
    }
    

    // throws IOException
    pub fn read3(self: *Self, cbuf: []u16, off: i32, len: i32) i32 {
        _ = cbuf;
        _ = off;
        _ = len;
        _ = self;
        return -1;
    }
    

    // throws IOException
    pub fn ready(self: *Self) bool {
        _ = self;
        return false;
    }
    

    // throws IOException
    pub fn skip(self: *Self, n: i64) i64 {
        _ = n;
        _ = self;
        return 0;
    }
    

    pub fn close(self: *Self) void {
        _ = self;
    }
};

