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
// package org.allbinary.logic.io.file.path

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const FilePathData = @import("org/allbinary/logic/io/file/FilePathData.zig").FilePathData;
const AbFilePath = @import("org/allbinary/logic/io/path/AbFilePath.zig").AbFilePath;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;

//Used to correct user input for paths
pub const AbPathUtilOld = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.path.AbPathUtilOld";
    logUtil: ?*LogUtil = null,
    abPathData: ?*AbPathData = null,
    filePathData: ?*FilePathData = null,
    var instance: ?*AbPathUtilOld = undefined;
    const MIN: i32 = 4;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AbPathUtilOld.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.abPathData = Inheritance.upcast(?*AbPathData, AbPathData.getInstance());
        this.filePathData = Inheritance.upcast(?*FilePathData, FilePathData.getInstance());
    }
    

    pub fn getInstance() ?*AbPathUtilOld {
        return Inheritance.upcast(?*AbPathUtilOld, AbPathUtilOld.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getExtension(self: *Self, abFilePath: ?*AbFilePath) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self, "getExtension", .{ Object.toString(Object.of(abFilePath)) }));
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getExtension(self: *Self, abPath: ?*AbPath) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self, "getExtension", .{ Object.toString(Object.of(abPath)) }));
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getExtension(self: *Self, filePath: ?*String) ?*String {
        if (filePath.?.length() < AbPathUtilOld.MIN) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Could not be a file path since its less that 4 characters"); break :exception error.Exception; }});
        }
        const beginIndex: i32 = filePath.?.length() - AbPathUtilOld.MIN;
        const extension: ?*String = Inheritance.upcast(?*String, Inheritance.call(filePath.?, "substring", .{ beginIndex + 1 }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("FileExtension: "), extension), self, String.literal("getExtension()") });
        }
        return extension;
    }
    

    // throws Exception
    pub fn getWithoutExtension(self: *Self, abFilePath: ?*AbFilePath) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self, "getWithoutExtension", .{ Object.toString(Object.of(abFilePath)) }));
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getWithoutExtension(self: *Self, abPath: ?*AbPath) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self, "getWithoutExtension", .{ Object.toString(Object.of(abPath)) }));
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getWithoutExtension(self: *Self, filePath: ?*String) ?*String {
        if (filePath.?.length() < AbPathUtilOld.MIN) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Could not be a file path since its less that 4 characters"); break :exception error.Exception; }});
        }
        const endIndex: i32 = filePath.?.length() - AbPathUtilOld.MIN;
        const pathWithoutExtension: ?*String = Inheritance.upcast(?*String, filePath.?.substring2(0, endIndex));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("FileWithoutExtension: "), pathWithoutExtension), self, String.literal("getWithoutExtension()") });
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
        if (Object.same(Inheritance.call(path.?, "charAt", .{ 0 }), self.abPathData.?.SEPARATORCHAR)) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn isValidEnd(self: *Self, path: ?*String) bool {
        if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ path })) {
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
        if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ path })) {
            return Inheritance.upcast(?*String, self.abPathData.?.SEPARATOR);
        }
        if (Inheritance.call(path.?, "indexOf", .{ String.literal("\\") }) >= 0) {
            path = Inheritance.upcast(@TypeOf(path), Inheritance.call(path.?, "replace", .{ '\\', self.abPathData.?.SEPARATORCHAR }));
        }
        return path;
    }
    

    pub fn getNameFromPath(self: *Self, categoryPath: ?*String) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        var endIndex: i32 = Inheritance.call(categoryPath.?, "lastIndexOf", .{ self.abPathData.?.SEPARATOR });
        if (endIndex < 0) {
            endIndex = Inheritance.call(categoryPath.?, "lastIndexOf", .{ self.filePathData.?.SEPARATORCHAR });
        }
        if (endIndex < 0) {
            return categoryPath;
        }
        if (categoryPath.?.length() == endIndex + 1) {
            const categoryName: ?*String = Inheritance.upcast(?*String, categoryPath.?.substring2(0, endIndex));
            return Inheritance.upcast(?*String, Inheritance.call(self, "getNameFromPath", .{ categoryName }));
        } else {
            const categoryName: ?*String = Inheritance.upcast(?*String, Inheritance.call(categoryPath.?, "substring", .{ endIndex + 1 }));
            return categoryName;
        }
    }
    

    // throws Exception
    pub fn removeNameFromPath(self: *Self, categoryPath: ?*String) ?*AbPath {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        var endIndex: i32 = Inheritance.call(categoryPath.?, "lastIndexOf", .{ self.abPathData.?.SEPARATOR });
        if (endIndex < 0) {
            endIndex = Inheritance.call(categoryPath.?, "lastIndexOf", .{ self.filePathData.?.SEPARATORCHAR });
        }
        if (endIndex < 0) {
            return Inheritance.upcast(?*AbPath, AbPath.createAbPath());
        }
        if (categoryPath.?.length() == endIndex + 1) {
            return Inheritance.upcast(?*AbPath, Inheritance.call(self, "removeNameFromPath", .{ categoryPath.?.substring2(0, endIndex - 1) }));
        } else {
            const categoryName: ?*String = Inheritance.upcast(?*String, categoryPath.?.substring2(0, endIndex));
            return Inheritance.callStatic(AbPath, "create2", .{ categoryName, StringUtil.getInstance().?.EMPTY_STRING });
        }
    }
};

