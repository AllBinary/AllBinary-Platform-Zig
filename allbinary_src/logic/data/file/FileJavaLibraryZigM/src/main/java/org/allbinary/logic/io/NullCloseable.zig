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
// const Closeable = @import("java/io/Closeable.zig").Closeable;
// const IOException = @import("java/io/IOException.zig").IOException;

pub const NullCloseable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.NullCloseable";
    // Implements Closeable
    pub var NULL_CLOSEABLE: ?*NullCloseable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_CLOSEABLE = NullCloseable.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws IOException
    pub fn close(self: *Self) void {
        _ = self;
    }
};

