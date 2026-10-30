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
const File = @import("java/io/File.zig").File;
// const FileFilter = @import("java/io/FileFilter.zig").FileFilter;
// const FilenameFilter = @import("java/io/FilenameFilter.zig").FilenameFilter;
// const IOException = @import("java/io/IOException.zig").IOException;
// const URI = @import("java/net/URI.zig").URI;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbFileInterface = @import("org/allbinary/logic/io/file/AbFileInterface.zig").AbFileInterface;

pub const AbFile = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.AbFile";
    pub const java_interfaces = .{ AbFileInterface };
    file: ?*File = null,
    // Implements AbFileInterface
    pub var NULL_FILE: ?*AbFile = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_FILE = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromRawPath", .{ StringUtil.getInstance().?.EMPTY_STRING }));
    }

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    // throws Exception
    pub fn createAbFileWithChild(file: ?*AbFile, childPathName: ?*String) ?*AbFile {
        return Inheritance.callStatic(AbFile, "create1", .{ Inheritance.callStatic(File, "create2", .{ file.?.getFile(), childPathName }) });
    }
    

    // throws Exception
    pub fn createAbFile(filePath: ?*String) ?*AbFile {
        return Inheritance.callStatic(AbFile, "create1", .{ Inheritance.callStatic(File, "create1", .{ Inheritance.callStatic(AbPath, "create2", .{ filePath, StringUtil.getInstance().?.EMPTY_STRING }).toFileSystemString() }) });
    }
    

    // throws Exception
    pub fn createAbFilePathAndName(filePath: ?*String, fileName: ?*String) ?*AbFile {
        return Inheritance.callStatic(AbFile, "create1", .{ Inheritance.callStatic(File, "create2", .{ Inheritance.callStatic(AbPath, "create2", .{ filePath, StringUtil.getInstance().?.EMPTY_STRING }).toFileSystemString(), fileName }) });
    }
    

    pub fn createAbFileFromAbPath(abPath: ?*AbPath) ?*AbFile {
        return Inheritance.callStatic(AbFile, "create1", .{ Inheritance.callStatic(File, "create1", .{ abPath.?.toFileSystemString() }) });
    }
    

    pub fn createAbFileFromRawPath(filePath: ?*String) ?*AbFile {
        return Inheritance.callStatic(AbFile, "create1", .{ Inheritance.callStatic(File, "create1", .{ filePath }) });
    }
    

    pub fn create1(file: ?*File) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.file = file;
        return this;
    }
    

    pub fn getFile(self: *Self) ?*File {
        return Inheritance.upcast(?*File, self.file);
    }
    

    pub fn getName(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.file.?.getName());
    }
    

    pub fn getParent(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.file.?.getParent());
    }
    

    pub fn getParentFile(self: *Self) ?*File {
        return Inheritance.upcast(?*File, self.file.?.getParentFile());
    }
    

    pub fn getPath(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.file.?.getPath());
    }
    

    pub fn isAbsolute(self: *Self) bool {
        return self.file.?.isAbsolute();
    }
    

    pub fn getAbsolutePath(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.file.?.getAbsolutePath());
    }
    

    pub fn getAbsoluteFile(self: *Self) ?*File {
        return Inheritance.upcast(?*File, self.file.?.getAbsoluteFile());
    }
    

    // throws IOException
    pub fn getCanonicalPath(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.file.?.getCanonicalPath());
    }
    

    // throws IOException
    pub fn getCanonicalFile(self: *Self) ?*File {
        return Inheritance.upcast(?*File, self.file.?.getCanonicalFile());
    }
    

    pub fn toURI(self: *Self) ?*URI {
        return Inheritance.upcast(?*URI, self.file.?.toURI());
    }
    

    pub fn canRead(self: *Self) bool {
        return self.file.?.canRead();
    }
    

    pub fn canWrite(self: *Self) bool {
        return self.file.?.canWrite();
    }
    

    pub fn exists(self: *Self) bool {
        return self.file.?.exists();
    }
    

    pub fn isDirectory(self: *Self) bool {
        return self.file.?.isDirectory();
    }
    

    pub fn isFile(self: *Self) bool {
        return self.file.?.isFile();
    }
    

    pub fn isHidden(self: *Self) bool {
        return self.file.?.isHidden();
    }
    

    pub fn lastModified(self: *Self) i64 {
        return self.file.?.lastModified();
    }
    

    pub fn length(self: *Self) i64 {
        return @as(i64, @intCast(self.file.?.length()));
    }
    

    // throws IOException
    pub fn createNewFile(self: *Self) bool {
        return self.file.?.createNewFile();
    }
    

    // throws IOException
    pub fn delete(self: *Self) bool {
        return self.file.?.delete();
    }
    

    pub fn deleteOnExit(self: *Self) void {
        _ = self.file.?.deleteOnExit();
    }
    

    pub fn list(self: *Self) []?*String {
        return self.file.?.list();
    }
    

    pub fn listWithFilter(self: *Self, filter: ?*FilenameFilter) []?*String {
        return Inheritance.call(self.file.?, "list", .{ filter });
    }
    

    pub fn listFiles(self: *Self) []?Object {
        return Inheritance.cast([]?Object, self.file.?.listFiles());
    }
    

    pub fn listFilesFileNameFilter(self: *Self, filter: ?*FilenameFilter) []?Object {
        return Inheritance.cast([]?Object, Inheritance.call(self.file.?, "listFiles", .{ filter }));
    }
    

    pub fn listFilesFileFilter(self: *Self, filter: ?*FileFilter) []?Object {
        return Inheritance.cast([]?Object, Inheritance.call(self.file.?, "listFiles", .{ filter }));
    }
    

    pub fn mkdir(self: *Self) bool {
        return self.file.?.mkdir();
    }
    

    pub fn mkdirs(self: *Self) bool {
        return self.file.?.mkdirs();
    }
    

    pub fn renameTo(self: *Self, dest: ?*AbFile) bool {
        return Inheritance.call(self.file.?, "renameTo", .{ dest.?.getFile() });
    }
    

    pub fn setLastModified(self: *Self, time: i64) bool {
        return Inheritance.call(self.file.?, "setLastModified", .{ time });
    }
    

    pub fn setReadOnly(self: *Self) bool {
        return self.file.?.setReadOnly();
    }
    

    pub fn compareTo(self: *Self, pathname: ?*File) i32 {
        return Inheritance.call(self.file.?, "compareTo", .{ pathname });
    }
    

    pub fn equals(self: *Self, obj: ?Object) bool {
        return Inheritance.call(TsUtil.getInstance().?, "equalsNotstring", .{ self.file, obj });
    }
    

    pub fn hashCode(self: *Self) i32 {
        return Object.hashCode(Object.of(self.file));
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.file)));
    }
};

