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
// package org.allbinary.logic.io.file.filter

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const File = @import("java/io/File.zig").File;
// const FileFilter = @import("java/io/FileFilter.zig").FileFilter;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const FileWrapperUtil = @import("org/allbinary/logic/io/file/FileWrapperUtil.zig").FileWrapperUtil;
const VisitorInterface = @import("org/allbinary/logic/util/visitor/VisitorInterface.zig").VisitorInterface;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const VisitorFileFilter = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.filter.VisitorFileFilter";
    booleanVisitorInterface: ?*VisitorInterface = null,
    // Implements FileFilter

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(booleanVisitorInterface: ?*VisitorInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.booleanVisitorInterface = booleanVisitorInterface;
        return this;
    }
    

    pub fn accept(self: *Self, file: ?*File) bool {
        const abFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(FileWrapperUtil, "wrapFile", .{ file }));
        const isFileAcceptable: bool = Inheritance.receiverOf((Inheritance.cast(?*Boolean, Inheritance.call(self.booleanVisitorInterface.?, "visit", .{ abFile }))).?, "booleanValue").booleanValue();
        return isFileAcceptable or file.?.isDirectory();
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn accept(self: *Self, file: ?*AbFile) bool {
        const isFileAcceptable: bool = Inheritance.receiverOf((Inheritance.cast(?*Boolean, Inheritance.call(self.booleanVisitorInterface.?, "visit", .{ file }))).?, "booleanValue").booleanValue();
        return isFileAcceptable or file.?.isDirectory();
    }
};

