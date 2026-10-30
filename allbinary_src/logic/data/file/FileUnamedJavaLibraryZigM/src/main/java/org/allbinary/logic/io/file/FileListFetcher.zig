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
const DirectoryBooleanFileVisitor = @import("org/allbinary/logic/io/file/directory/DirectoryBooleanFileVisitor.zig").DirectoryBooleanFileVisitor;
const DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor = @import("org/allbinary/logic/io/file/directory/DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.zig").DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor;
const DirectoryOrIncludeFileExtensionBooleanFileVisitor = @import("org/allbinary/logic/io/file/directory/DirectoryOrIncludeFileExtensionBooleanFileVisitor.zig").DirectoryOrIncludeFileExtensionBooleanFileVisitor;
const SubDirectory = @import("org/allbinary/logic/io/file/directory/SubDirectory.zig").SubDirectory;
const VisitorFileFilter = @import("org/allbinary/logic/io/file/filter/VisitorFileFilter.zig").VisitorFileFilter;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const System = @import("java/lang/System.zig").System;

pub const FileListFetcher = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.FileListFetcher";
    subDirectory: ?*SubDirectory = null,
    var instance: ?*FileListFetcher = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FileListFetcher.create();
    }

    fn initFields(this: *Self) void {
        this.subDirectory = Inheritance.upcast(?*SubDirectory, SubDirectory.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*FileListFetcher {
        return Inheritance.upcast(?*FileListFetcher, FileListFetcher.instance);
    }
    

    pub fn getFiles(self: *Self, path: ?*String) ?*BasicArrayList {
        { // try
            const files: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.subDirectory.?, "search", .{ Inheritance.callStatic(AbFile, "createAbFile", .{ path }) }));
            return files;
        }
        // catch (Exception e):
//             _ = std.debug.print("{any}\n", .{e});
//             _ = std.debug.print("{s}\n", .{String.text(String.plus(String.plus(String.plus(String.literal("Error: "), e), String.literal("\nMsg: ")), String.fromBytes(@errorName(e.?))))});
        return null;
    }
    

    pub fn getFiles2(self: *Self, path: ?*String, includeExtensions: []?*String) ?*BasicArrayList {
        { // try
            const includeExtensionBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            const size: i32 = @as(i32, @intCast(includeExtensions.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                _ = Inheritance.call(includeExtensionBasicArrayList.?, "add", .{ includeExtensions[@intCast(index)] });
                }
            }
            const visitorFileFilter: ?*VisitorFileFilter = Inheritance.callStatic(VisitorFileFilter, "create1", .{ Inheritance.callStatic(DirectoryOrIncludeFileExtensionBooleanFileVisitor, "create1", .{ includeExtensionBasicArrayList }) });
            const files: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.subDirectory.?, "search", .{ visitorFileFilter, Inheritance.callStatic(AbFile, "createAbFile", .{ path }) }));
            return files;
        }
        // catch (Exception e):
//             _ = std.debug.print("{any}\n", .{e});
//             _ = std.debug.print("{s}\n", .{String.text(String.plus(String.plus(String.plus(String.literal("Error: "), e), String.literal("\nMsg: ")), String.fromBytes(@errorName(e.?))))});
        return null;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getFiles2(self: *Self, path: ?*String, includeExtension: ?*String) ?*BasicArrayList {
        { // try
            const includeExtensionBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(includeExtensionBasicArrayList.?, "add", .{ includeExtension });
            const visitorFileFilter: ?*VisitorFileFilter = Inheritance.callStatic(VisitorFileFilter, "create1", .{ Inheritance.callStatic(DirectoryOrIncludeFileExtensionBooleanFileVisitor, "create1", .{ includeExtensionBasicArrayList }) });
            const files: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.subDirectory.?, "search", .{ visitorFileFilter, Inheritance.callStatic(AbFile, "createAbFile", .{ path }) }));
            return files;
        }
        // catch (Exception e):
