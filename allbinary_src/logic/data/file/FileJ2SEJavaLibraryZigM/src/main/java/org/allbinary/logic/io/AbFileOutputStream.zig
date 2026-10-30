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
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbFileNativeUtil = @import("org/allbinary/logic/io/file/AbFileNativeUtil.zig").AbFileNativeUtil;

pub const AbFileOutputStream = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.AbFileOutputStream";
    base: FileOutputStream = undefined,
    

    // throws FileNotFoundException
    pub fn createFromAbFile(file: ?*AbFile) ?*AbFileOutputStream {
        return Inheritance.callStatic(AbFileOutputStream, "create2", .{ file.?.getPath(), false });
    }
    

    // throws FileNotFoundException
    pub fn createFromAbFileAppend(file: ?*AbFile, append: bool) ?*AbFileOutputStream {
        return Inheritance.callStatic(AbFileOutputStream, "create2", .{ file.?.getPath(), append });
    }
    

    // throws FileNotFoundException
    pub fn createFromFilePath(name: ?*String) ?*AbFileOutputStream {
        return Inheritance.callStatic(AbFileOutputStream, "create2", .{ name, false });
    }
    

    // throws FileNotFoundException
    pub fn createFromFilePathAppend(name: ?*String, append: bool) ?*AbFileOutputStream {
        return Inheritance.callStatic(AbFileOutputStream, "create2", .{ name, append });
    }
    

    pub fn create2(name: ?*String, append: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(FileOutputStream, "create2", .{ name, append }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

