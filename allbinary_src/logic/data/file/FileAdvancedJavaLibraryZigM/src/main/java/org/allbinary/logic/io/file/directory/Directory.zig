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
// package org.allbinary.logic.io.file.directory

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const FileFilter = @import("java/io/FileFilter.zig").FileFilter;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const FileFactory = @import("org/allbinary/logic/io/file/FileFactory.zig").FileFactory;
const FileWrapperUtil = @import("org/allbinary/logic/io/file/FileWrapperUtil.zig").FileWrapperUtil;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const Directory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.directory.Directory";
    var instance: ?*Directory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Directory.create();
    }
    

    pub fn getInstance() ?*Directory {
        return Inheritance.upcast(?*Directory, Directory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn create(self: *Self, directoryAbPath: ?*AbPath) bool {
        return Inheritance.call(self, "create", .{ directoryAbPath.?.toFileSystemString() });
    }
    

    // throws Exception
    pub fn remove(self: *Self, existingDirectoryAbPath: ?*AbPath) void {
        _ = Inheritance.call(self, "remove", .{ existingDirectoryAbPath.?.toFileSystemString() });
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn create(self: *Self, directory: ?*String) bool {
        { // try
            const directoryFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.call(FileFactory.getInstance().?, "getInstance", .{ directory }));
            if (!directoryFile.?.isDirectory()) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("Creating Directories: "), directory), self, String.literal("create") });
                if (!directoryFile.?.mkdirs()) {
                    return false;
                }
            }
            return true;
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.plus(String.literal("Error Creating Directories: "), directory), self, String.literal("create"), e });
//             return false;
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn remove(self: *Self, existingDirectory: ?*String) void {
        _ = self;
        const existingDirectoryFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.call(FileFactory.getInstance().?, "getInstance", .{ existingDirectory }));
        if (existingDirectoryFile.?.isDirectory()) {
            if (@as(i32, @intCast(existingDirectoryFile.?.list().len)) > 0) {
                std.debug.panic("{any}", .{exception: { _ = String.plus(String.plus(String.literal("Did not remove category: "), existingDirectory), String.literal(" because files exist")); break :exception error.Exception; }});
            } else if (existingDirectoryFile.?.delete()) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("Successfully Removed: "), existingDirectory), String.literal("Directory"), String.literal("remove") });
            }
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Category Directory Is Missing:"), existingDirectory); break :exception error.Exception; }});
        }
    }
    

    pub fn search2(self: *Self, fileFilter: ?*FileFilter, file: ?*AbFile) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "search", .{ fileFilter, file, false }));
    }
    

    pub fn search3(self: *Self, fileFilter: ?*FileFilter, file: ?*AbFile, isRecursiveSearch: bool) ?*BasicArrayList {
        const fileList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        var recursiveFileList: ?*BasicArrayList = null;
        if (file.?.isDirectory()) {
            const fileArray: []?Object = Inheritance.call(file.?, "listFilesFileFilter", .{ fileFilter });
            if (fileArray == null) {
                return fileList;
            }
            const files: []?*AbFile = Inheritance.callStatic(FileWrapperUtil, "wrapFiles", .{ fileArray });
            if (files == null) {
                return fileList;
            }
            const size: i32 = @as(i32, @intCast(files.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                _ = Inheritance.call(fileList.?, "add", .{ files[@intCast(index)] });
                if (isRecursiveSearch) {
                    recursiveFileList = Inheritance.upcast(@TypeOf(recursiveFileList), Inheritance.call(self, "search", .{ fileFilter, files[@intCast(index)], isRecursiveSearch }));
                    _ = Inheritance.call(fileList.?, "addAllList", .{ recursiveFileList });
                }
                }
            }
        }
        return fileList;
    }
    

    pub fn search(self: *Self, file: ?*AbFile) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "search", .{ file, false }));
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn search2(self: *Self, file: ?*AbFile, isRecursiveSearch: bool) ?*BasicArrayList {
        const fileList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        var recursiveFileList: ?*BasicArrayList = null;
        if (file.?.isDirectory()) {
            const fileArray: []?Object = file.?.listFiles();
            if (fileArray == null) {
                return fileList;
            }
            const files: []?*AbFile = Inheritance.callStatic(FileWrapperUtil, "wrapFiles", .{ fileArray });
            if (files == null) {
                return fileList;
            }
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(files.len))) : (index += 1) {
                _ = Inheritance.call(fileList.?, "add", .{ files[@intCast(index)] });
                if (isRecursiveSearch) {
                    recursiveFileList = Inheritance.upcast(@TypeOf(recursiveFileList), Inheritance.call(self, "search", .{ files[@intCast(index)], isRecursiveSearch }));
                    _ = Inheritance.call(fileList.?, "addAllList", .{ recursiveFileList });
                }
                }
            }
        }
        return fileList;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn search2(self: *Self, searchValue: ?*String, file: ?*AbFile) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "search", .{ searchValue, file, false }));
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn search3(self: *Self, searchValue: ?*String, file: ?*AbFile, isRecursiveSearch: bool) ?*BasicArrayList {
        const fileList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        var recursiveFileList: ?*BasicArrayList = null;
        if (file.?.isDirectory()) {
            const fileArray: []?Object = file.?.listFiles();
            if (fileArray == null) {
                return fileList;
            }
            const files: []?*AbFile = Inheritance.callStatic(FileWrapperUtil, "wrapFiles", .{ fileArray });
            if (files == null) {
                return fileList;
            }
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(files.len))) : (index += 1) {
                if (Inheritance.call(files[@intCast(index)].?.getPath().?, "indexOf", .{ searchValue }) >= 0) {
                    _ = Inheritance.call(fileList.?, "add", .{ files[@intCast(index)] });
                }
                if (isRecursiveSearch) {
                    recursiveFileList = Inheritance.upcast(@TypeOf(recursiveFileList), Inheritance.call(self, "search", .{ searchValue, files[@intCast(index)], isRecursiveSearch }));
                    _ = Inheritance.call(fileList.?, "addAllList", .{ recursiveFileList });
                }
                }
            }
        }
        return fileList;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn search2(self: *Self, level: i32, file: ?*AbFile) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "search", .{ level, file, false }));
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn search3(self: *Self, level: i32, file: ?*AbFile, isRecursiveSearch: bool) ?*BasicArrayList {
        const fileList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        var recursiveFileList: ?*BasicArrayList = null;
        if (file.?.isDirectory()) {
            const fileArray: []?Object = file.?.listFiles();
            if (fileArray == null) {
                return fileList;
            }
            const files: []?*AbFile = Inheritance.callStatic(FileWrapperUtil, "wrapFiles", .{ fileArray });
            if (files == null) {
                return fileList;
            }
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(files.len))) : (index += 1) {
                _ = Inheritance.call(fileList.?, "add", .{ files[@intCast(index)] });
                if (level <= 0) {
                    return fileList;
                }
                recursiveFileList = Inheritance.upcast(@TypeOf(recursiveFileList), Inheritance.call(self, "search", .{ level - 1, files[@intCast(index)], isRecursiveSearch }));
                _ = Inheritance.call(fileList.?, "addAllList", .{ recursiveFileList });
                }
            }
        }
        return fileList;
    }
};

