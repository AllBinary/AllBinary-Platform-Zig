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
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;

pub const FileFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.FileFactory";
    var instance: ?*FileFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FileFactory.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*FileFactory {
        return Inheritance.upcast(?*FileFactory, FileFactory.instance);
    }
    

    // throws Exception
    pub fn getInstance1(self: *Self, filePath: ?*String) ?*AbFile {
        _ = self;
        return Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromRawPath", .{ filePath }));
    }
    

    // throws Exception
    pub fn getInstance2(self: *Self, file: ?*AbFile, childFilePath: ?*String) ?*AbFile {
        _ = self;
        return Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileWithChild", .{ file, childFilePath }));
    }
    

    // throws Exception
    pub fn isFile(self: *Self, path: ?*String) bool {
        _ = self;
        const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ path }));
        if (file.?.exists()) {
            return true;
        } else {
            return false;
        }
    }
};