//             _ = std.debug.print("{any}\n", .{e});
//             _ = std.debug.print("{s}\n", .{String.text(String.plus(String.plus(String.plus(String.literal("Error: "), e), String.literal("\nMsg: ")), String.fromBytes(@errorName(e.?))))});
        return null;
    }
    

    pub fn getFiles3(self: *Self, path: ?*String, pathIncludes: ?*String, includeExtension: ?*String) ?*BasicArrayList {
        { // try
            const includeExtensionBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(includeExtensionBasicArrayList.?, "add", .{ includeExtension });
            const visitorFileFilter: ?*VisitorFileFilter = Inheritance.callStatic(VisitorFileFilter, "create1", .{ Inheritance.callStatic(DirectoryOrIncludeFileExtensionBooleanFileVisitor, "create2", .{ includeExtensionBasicArrayList, pathIncludes }) });
            const files: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.subDirectory.?, "search", .{ visitorFileFilter, Inheritance.callStatic(AbFile, "createAbFile", .{ path }) }));
            return files;
        }
        // catch (Exception e):
//             _ = std.debug.print("{any}\n", .{e});
//             _ = std.debug.print("{s}\n", .{String.text(String.plus(String.plus(String.plus(String.literal("Error: "), e), String.literal("\nMsg: ")), String.fromBytes(@errorName(e.?))))});
        return null;
    }
    

    pub fn getTrackedFiles(self: *Self, path: ?*String, includeExtensions: []?*String) ?*BasicArrayList {
        { // try
            const includeExtensionBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            const size: i32 = @as(i32, @intCast(includeExtensions.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                _ = Inheritance.call(includeExtensionBasicArrayList.?, "add", .{ includeExtensions[@intCast(index)] });
                }
            }
            const visitorFileFilter: ?*VisitorFileFilter = Inheritance.callStatic(VisitorFileFilter, "create1", .{ Inheritance.callStatic(DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor, "create1", .{ includeExtensionBasicArrayList }) });
            const files: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.subDirectory.?, "search", .{ visitorFileFilter, Inheritance.callStatic(AbFile, "createAbFile", .{ path }) }));
            return files;
        }
        // catch (Exception e):
//             _ = std.debug.print("{any}\n", .{e});
//             _ = std.debug.print("{s}\n", .{String.text(String.plus(String.plus(String.plus(String.literal("Error: "), e), String.literal("\nMsg: ")), String.fromBytes(@errorName(e.?))))});
        return null;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getTrackedFiles(self: *Self, path: ?*String, includeExtension: ?*String) ?*BasicArrayList {
        { // try
            const includeExtensionBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(includeExtensionBasicArrayList.?, "add", .{ includeExtension });
            const visitorFileFilter: ?*VisitorFileFilter = Inheritance.callStatic(VisitorFileFilter, "create1", .{ Inheritance.callStatic(DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor, "create1", .{ includeExtensionBasicArrayList }) });
            const files: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.subDirectory.?, "search", .{ visitorFileFilter, Inheritance.callStatic(AbFile, "createAbFile", .{ path }) }));
            return files;
        }
        // catch (Exception e):
//             _ = std.debug.print("{any}\n", .{e});
//             _ = std.debug.print("{s}\n", .{String.text(String.plus(String.plus(String.plus(String.literal("Error: "), e), String.literal("\nMsg: ")), String.fromBytes(@errorName(e.?))))});
        return null;
    }
    

    pub fn getDirectories(self: *Self, path: ?*String) ?*BasicArrayList {
        { // try
            const visitorFileFilter: ?*VisitorFileFilter = Inheritance.callStatic(VisitorFileFilter, "create1", .{ DirectoryBooleanFileVisitor.create() });
            const files: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.subDirectory.?, "search", .{ visitorFileFilter, Inheritance.callStatic(AbFile, "createAbFile", .{ path }) }));
            return files;
        }
        // catch (Exception e):
//             _ = std.debug.print("{any}\n", .{e});
//             _ = std.debug.print("{s}\n", .{String.text(String.plus(String.plus(String.plus(String.literal("Error: "), e), String.literal("\nMsg: ")), String.fromBytes(@errorName(e.?))))});
        return null;
    }
};

