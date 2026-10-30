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

pub const FileData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.FileData";
    NAME: ?*String = null,
    ISFILE: ?*String = null,
    ISDIRECTORY: ?*String = null,
    ISHIDDEN: ?*String = null,
    ISABSOLUTE: ?*String = null,
    ROOT_NAME: ?*String = null,
    PATH: ?*String = null,
    ABSOLUTE_PATH: ?*String = null,
    CANONICAL_PATH: ?*String = null,
    PARENT: ?*String = null,
    MINLEN: i32 = 0,
    MAXLEN: i32 = 0,
    MAXIMAGEFILESIZE: i32 = 0,
    MINIMAGEFILESIZE: i32 = 0,
    MAXDOWNLOADABLEFILESIZE: i32 = 0,
    MINDOWNLOADABLEFILESIZE: i32 = 0,
    var instance: ?*FileData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FileData.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("FILE_NAME");
        this.ISFILE = String.literal("FILE_ISFILE");
        this.ISDIRECTORY = String.literal("FILE_ISDIRECTORY");
        this.ISHIDDEN = String.literal("FILE_ISHIDDEN");
        this.ISABSOLUTE = String.literal("FILE_ISABSOLUTE");
        this.ROOT_NAME = String.literal("FILE_ROOT_NAME");
        this.PATH = String.literal("FILE_PATH");
        this.ABSOLUTE_PATH = String.literal("FILE_ABSOLUTE_PATH");
        this.CANONICAL_PATH = String.literal("FILE_CANONICAL_PATH");
        this.PARENT = String.literal("FILE_PARENT");
        this.MINLEN = 1;
        this.MAXLEN = 120;
        this.MAXIMAGEFILESIZE = 1048576;
        this.MINIMAGEFILESIZE = 32;
        this.MAXDOWNLOADABLEFILESIZE = 1048576 * 20;
        this.MINDOWNLOADABLEFILESIZE = 1;
    }
    

    pub fn getInstance() ?*FileData {
        return Inheritance.upcast(?*FileData, FileData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

