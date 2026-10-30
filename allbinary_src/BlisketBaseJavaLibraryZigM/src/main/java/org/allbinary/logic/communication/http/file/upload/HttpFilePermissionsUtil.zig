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
// package org.allbinary.logic.communication.http.file.upload

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;

pub const HttpFilePermissionsUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil";
    var instance: ?*HttpFilePermissionsUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = HttpFilePermissionsUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*HttpFilePermissionsUtil {
        return Inheritance.upcast(?*HttpFilePermissionsUtil, HttpFilePermissionsUtil.instance);
    }
    

    // throws Exception
    pub fn create(self: *Self, path: ?*AbPath) void {
        _ = self;
        const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ path }));
        if (!file.?.isFile()) {
            _ = file.?.createNewFile();
        }
    }
};

