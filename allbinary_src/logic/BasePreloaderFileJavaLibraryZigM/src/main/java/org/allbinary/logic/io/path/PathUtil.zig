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
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const AbFilePath = @import("org/allbinary/logic/io/path/AbFilePath.zig").AbFilePath;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;

//Used to correct user input for paths
pub const PathUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.path.PathUtil";
    abPathData: ?*AbPathData = null,
    filePathData: ?*FilePathData = null,
    var instance: ?*PathUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PathUtil.create();
    }

    fn initFields(this: *Self) void {
        this.abPathData = Inheritance.upcast(?*AbPathData, AbPathData.getInstance());
        this.filePathData = Inheritance.upcast(?*FilePathData, FilePathData.getInstance());
    }
    

    pub fn getInstance() ?*PathUtil {
        return Inheritance.upcast(?*PathUtil, PathUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getExtensionWithAbFilePath(self: *Self, abFilePath: ?*AbFilePath) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self.abPathData.?, "getExtension", .{ Object.toString(Object.of(abFilePath)) }));
    }
    

    pub fn getExtensionWithAbPath(self: *Self, abPath: ?*AbPath) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self.abPathData.?, "getExtension", .{ Object.toString(Object.of(abPath)) }));
    }
    

    // throws Exception
    pub fn getWithoutExtensionWithAbFilePath(self: *Self, abFilePath: ?*AbFilePath) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self, "getWithoutExtension", .{ Object.toString(Object.of(abFilePath)) }));
    }
    

    // throws Exception
    pub fn getWithoutExtensionWithAbPath(self: *Self, abPath: ?*AbPath) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self, "getWithoutExtension", .{ Object.toString(Object.of(abPath)) }));
    }
    

    // throws Exception
    pub fn getWithoutExtension(self: *Self, filePath: ?*String) ?*String {
        const indexOfFileExtensionDelmiter: i32 = Inheritance.call(self.abPathData.?, "getExtensionIndex", .{ filePath });
        var pathWithoutExtension: ?*String = filePath;
        if (indexOfFileExtensionDelmiter >= 0) {
            pathWithoutExtension = Inheritance.upcast(@TypeOf(pathWithoutExtension), filePath.?.substring2(0, indexOfFileExtensionDelmiter));
        }
        return pathWithoutExtension;
    }
    

    pub fn isValid(self: *Self, path: ?*String) bool {
        if (Inheritance.call(self, "isValidStart", .{ path })) {
            if (Inheritance.call(self, "isValidEnd", .{ path })) {
                return true;
            }
        }
        return false;
    }
    

    pub fn isValidStart(self: *Self, path: ?*String) bool {
        if (Object.same(Inheritance.call(path.?, "charAt", .{ 0 }), self.abPathData.?.SEPARATORCHAR) or Inheritance.call(path.?, "charAt", .{ 0 }) == '.') {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn isValidEnd(self: *Self, path: ?*String) bool {
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ path })) {
            return false;
        }
        if (Object.same(Inheritance.call(path.?, "charAt", .{ path.?.length() - 1 }), self.abPathData.?.SEPARATORCHAR)) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn adjustStart(self: *Self, pathParameter: ?*String) ?*String {
        var path = pathParameter;
        if (!Inheritance.call(self, "isValidStart", .{ path })) {
            path = Inheritance.upcast(@TypeOf(path), String.plus(self.abPathData.?.SEPARATOR, path));
        }
        return path;
    }
    

    pub fn adjustEnd(self: *Self, pathParameter: ?*String) ?*String {
        var path = pathParameter;
        if (!Inheritance.call(self, "isValidEnd", .{ path })) {
            path = Inheritance.upcast(@TypeOf(path), String.plus(path, self.abPathData.?.SEPARATOR));
        }
        return path;
    }
    

    pub fn adjust(self: *Self, pathParameter: ?*String) ?*String {
        var path = pathParameter;
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ path })) {
            return Inheritance.upcast(?*String, self.abPathData.?.SEPARATOR);
        }
        if (Inheritance.call(path.?, "indexOf", .{ String.literal("\\") }) >= 0) {
            path = Inheritance.upcast(@TypeOf(path), Inheritance.call(path.?, "replace", .{ '\\', self.abPathData.?.SEPARATORCHAR }));
        }
        return path;
    }
    

    // throws Exception
    pub fn removeNameFromPath(self: *Self, path: ?*String) ?*AbPath {
        var endIndex: i32 = Inheritance.call(path.?, "lastIndexOf", .{ self.abPathData.?.SEPARATOR });
        if (endIndex < 0) {
            endIndex = Inheritance.call(path.?, "lastIndexOf", .{ self.filePathData.?.SEPARATORCHAR });
        }
        if (endIndex < 0) {
            return Inheritance.upcast(?*AbPath, AbPath.createAbPath());
        }
        if (path.?.length() == endIndex + 1) {
            return Inheritance.upcast(?*AbPath, Inheritance.call(self, "removeNameFromPath", .{ path.?.substring2(0, endIndex - 1) }));
        } else {
            const pathWithoutName: ?*String = Inheritance.upcast(?*String, path.?.substring2(0, endIndex));
            return Inheritance.callStatic(AbPath, "create2", .{ pathWithoutName, StringUtil.getInstance().?.EMPTY_STRING });
        }
    }
};

