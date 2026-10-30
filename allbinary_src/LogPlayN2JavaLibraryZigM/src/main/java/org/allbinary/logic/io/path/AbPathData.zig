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
// package org.allbinary.logic.io.path

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const FilePathData = @import("org/allbinary/logic/io/file/FilePathData.zig").FilePathData;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const AbPathData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.path.AbPathData";
    EXTENSION_SEP: ?*String = null,
    SEPARATORCHAR: u16 = 0,
    SEPARATOR: ?*String = null,
    var instance: ?*AbPathData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AbPathData.create();
    }

    fn initFields(this: *Self) void {
        this.EXTENSION_SEP = Inheritance.upcast(?*String, CommonSeps.getInstance().?.PERIOD);
        this.SEPARATORCHAR = '/';
        this.SEPARATOR = Inheritance.upcast(?*String, CommonSeps.getInstance().?.FORWARD_SLASH);
    }
    

    pub fn getInstance() ?*AbPathData {
        return Inheritance.upcast(?*AbPathData, AbPathData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getExtensionIndex(self: *Self, filePath: ?*String) i32 {
        const indexOfFileExtensionDelmiter: i32 = Inheritance.call(filePath.?, "lastIndexOf", .{ self.EXTENSION_SEP });
        const indexOfLatDelimiter: i32 = Inheritance.call(filePath.?, "lastIndexOf", .{ self.SEPARATORCHAR });
        if (indexOfFileExtensionDelmiter < 0) {
            return -1;
        }
        if (indexOfFileExtensionDelmiter < indexOfLatDelimiter) {
            return -1;
        }
        return indexOfFileExtensionDelmiter;
    }
    

    pub fn getExtensionWithDot(self: *Self, filePath: ?*String) ?*String {
        const indexOfFileExtensionDelmiter: i32 = Inheritance.call(self, "getExtensionIndex", .{ filePath });
        var extension: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        if (indexOfFileExtensionDelmiter >= 0) {
            extension = Inheritance.upcast(@TypeOf(extension), Inheritance.call(filePath.?, "substring", .{ indexOfFileExtensionDelmiter }));
        }
        return extension;
    }
    

    pub fn getExtension(self: *Self, filePath: ?*String) ?*String {
        const indexOfFileExtensionDelmiter: i32 = Inheritance.call(self, "getExtensionIndex", .{ filePath });
        var extension: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        if (indexOfFileExtensionDelmiter >= 0) {
            extension = Inheritance.upcast(@TypeOf(extension), Inheritance.call(filePath.?, "substring", .{ indexOfFileExtensionDelmiter + 1 }));
        }
        return extension;
    }
    

    pub fn getNameFromPath(self: *Self, path: ?*String) ?*String {
        var endIndex: i32 = Inheritance.call(path.?, "lastIndexOf", .{ self.SEPARATORCHAR });
        if (endIndex < 0) {
            endIndex = Inheritance.call(path.?, "lastIndexOf", .{ FilePathData.getInstance().?.SEPARATORCHAR });
        }
        if (endIndex < 0) {
            return path;
        }
        if (path.?.length() == endIndex + 1) {
            const categoryName: ?*String = Inheritance.upcast(?*String, path.?.substring2(0, endIndex));
            return Inheritance.upcast(?*String, Inheritance.call(self, "getNameFromPath", .{ categoryName }));
        } else {
            const categoryName: ?*String = Inheritance.upcast(?*String, Inheritance.call(path.?, "substring", .{ endIndex + 1 }));
            return categoryName;
        }
    }
    

    pub fn removeNameFromPath(self: *Self, path: ?*String) ?*String {
        var endIndex: i32 = Inheritance.call(path.?, "lastIndexOf", .{ self.SEPARATORCHAR });
        if (endIndex < 0) {
            endIndex = Inheritance.call(path.?, "lastIndexOf", .{ FilePathData.getInstance().?.SEPARATORCHAR });
        }
        if (endIndex < 0) {
            return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        }
        if (path.?.length() == endIndex + 1) {
            return Inheritance.upcast(?*String, Inheritance.call(self, "removeNameFromPath", .{ path.?.substring2(0, endIndex - 1) }));
        } else {
            const pathWithoutName: ?*String = Inheritance.upcast(?*String, path.?.substring2(0, endIndex));
            return pathWithoutName;
        }
    }
};

