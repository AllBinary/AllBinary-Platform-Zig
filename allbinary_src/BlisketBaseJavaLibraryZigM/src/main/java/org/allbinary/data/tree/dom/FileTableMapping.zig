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
// package org.allbinary.data.tree.dom

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const FileData = @import("org/allbinary/logic/io/file/FileData.zig").FileData;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const PathUtil = @import("org/allbinary/logic/io/path/PathUtil.zig").PathUtil;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const FileTableMapping = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.dom.FileTableMapping";
    file: ?*AbFile = null,
    // Implements TableMappingInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(file: ?*AbFile) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.file = file;
        return this;
    }
    

    // throws Exception
    pub fn getKey(self: *Self) ?Object {
        return Inheritance.cast(?Object, self.file.?.getPath());
    }
    

    // throws Exception
    pub fn toVector(self: *Self) ?*BasicArrayList {
        const filePropertyVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(filePropertyVector.?, "add", .{ self.file.?.getAbsolutePath() });
        _ = Inheritance.call(filePropertyVector.?, "add", .{ self.file.?.getCanonicalPath() });
        _ = Inheritance.call(filePropertyVector.?, "add", .{ self.file.?.getName() });
        _ = Inheritance.call(filePropertyVector.?, "add", .{ self.file.?.getParent() });
        _ = Inheritance.call(filePropertyVector.?, "add", .{ self.file.?.getPath() });
        return filePropertyVector;
    }
    

    // throws Exception
    pub fn toHashMap(self: *Self) ?*HashMap {
        const filePropertyHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const pathData: ?*AbPathData = Inheritance.upcast(?*AbPathData, AbPathData.getInstance());
        const pathUtil: ?*PathUtil = Inheritance.upcast(?*PathUtil, PathUtil.getInstance());
        const rootFileName: ?*String = Inheritance.upcast(?*String, Inheritance.call(pathData.?, "getNameFromPath", .{ Inheritance.call(pathUtil.?, "getWithoutExtension", .{ self.file.?.getPath() }) }));
        const fileData: ?*FileData = Inheritance.upcast(?*FileData, FileData.getInstance());
        _ = Inheritance.call(filePropertyHashMap.?, "put", .{ fileData.?.ROOT_NAME, rootFileName });
        _ = Inheritance.call(filePropertyHashMap.?, "put", .{ fileData.?.ISFILE, Object.toString(Object.of(Inheritance.callStatic(Boolean, "valueOf", .{ self.file.?.isFile() }))) });
        _ = Inheritance.call(filePropertyHashMap.?, "put", .{ fileData.?.ISDIRECTORY, Object.toString(Object.of(Inheritance.callStatic(Boolean, "valueOf", .{ self.file.?.isDirectory() }))) });
        _ = Inheritance.call(filePropertyHashMap.?, "put", .{ fileData.?.ISHIDDEN, Object.toString(Object.of(Inheritance.callStatic(Boolean, "valueOf", .{ self.file.?.isHidden() }))) });
        _ = Inheritance.call(filePropertyHashMap.?, "put", .{ fileData.?.ISABSOLUTE, Object.toString(Object.of(Inheritance.callStatic(Boolean, "valueOf", .{ self.file.?.isAbsolute() }))) });
        _ = Inheritance.call(filePropertyHashMap.?, "put", .{ fileData.?.ABSOLUTE_PATH, self.file.?.getAbsolutePath() });
        _ = Inheritance.call(filePropertyHashMap.?, "put", .{ fileData.?.CANONICAL_PATH, self.file.?.getCanonicalPath() });
        _ = Inheritance.call(filePropertyHashMap.?, "put", .{ fileData.?.NAME, self.file.?.getName() });
        _ = Inheritance.call(filePropertyHashMap.?, "put", .{ fileData.?.PARENT, self.file.?.getParent() });
        _ = Inheritance.call(filePropertyHashMap.?, "put", .{ fileData.?.PATH, self.file.?.getPath() });
        return filePropertyHashMap;
    }
};

