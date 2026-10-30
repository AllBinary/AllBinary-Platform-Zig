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
// const FilenameFilter = @import("java/io/FilenameFilter.zig").FilenameFilter;
// const IOException = @import("java/io/IOException.zig").IOException;
// const URI = @import("java/net/URI.zig").URI;

// Java interface: an implementation is a pointer and a table of functions
pub const AbFileInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.AbFileInterface";
    pointer: *anyopaque,
    object: Object,
    canReadFn: *const fn (pointer: *anyopaque) bool,
    canWriteFn: *const fn (pointer: *anyopaque) bool,
    createNewFileFn: *const fn (pointer: *anyopaque) bool,
    deleteFn: *const fn (pointer: *anyopaque) bool,
    deleteOnExitFn: *const fn (pointer: *anyopaque) void,
    existsFn: *const fn (pointer: *anyopaque) bool,
    getAbsolutePathFn: *const fn (pointer: *anyopaque) ?*String,
    getCanonicalPathFn: *const fn (pointer: *anyopaque) ?*String,
    getParentFn: *const fn (pointer: *anyopaque) ?*String,
    getPathFn: *const fn (pointer: *anyopaque) ?*String,
    isAbsoluteFn: *const fn (pointer: *anyopaque) bool,
    isDirectoryFn: *const fn (pointer: *anyopaque) bool,
    isFileFn: *const fn (pointer: *anyopaque) bool,
    isHiddenFn: *const fn (pointer: *anyopaque) bool,
    lastModifiedFn: *const fn (pointer: *anyopaque) i64,
    lengthFn: *const fn (pointer: *anyopaque) i64,
    listFn: *const fn (pointer: *anyopaque) []?*String,
    listWithFilterFn: *const fn (pointer: *anyopaque, filter: ?*FilenameFilter) []?*String,
    mkdirFn: *const fn (pointer: *anyopaque) bool,
    mkdirsFn: *const fn (pointer: *anyopaque) bool,
    setLastModifiedFn: *const fn (pointer: *anyopaque, time: i64) bool,
    setReadOnlyFn: *const fn (pointer: *anyopaque) bool,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    toURIFn: *const fn (pointer: *anyopaque) ?*URI,

    pub fn canRead(self: *Self) bool {
        return self.canReadFn(self.pointer);
    }

    pub fn canWrite(self: *Self) bool {
        return self.canWriteFn(self.pointer);
    }

    pub fn createNewFile(self: *Self) bool {
        return self.createNewFileFn(self.pointer);
    }

    pub fn delete(self: *Self) bool {
        return self.deleteFn(self.pointer);
    }

    pub fn deleteOnExit(self: *Self) void {
        return self.deleteOnExitFn(self.pointer);
    }

    pub fn exists(self: *Self) bool {
        return self.existsFn(self.pointer);
    }

    pub fn getAbsolutePath(self: *Self) ?*String {
        return self.getAbsolutePathFn(self.pointer);
    }

    pub fn getCanonicalPath(self: *Self) ?*String {
        return self.getCanonicalPathFn(self.pointer);
    }

    pub fn getParent(self: *Self) ?*String {
        return self.getParentFn(self.pointer);
    }

    pub fn getPath(self: *Self) ?*String {
        return self.getPathFn(self.pointer);
    }

    pub fn isAbsolute(self: *Self) bool {
        return self.isAbsoluteFn(self.pointer);
    }

    pub fn isDirectory(self: *Self) bool {
        return self.isDirectoryFn(self.pointer);
    }

    pub fn isFile(self: *Self) bool {
        return self.isFileFn(self.pointer);
    }

    pub fn isHidden(self: *Self) bool {
        return self.isHiddenFn(self.pointer);
    }

    pub fn lastModified(self: *Self) i64 {
        return self.lastModifiedFn(self.pointer);
    }

    pub fn length(self: *Self) i64 {
        return self.lengthFn(self.pointer);
    }

    pub fn list(self: *Self) []?*String {
        return self.listFn(self.pointer);
    }

    pub fn listWithFilter(self: *Self, filter: ?*FilenameFilter) []?*String {
        return self.listWithFilterFn(self.pointer, filter);
    }

    pub fn mkdir(self: *Self) bool {
        return self.mkdirFn(self.pointer);
    }

    pub fn mkdirs(self: *Self) bool {
        return self.mkdirsFn(self.pointer);
    }

    pub fn setLastModified(self: *Self, time: i64) bool {
        return self.setLastModifiedFn(self.pointer, time);
    }

    pub fn setReadOnly(self: *Self) bool {
        return self.setReadOnlyFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    pub fn toURI(self: *Self) ?*URI {
        return self.toURIFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn canRead(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "canRead").canRead();
            }
            fn canWrite(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "canWrite").canWrite();
            }
            fn createNewFile(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "createNewFile").createNewFile();
            }
            fn delete(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "delete").delete();
            }
            fn deleteOnExit(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "deleteOnExit").deleteOnExit();
            }
            fn exists(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "exists").exists();
            }
            fn getAbsolutePath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getAbsolutePath").getAbsolutePath());
            }
            fn getCanonicalPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCanonicalPath").getCanonicalPath());
            }
            fn getParent(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getParent").getParent());
            }
            fn getPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPath").getPath());
            }
            fn isAbsolute(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isAbsolute").isAbsolute();
            }
            fn isDirectory(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isDirectory").isDirectory();
            }
            fn isFile(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isFile").isFile();
            }
            fn isHidden(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isHidden").isHidden();
            }
            fn lastModified(pointer: *anyopaque) i64 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "lastModified").lastModified();
            }
            fn length(pointer: *anyopaque) i64 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "length").length();
            }
            fn list(pointer: *anyopaque) []?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "list").list();
            }
            fn listWithFilter(pointer: *anyopaque, filter: ?*FilenameFilter) []?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "listWithFilter").listWithFilter(filter);
            }
            fn mkdir(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "mkdir").mkdir();
            }
            fn mkdirs(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "mkdirs").mkdirs();
            }
            fn setLastModified(pointer: *anyopaque, time: i64) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setLastModified").setLastModified(time);
            }
            fn setReadOnly(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setReadOnly").setReadOnly();
            }
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "toString").toString());
            }
            fn toURI(pointer: *anyopaque) ?*URI {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*URI, Inheritance.receiver(implementation, "toURI").toURI());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .canReadFn = Methods.canRead, .canWriteFn = Methods.canWrite, .createNewFileFn = Methods.createNewFile, .deleteFn = Methods.delete, .deleteOnExitFn = Methods.deleteOnExit, .existsFn = Methods.exists, .getAbsolutePathFn = Methods.getAbsolutePath, .getCanonicalPathFn = Methods.getCanonicalPath, .getParentFn = Methods.getParent, .getPathFn = Methods.getPath, .isAbsoluteFn = Methods.isAbsolute, .isDirectoryFn = Methods.isDirectory, .isFileFn = Methods.isFile, .isHiddenFn = Methods.isHidden, .lastModifiedFn = Methods.lastModified, .lengthFn = Methods.length, .listFn = Methods.list, .listWithFilterFn = Methods.listWithFilter, .mkdirFn = Methods.mkdir, .mkdirsFn = Methods.mkdirs, .setLastModifiedFn = Methods.setLastModified, .setReadOnlyFn = Methods.setReadOnly, .toStringFn = Methods.toString, .toURIFn = Methods.toURI };
        return this;
    }
};

