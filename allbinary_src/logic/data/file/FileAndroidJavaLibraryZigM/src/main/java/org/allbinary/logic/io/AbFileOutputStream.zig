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
// const FileNotFoundException = @import("java/io/FileNotFoundException.zig").FileNotFoundException;
// const FileOutputStream = @import("java/io/FileOutputStream.zig").FileOutputStream;
// const IOException = @import("java/io/IOException.zig").IOException;
// const OutputStream = @import("java/io/OutputStream.zig").OutputStream;
// const FileChannel = @import("java/nio/channels/FileChannel.zig").FileChannel;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbFileNativeUtil = @import("org/allbinary/logic/io/file/AbFileNativeUtil.zig").AbFileNativeUtil;

pub const AbFileOutputStream = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.AbFileOutputStream";
    base: OutputStream = undefined,
    fileOutputStream: ?*FileOutputStream = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    // throws FileNotFoundException
    pub fn createFromAbFile(file: ?*AbFile) ?*AbFileOutputStream {
        return Inheritance.callStatic(AbFileOutputStream, "create1", .{ Inheritance.callStatic(FileOutputStream, "create1", .{ Inheritance.callStatic(AbFileNativeUtil, "get", .{ file }) }) });
    }
    

    // throws FileNotFoundException
    pub fn createFromAbFileAppend(file: ?*AbFile, append: bool) ?*AbFileOutputStream {
        _ = append;
        return Inheritance.callStatic(AbFileOutputStream, "create1", .{ Inheritance.callStatic(FileOutputStream, "create1", .{ file.?.getPath() }) });
    }
    

    // throws FileNotFoundException
    pub fn createFromFilePath(name: ?*String) ?*AbFileOutputStream {
        return Inheritance.callStatic(AbFileOutputStream, "create1", .{ Inheritance.callStatic(FileOutputStream, "create1", .{ name }) });
    }
    

    // throws FileNotFoundException
    pub fn createFromFilePathAppend(name: ?*String, append: bool) ?*AbFileOutputStream {
        _ = append;
        return Inheritance.callStatic(AbFileOutputStream, "create1", .{ Inheritance.callStatic(FileOutputStream, "create1", .{ name }) });
    }
    

    pub fn create1(fileOutputStream: ?*FileOutputStream) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = OutputStream.create().*;
        this.initFields();
        this.fileOutputStream = fileOutputStream;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws IOException
    pub fn close(self: *Self) void {
        _ = self.fileOutputStream.?.close();
    }
    

    pub fn getChannel(self: *Self) ?*FileChannel {
        return Inheritance.upcast(?*FileChannel, self.fileOutputStream.?.getChannel());
    }
    

    // throws IOException
    pub fn write(self: *Self, buffer: []i8) void {
        _ = Inheritance.call(self.fileOutputStream.?, "write", .{ buffer });
    }
    

    // throws IOException
    pub fn write3(self: *Self, buffer: []i8, offset: i32, count: i32) void {
        _ = Inheritance.call(self.fileOutputStream.?, "write", .{ buffer, offset, count });
    }
    

    // throws IOException
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn write(self: *Self, b: i32) void {
        _ = Inheritance.call(self.fileOutputStream.?, "write", .{ b });
    }
};

