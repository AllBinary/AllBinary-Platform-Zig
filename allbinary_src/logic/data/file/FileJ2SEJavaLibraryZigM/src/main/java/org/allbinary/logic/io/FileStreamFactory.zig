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
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbFileInputStream = @import("org/allbinary/logic/io/AbFileInputStream.zig").AbFileInputStream;
const AbFileOutputStream = @import("org/allbinary/logic/io/AbFileOutputStream.zig").AbFileOutputStream;

pub const FileStreamFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.FileStreamFactory";
    var SINGLETON: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }
    

    pub fn getInstance() ?*FileStreamFactory {
        if (Object.same(FileStreamFactory.SINGLETON, NullUtil.getInstance().?.NULL_OBJECT)) {
            FileStreamFactory.SINGLETON = Inheritance.upcast(@TypeOf(FileStreamFactory.SINGLETON), FileStreamFactory.create());
        }
        return Inheritance.cast(?*FileStreamFactory, FileStreamFactory.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getFileInputStreamInstance(self: *Self, path: ?*String, fileName: ?*String) ?*AbFileInputStream {
        _ = self;
        const FILEABPATH: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ path, fileName });
        const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ FILEABPATH }));
        return Inheritance.callStatic(AbFileInputStream, "create1", .{ file });
    }
    

    // throws Exception
    pub fn getFileOutputStreamInstance(self: *Self, path: ?*String, fileName: ?*String) ?*AbFileOutputStream {
        _ = self;
        const FILEABPATH: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ path, fileName });
        const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ FILEABPATH }));
        if (file.?.exists()) {
            _ = file.?.delete();
            _ = file.?.createNewFile();
        }
        return Inheritance.upcast(?*AbFileOutputStream, Inheritance.callStatic(AbFileOutputStream, "createFromAbFile", .{ file }));
    }
    

    // throws Exception
    pub fn delete(self: *Self, path: ?*String, fileName: ?*String) void {
        _ = self;
        const FILEABPATH: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ path, fileName });
        const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ FILEABPATH }));
        _ = file.?.delete();
    }
};

