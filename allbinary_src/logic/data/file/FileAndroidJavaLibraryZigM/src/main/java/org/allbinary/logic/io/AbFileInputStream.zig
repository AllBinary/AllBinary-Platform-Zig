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
// package org.allbinary.logic.io

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const FileInputStream = @import("java/io/FileInputStream.zig").FileInputStream;
// const FileNotFoundException = @import("java/io/FileNotFoundException.zig").FileNotFoundException;
// const IOException = @import("java/io/IOException.zig").IOException;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const FileChannel = @import("java/nio/channels/FileChannel.zig").FileChannel;

pub const AbFileInputStream = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.AbFileInputStream";
    base: InputStream = undefined,
    fileInputStream: ?*FileInputStream = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(fileInputStream: ?*FileInputStream) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = InputStream.create().*;
        this.initFields();
        this.fileInputStream = fileInputStream;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn mark(self: *Self, readlimit: i32) void {
        _ = Inheritance.call(self.fileInputStream.?, "mark", .{ readlimit });
    }
    

    pub fn markSupported(self: *Self) bool {
        return self.fileInputStream.?.markSupported();
    }
    

    // throws IOException
    pub fn reset(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = self.fileInputStream.?.reset();
    }
    

    // throws IOException
    pub fn available(self: *Self) i32 {
        return self.fileInputStream.?.available();
    }
    

    // throws IOException
    pub fn close(self: *Self) void {
        _ = self.fileInputStream.?.close();
    }
    

    pub fn getChannel(self: *Self) ?*FileChannel {
        return Inheritance.upcast(?*FileChannel, self.fileInputStream.?.getChannel());
    }
    

    // throws IOException
    pub fn read(self: *Self) i32 {
        return self.fileInputStream.?.read();
    }
    

    // throws IOException
    pub fn read1(self: *Self, b: []i8) i32 {
        return Inheritance.call(self.fileInputStream.?, "read", .{ b });
    }
    

    // throws IOException
    pub fn read3(self: *Self, buffer: []i8, offset: i32, count: i32) i32 {
        return Inheritance.call(self.fileInputStream.?, "read", .{ buffer, offset, count });
    }
    

    // throws IOException
    pub fn skip(self: *Self, n: i64) i64 {
        return Inheritance.call(self.fileInputStream.?, "skip", .{ n });
    }
};

