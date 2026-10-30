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
// const FileNotFoundException = @import("java/io/FileNotFoundException.zig").FileNotFoundException;
const Context = @import("android/content/Context.zig").Context;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;

pub const FileFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.FileFactory";
    context: ?*Context = null,
    var SINGLETON: ?*FileFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = Inheritance.callStatic(FileFactory, "create1", .{ Inheritance.receiverOf(ResourceUtil.getInstance().?, "getContext").getContext() });
    }

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(context: ?*Context) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.context = context;
        return this;
    }
    

    pub fn getInstance() ?*FileFactory {
        return Inheritance.upcast(?*FileFactory, FileFactory.SINGLETON);
    }
    

    // throws Exception
    pub fn isFile(self: *Self, path: ?*String) bool {
        { // try
            _ = Inheritance.call(self.context.?, "openFileInput", .{ path });
            return true;
        }
        // catch (FileNotFoundException e):
//             return false;
    }
    

    pub fn getContext(self: *Self) ?*Context {
        return self.context;
    }
    

    // throws Exception
    pub fn getFile(self: *Self, filePath: ?*String) ?*AbFile {
        _ = self;
        return Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromRawPath", .{ filePath }));
    }
    

    // throws Exception
    pub fn getInstance2(self: *Self, file: ?*AbFile, childFilePath: ?*String) ?*AbFile {
        _ = self;
        return Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileWithChild", .{ file, childFilePath }));
    }
};

