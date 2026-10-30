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
// package org.allbinary.logic.io.file

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const InputStream = @import("java/io/InputStream.zig").InputStream;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

//HTMLForJ2ME
pub const AbFileSystem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.AbFileSystem";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    var instance: ?*AbFileSystem = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AbFileSystem.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*AbFileSystem {
        return Inheritance.upcast(?*AbFileSystem, AbFileSystem.instance);
    }
    

    pub fn isDirectoryOrFile(self: *Self, path: ?*String) bool {
        _ = path;
        _ = self;
        return false;
    }
    

    pub fn isDirectory(self: *Self, path: ?*String) bool {
        _ = path;
        _ = self;
        return false;
    }
    

    pub fn getFilesAsStringArrayForPath(self: *Self, currentDirPath: ?*String) []?*String {
        _ = currentDirPath;
        _ = self;
        return Inheritance.receiverOf(StringUtil.getInstance().?, "getArrayInstance").getArrayInstance();
    }
    

    pub fn readAsString(self: *Self, fileName: ?*String) ?*String {
        const bytes: []i8 = array_N66181: { const array_N66181_array = allocator.alloc(i8, @intCast(1000000)) catch unreachable; @memset(array_N66181_array, 0); break :array_N66181 array_N66181_array; };
        return Inheritance.upcast(?*String, Inheritance.call(self, "readAsString", .{ fileName, bytes }));
    }
    

    pub fn readAsString2(self: *Self, fileName: ?*String, bytes: []i8) ?*String {
        _ = fileName;
        _ = bytes;
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn close(self: *Self, closeable: ?Object) bool {
        _ = self;
        { // try
            if (closeable != null) {
                const inputStream: ?*InputStream = Inheritance.upcast(?*InputStream, (Inheritance.cast(?*InputStream, closeable)));
                _ = inputStream.?.close();
            }
            return true;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.CLOSE, e });
//             return false;
    }
};

