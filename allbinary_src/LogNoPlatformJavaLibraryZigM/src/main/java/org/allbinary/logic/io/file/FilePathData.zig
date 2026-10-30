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
// package org.allbinary.logic.io.file

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const File = @import("java/io/File.zig").File;

pub const FilePathData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.FilePathData";
    SEPARATORCHAR: u16 = 0,
    PATH_START: ?*String = null,
    var instance: ?*FilePathData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FilePathData.create();
    }

    fn initFields(this: *Self) void {
        this.SEPARATORCHAR = File.separatorChar;
        this.PATH_START = Inheritance.upcast(?*String, File.separator);
    }
    

    pub fn getInstance() ?*FilePathData {
        return Inheritance.upcast(?*FilePathData, FilePathData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (File.separatorChar == '\\') {
            this.PATH_START = Inheritance.upcast(@TypeOf(this.PATH_START), String.plus(File.separator, File.separator));
        }
        return this;
    }
};

