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
const File = @import("java/io/File.zig").File;
// const FileInputStream = @import("java/io/FileInputStream.zig").FileInputStream;
// const FileNotFoundException = @import("java/io/FileNotFoundException.zig").FileNotFoundException;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbFileNativeUtil = @import("org/allbinary/logic/io/file/AbFileNativeUtil.zig").AbFileNativeUtil;

pub const AbFileInputStream = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.AbFileInputStream";
    base: FileInputStream = undefined,
    

    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(FileInputStream, "create1", .{ name }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(file: ?*AbFile) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(FileInputStream, "create1", .{ Inheritance.callStatic(AbFileNativeUtil, "get", .{ file }) }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(file: ?*File) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(FileInputStream, "create1", .{ file }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

