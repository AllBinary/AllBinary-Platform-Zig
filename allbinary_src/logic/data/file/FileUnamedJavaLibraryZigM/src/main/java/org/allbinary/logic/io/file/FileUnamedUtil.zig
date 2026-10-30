// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const FileUnamedUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.FileUnamedUtil";
    commonSeps: ?*CommonSeps = null,
    var instance: ?*FileUnamedUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FileUnamedUtil.create();
    }

    fn initFields(this: *Self) void {
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*FileUnamedUtil {
        return Inheritance.upcast(?*FileUnamedUtil, FileUnamedUtil.instance);
    }
    

    pub fn process(self: *Self, string: ?*String) ?*String {
        var simplifiedString: ?*String = Inheritance.upcast(?*String, string.?.toLowerCase());
        simplifiedString = Inheritance.upcast(@TypeOf(simplifiedString), Inheritance.call(simplifiedString.?, "replace", .{ self.commonSeps.?.SPACE, self.commonSeps.?.UNDERSCORE }));
        simplifiedString = Inheritance.upcast(@TypeOf(simplifiedString), Inheritance.call(simplifiedString.?, "replace", .{ self.commonSeps.?.DASH, self.commonSeps.?.UNDERSCORE }));
        return simplifiedString;
    }
};

