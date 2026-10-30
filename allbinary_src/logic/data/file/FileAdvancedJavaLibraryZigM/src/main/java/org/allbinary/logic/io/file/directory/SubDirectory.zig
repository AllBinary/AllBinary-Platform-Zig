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
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Directory = @import("org/allbinary/logic/io/file/directory/Directory.zig").Directory;

pub const SubDirectory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.directory.SubDirectory";
    directory: ?*Directory = null,
    var instance: ?*SubDirectory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SubDirectory.create();
    }

    fn initFields(this: *Self) void {
        this.directory = Inheritance.upcast(?*Directory, Directory.getInstance());
    }
    

    pub fn getInstance() ?*SubDirectory {
        return Inheritance.upcast(?*SubDirectory, SubDirectory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn search2(self: *Self, fileFilter: ?*FileFilter, file: ?*AbFile) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.directory.?, "search", .{ fileFilter, file, true }));
    }
    

    pub fn search(self: *Self, file: ?*AbFile) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.directory.?, "search", .{ file, true }));
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn search2(self: *Self, searchValue: ?*String, file: ?*AbFile) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.directory.?, "search", .{ searchValue, file, true }));
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn search2(self: *Self, level: i32, file: ?*AbFile) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.directory.?, "search", .{ level, file, true }));
    }
    

    pub fn toString(files: ?*BasicArrayList) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const NEW_LINE: ?*String = Inheritance.upcast(?*String, CommonSeps.getInstance().?.NEW_LINE);
        const size: i32 = files.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const file: ?*AbFile = Inheritance.cast(?*AbFile, Inheritance.call(files.?, "get", .{ index }));
            _ = Inheritance.call(stringBuffer.?, "append", .{ file.?.getPath() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ NEW_LINE });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

