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
const FilenameFilter = @import("java/io/FilenameFilter.zig").FilenameFilter;
const IOException = @import("java/io/IOException.zig").IOException;
const URI = @import("java/net/URI.zig").URI;

// Java interface: an implementation is a pointer and a table of functions
pub const AbFileInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.AbFileInterface";
    pointer: *anyopaque,
    object: Object,
    canReadFn: *const fn (interface_pointer: *anyopaque) bool,
    canWriteFn: *const fn (interface_pointer: *anyopaque) bool,
    createNewFileFn: *const fn (interface_pointer: *anyopaque) bool,
    deleteFn: *const fn (interface_pointer: *anyopaque) bool,
    deleteOnExitFn: *const fn (interface_pointer: *anyopaque) void,
    existsFn: *const fn (interface_pointer: *anyopaque) bool,
    getAbsolutePathFn: *const fn (interface_pointer: *anyopaque) ?*String,
    getCanonicalPathFn: *const fn (interface_pointer: *anyopaque) ?*String,
    getParentFn: *const fn (interface_pointer: *anyopaque) ?*String,
    getPathFn: *const fn (interface_pointer: *anyopaque) ?*String,
    isAbsoluteFn: *const fn (interface_pointer: *anyopaque) bool,
    isDirectoryFn: *const fn (interface_pointer: *anyopaque) bool,
    isFileFn: *const fn (interface_pointer: *anyopaque) bool,
    isHiddenFn: *const fn (interface_pointer: *anyopaque) bool,
    lastModifiedFn: *const fn (interface_pointer: *anyopaque) i64,
    lengthFn: *const fn (interface_pointer: *anyopaque) i64,
    listFn: *const fn (interface_pointer: *anyopaque) []?*String,
    listWithFilterFn: *const fn (interface_pointer: *anyopaque, filter: ?*FilenameFilter) []?*String,
    mkdirFn: *const fn (interface_pointer: *anyopaque) bool,
    mkdirsFn: *const fn (interface_pointer: *anyopaque) bool,
    setLastModifiedFn: *const fn (interface_pointer: *anyopaque, time: i64) bool,
    setReadOnlyFn: *const fn (interface_pointer: *anyopaque) bool,
    toStringFn: *const fn (interface_pointer: *anyopaque) ?*String,
    toURIFn: *const fn (interface_pointer: *anyopaque) ?*URI,

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
        const ImplementationType = @TypeOf(object);
        const Methods = struct {
            fn canRead(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "canRead").canRead();
            }
            fn canWrite(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "canWrite").canWrite();
            }
            fn createNewFile(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "createNewFile").createNewFile();
            }
            fn delete(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "delete").delete();
            }
            fn deleteOnExit(interface_pointer: *anyopaque) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "deleteOnExit").deleteOnExit();
            }
            fn exists(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "exists").exists();
            }
            fn getAbsolutePath(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getAbsolutePath").getAbsolutePath());
            }
            fn getCanonicalPath(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCanonicalPath").getCanonicalPath());
            }
            fn getParent(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getParent").getParent());
            }
            fn getPath(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPath").getPath());
            }
            fn isAbsolute(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "isAbsolute").isAbsolute();
            }
            fn isDirectory(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "isDirectory").isDirectory();
            }
            fn isFile(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "isFile").isFile();
            }
            fn isHidden(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "isHidden").isHidden();
            }
            fn lastModified(interface_pointer: *anyopaque) i64 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "lastModified").lastModified();
            }
            fn length(interface_pointer: *anyopaque) i64 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "length").length();
            }
            fn list(interface_pointer: *anyopaque) []?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "list").list();
            }
            fn listWithFilter(interface_pointer: *anyopaque, filter: ?*FilenameFilter) []?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "listWithFilter", .{ filter });
            }
            fn mkdir(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "mkdir").mkdir();
            }
            fn mkdirs(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "mkdirs").mkdirs();
            }
            fn setLastModified(interface_pointer: *anyopaque, time: i64) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "setLastModified", .{ time });
            }
            fn setReadOnly(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "setReadOnly").setReadOnly();
            }
            fn toString(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "toString").toString());
            }
            fn toURI(interface_pointer: *anyopaque) ?*URI {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*URI, Inheritance.receiver(implementation, "toURI").toURI());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .canReadFn = Methods.canRead, .canWriteFn = Methods.canWrite, .createNewFileFn = Methods.createNewFile, .deleteFn = Methods.delete, .deleteOnExitFn = Methods.deleteOnExit, .existsFn = Methods.exists, .getAbsolutePathFn = Methods.getAbsolutePath, .getCanonicalPathFn = Methods.getCanonicalPath, .getParentFn = Methods.getParent, .getPathFn = Methods.getPath, .isAbsoluteFn = Methods.isAbsolute, .isDirectoryFn = Methods.isDirectory, .isFileFn = Methods.isFile, .isHiddenFn = Methods.isHidden, .lastModifiedFn = Methods.lastModified, .lengthFn = Methods.length, .listFn = Methods.list, .listWithFilterFn = Methods.listWithFilter, .mkdirFn = Methods.mkdir, .mkdirsFn = Methods.mkdirs, .setLastModifiedFn = Methods.setLastModified, .setReadOnlyFn = Methods.setReadOnly, .toStringFn = Methods.toString, .toURIFn = Methods.toURI };
        return this;
    }
};

