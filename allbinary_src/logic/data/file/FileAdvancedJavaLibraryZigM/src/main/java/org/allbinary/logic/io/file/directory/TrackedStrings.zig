// 
// AllBinary Open License Version 1 
// Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic.io.file.directory

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const TrackedStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.directory.TrackedStrings";
    TARGET_PATH_WINDOWS: ?*String = null,
    TARGET_PATH_UNIX: ?*String = null,
    HTML_TEMP: ?*String = null,
    APPLICATION: ?*String = null,
    APP: ?*String = null,
    GIT_COMMAND: ?*String = null,
    CHANGE_DIRECTORY_OPTION: ?*String = null,
    LIST_FILES_COMMAND: ?*String = null,
    ERROR_UNMATCH_OPTION: ?*String = null,
    PATHSPEC_SEPARATOR: ?*String = null,
    SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE: ?*String = null,
    var instance: ?*TrackedStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TrackedStrings.create();
    }

    fn initFields(this: *Self) void {
        this.TARGET_PATH_WINDOWS = String.literal("\\target\\");
        this.TARGET_PATH_UNIX = String.literal("/target/");
        this.HTML_TEMP = String.literal("HTMLTemp");
        this.APPLICATION = String.literal("Application");
        this.APP = String.literal("\\app");
        this.GIT_COMMAND = String.literal("git");
        this.CHANGE_DIRECTORY_OPTION = String.literal("-C");
        this.LIST_FILES_COMMAND = String.literal("ls-files");
        this.ERROR_UNMATCH_OPTION = String.literal("--error-unmatch");
        this.PATHSPEC_SEPARATOR = String.literal("--");
        this.SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE = String.literal("-z");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*TrackedStrings {
        return Inheritance.upcast(?*TrackedStrings, TrackedStrings.instance);
    }
};

