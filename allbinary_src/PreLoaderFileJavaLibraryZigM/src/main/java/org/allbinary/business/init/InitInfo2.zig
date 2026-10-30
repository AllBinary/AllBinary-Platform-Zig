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
// package org.allbinary.business.init

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Directory = @import("org/allbinary/logic/io/file/directory/Directory.zig").Directory;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;

pub const InitInfo2 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.init.InitInfo2";
    directory: ?*Directory = null,
    var instance: ?*InitInfo2 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = InitInfo2.create();
    }

    fn initFields(this: *Self) void {
        this.directory = Inheritance.upcast(?*Directory, Directory.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*InitInfo2 {
        return Inheritance.upcast(?*InitInfo2, InitInfo2.instance);
    }
    

    pub fn isTestHtmlPathValid(self: *Self, value: ?*AbPath) bool {
        return Inheritance.call(self.directory.?, "create", .{ value });
    }
    

    pub fn isMainPathValid(self: *Self, value: ?*AbPath) bool {
        return Inheritance.call(self.directory.?, "create", .{ value });
    }
};

